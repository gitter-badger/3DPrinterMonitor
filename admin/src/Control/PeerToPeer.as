package Control
{
	import Model.Constants;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import flash.events.NetDataEvent;
	import flash.events.NetStatusEvent;
	import flash.events.StatusEvent;
	import flash.media.Camera;
	import flash.media.Microphone;
	import flash.media.SoundCodec;
	import flash.net.GroupSpecifier;
	import flash.net.NetConnection;
	import flash.net.NetGroup;
	import flash.net.NetStream;
	import flash.utils.Dictionary;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.core.FlexGlobals;
	import mx.utils.ObjectUtil;
	
	[Bindable]
	public class PeerToPeer extends EventDispatcher
	{
		public const SERVER_ADDRESS:String="rtmfp://p2p.rtmfp.net/";
		public const DEVELOPER_KEY:String="c22bdde4160f1e01dff25faf-755c7f5d7012";
		
		private var nc:NetConnection;
		public var myPeerID:String;
		public var farID:String;
		public var connected:Boolean=false;
		
		public var streamIn:NetStream;
		public var streamOut:NetStream;
		
		private var seq:int=0;
		private var received:int=0;
		private var netGroup:NetGroup;
		private var neighbors:Array;
		protected var user:String;
		
		public var isBroadcasting:Boolean;
		
		public function PeerToPeer()
		{
			trace("new PeerToPeer()");
		}
		
		public function connectCirus():void
		{
			connected=false;
			nc=new NetConnection();
			nc.client = new Object();
			nc.client.startTransmit = startTransmit;
			nc.client.stopTransmit = stopTransmit
			nc.addEventListener(NetStatusEvent.NET_STATUS, handleNetStatus);
			nc.connect(SERVER_ADDRESS + DEVELOPER_KEY);
		}
		
		public function startTransmit($p1:*,$p2:*):void
		{
			
		}
		
		public function stopTransmit():void
		{
			
		}
		
		protected function handleNetStatus(event:NetStatusEvent):void
		{
			trace("handleNetGroupStatus: " + event.info.code);
			switch (event.info.code)
			{
				case "NetConnection.Connect.Success":
					trace("you're in, buddy. farID: " + event.target.farID+" nearID: "+NetConnection(event.target).nearID);
					setupGroup();
					break;
				case "NetGroup.Connect.Success":
					connected=true;
					break;
				case "NetGroup.Posting.Notify":
					receiveMessage(event.info.message);
					break;
				case "NetGroup.Neighbor.Connect":
					handleNeighborConnected(event);
				break;
			}
		}
		
		private function setupGroup():void
		{
			neighbors = [];
			var groupspec:GroupSpecifier=new GroupSpecifier("printManager/printer1");
			groupspec.serverChannelEnabled=true;
			groupspec.postingEnabled=true;
			groupspec.addIPMulticastAddress("225.225.0.1:30303");
			groupspec.routingEnabled=true;
			netGroup=new NetGroup(nc, groupspec.groupspecWithAuthorizations());
			netGroup.addEventListener(NetStatusEvent.NET_STATUS, handleNetStatus);
			user = "user"+Math.round(Math.random()*10000);
		}
		
		public function startBroadcasting():void
		{
			trace("startBroadcasting()");
			if (Camera.names.length <= 0)
			{
				Alert.show("Aucune webcam detectee!");
				return;
			}
			streamOut=new NetStream(nc, NetStream.DIRECT_CONNECTIONS);
			streamOut.publish("media");
			isBroadcasting = true;
			FlexGlobals.topLevelApplication.dispatchEvent(new PeerToPeerEvent(PeerToPeerEvent.BROADCASTING));
		}

		protected function handleNeighborConnected(event:NetStatusEvent):void
		{
			neighbors.push({neighbor:event.info.neighbor,peerID:event.info.peerID}); 
			if(isBroadcasting)
			{
				sendMessage(Constants.P2P_PRINT_STARTED_MSG);
			}
		}
		
		private function findPeerIDfromNeighbor(neighbor:String):String
		{
			for each (var obj:Object in neighbors) 
			{
				if(obj.neighbor == neighbor)
					return obj.peerID;
			}
			return "peerID not found";
		}
		
		public function sendMessage(text:String):void
		{
			var message:Object = new Object();
			message.sender = netGroup.convertPeerIDToGroupAddress(nc.nearID);
			message.text = text;
			netGroup.post(message);
		}
		
		private function receiveMessage(message:Object):void
		{
			var broadcasterPeerID:String = findPeerIDfromNeighbor(message.sender);
			trace("receiveMessage from peerID: "+broadcasterPeerID); //the neighbor
			if(message.text == Constants.P2P_PRINT_STARTED_MSG)
			{
				streamIn=new NetStream(nc, broadcasterPeerID);
				FlexGlobals.topLevelApplication.dispatchEvent(new PeerToPeerEvent(PeerToPeerEvent.STREAM_RECEIVED));
			}
			else if(message.text == Constants.P2P_PRINT_STOPPED_MSG)
			{
				FlexGlobals.topLevelApplication.dispatchEvent(new PeerToPeerEvent(PeerToPeerEvent.STREAM_STOPPED));
			}
		}
		
	}
}
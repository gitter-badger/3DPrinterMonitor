package Control
{
	import flash.events.Event;
	
	public class PeerToPeerEvent extends Event
	{
		public static const BROADCASTING:String = "broadcasting";
		public static const STREAM_RECEIVED:String = "streamReceived";
		public static const STREAM_STOPPED:String = "streamStopped";
		public static const CONNECTED:String = "connected";
		public static const DISCONNECTED:String = "disconnected";
		
		public function PeerToPeerEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event 
		{
			return new PeerToPeerEvent(type, true, cancelable);
		}
	}
}
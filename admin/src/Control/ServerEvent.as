package Control
{
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	public class ServerEvent extends Event
	{
		
		public static const REFRESH_MODELS:String = "refreshModels";
		public static const REFRESH_PRINTLOGS:String = "refresPrintLogs";
		
		public var param:Dictionary;
		
		public function ServerEvent(type:String, bubbles:Boolean,
										 cancelable:Boolean, param:Dictionary)
		{
			super(type, bubbles, cancelable)
			this.param = param;
		}
		
		override public function clone():Event 
		{
			return new ServerEvent(type, bubbles, cancelable, param);
		}
	}
}
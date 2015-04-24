package Control
{
	import flash.events.Event;
	import flash.utils.Dictionary;

	public class InteractionEvent extends Event
	{
		public static const START_STOP:String = "startStop"; //param: start (boolean).
		public static const BROWSE:String = "browse";
		public static const ZOOM:String = "zoom";
		public static const ROTATE:String = "rotate";
		public static const SELECTED_MODEL_CHANGED:String = "selectedModelChanged"; //param: Type3DModels
		
		public var param:Dictionary;
		
		public function InteractionEvent(type:String, bubbles:Boolean,
								cancelable:Boolean, param:Dictionary)
		{
			super(type, bubbles, cancelable)
			this.param = param;
		}
		
		override public function clone():Event 
		{
			return new InteractionEvent(type, bubbles, cancelable, param);
		}
	}
}
package View.Components
{
	import away3d.cameras.Camera3D;
	import away3d.containers.Scene3D;
	import away3d.containers.View3D;
	import flash.display.Sprite;
	
	public class MultipleView extends Sprite
	{
		public var cam:Camera3D;
		public var view:View3D;
		
		public function MultipleView(w:Number,h:Number,x:Number,y:Number,viewScene:Scene3D)
		{
			// create a camera
			cam = new Camera3D();
			// create the viewport and attach it to the Sprite so we can mask and move it
			view = new View3D();
			view.width = w;
			view.height = h;
			view.scene = viewScene;
			view.camera = cam;
			//view.backgroundColor = 0xffffff;
			// add a border
			var border:Sprite = makeBorder(w,h);
			addChild(border);
			// Add View and position Sprite
			addChild(view);
			this.x = x;
			this.y = y;
		}
		private function makeBorder(w:Number,h:Number):Sprite
		{
			var border:Sprite = new Sprite();
			border.graphics.lineStyle(0,0xcccccc);
			border.graphics.drawRect(0,0,w,h);
			return border;
		}
	}
}
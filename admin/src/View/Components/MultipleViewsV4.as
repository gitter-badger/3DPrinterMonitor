package View.Components
{
	import away3d.containers.ObjectContainer3D;
	import away3d.containers.Scene3D;
	import away3d.debug.Trident;
	import away3d.entities.Mesh;
	import away3d.lights.PointLight;
	import away3d.materials.ColorMaterial;
	import away3d.materials.TextureMaterial;
	import away3d.materials.lightpickers.StaticLightPicker;
	import away3d.materials.utils.WireframeMapGenerator;
	import away3d.primitives.CubeGeometry;
	import away3d.primitives.SphereGeometry;
	import away3d.textures.BitmapTexture;
	import away3d.textures.Texture2DBase;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Vector3D;
	
	//[SWF(width="500", height="400", frameRate="60", backgroundColor="#FFFFFF")]
	public class MultipleViewsV4 extends Sprite
	{
		private var box:CubeGeometry;
		private var sphere:SphereGeometry;
		private var baseObject:ObjectContainer3D;
		private var view1:MultipleViewsView_v4;
		private var view2:MultipleViewsView_v4;
		private var view3:MultipleViewsView_v4;
		private var view4:MultipleViewsView_v4;
		private var myScene:Scene3D;
		private var pointLight:PointLight;
		private var lightPicker:StaticLightPicker;
		
		public function MultipleViewsV4()
		{
			// Don't scale
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.align = StageAlign.TOP_LEFT;
			// Create Scene
			myScene = new Scene3D();
			//create a light for the camera
			pointLight = new PointLight();
			myScene.addChild(pointLight);
			lightPicker = new StaticLightPicker([pointLight]);
			// Add the trident for reference
			var axis:Trident = new Trident(450,true);
			myScene.addChild(axis);
			// Create an object to hold the other geometry
			baseObject = new ObjectContainer3D();
			myScene.addChild(baseObject);
			// create a sphere and put it on the 3D stage
			box = new CubeGeometry( 150, 150, 150 );
			var boxMaterial:ColorMaterial = new ColorMaterial( 0x0000ff );
			boxMaterial.lightPicker = lightPicker;
			var boxMesh:Mesh = new Mesh (box,  boxMaterial );
			boxMesh.x = -200;
			baseObject.addChild( boxMesh );
			// create a sphere and put it on the 3D stage
			sphere = new SphereGeometry(150);
			var sphereMesh:Mesh = new Mesh( sphere );
			var wireBitmap:BitmapData = WireframeMapGenerator.generateSolidMap( sphereMesh, 0x000000, 10
				,0xff0000, 1, 2048, 2048 );
			var textureBase:Texture2DBase = new BitmapTexture(wireBitmap)
			var sphereMaterial:TextureMaterial = new TextureMaterial( textureBase );
			sphereMaterial.lightPicker = lightPicker;
			sphereMesh.material = sphereMaterial;
			sphereMesh.x = 200;
			baseObject.addChild( sphereMesh );
			// create the four view(ports) using our custom class
			var w:Number = 249;
			var h:Number = 199;
			view1 = new MultipleViewsView_v4(w,h,0,0,myScene);
			addChild(view1);
			view2 = new MultipleViewsView_v4(w,h,w,0,myScene);
			addChild(view2);
			view3 = new MultipleViewsView_v4(w,h,0,h,myScene);
			addChild(view3);
			view4 = new MultipleViewsView_v4(w,h,w,h,myScene);
			addChild(view4);
			// position the cameras at various angles around the objects
			view1.cam.position = new Vector3D(0, 1000, 000);
			view2.cam.position = new Vector3D(1000, 0, 0);
			view3.cam.position = new Vector3D(0, 1000, 1000);
			view4.cam.position = new Vector3D(1000, 1000, -500);
			pointLight.position = new Vector3D(1000, 1500, -500);
			// No need to try, just point to the center coordinate and we hit spot on!
			view1.cam.lookAt( new Vector3D(0, 0, 0) );
			view2.cam.lookAt( new Vector3D(0, 0, 0) );
			view3.cam.lookAt( new Vector3D(0, 0, 0) );
			view4.cam.lookAt( new Vector3D(0, 0, 0) );
			// render the view
			addEventListener(Event.ENTER_FRAME, update);
		}
		private function update(e:Event):void
		{
			baseObject.rotationX += 1;
			baseObject.rotationY += 0.5;
			view1.view.render();
			view2.view.render();
			view3.view.render();
			view4.view.render();
		}
	}
}
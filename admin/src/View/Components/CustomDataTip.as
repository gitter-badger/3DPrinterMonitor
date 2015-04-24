package View.Components
{
	import flash.display.Graphics;
	
	import mx.charts.chartClasses.DataTip;
	
	public class CustomDataTip extends DataTip
	{	
		public function  CustomDataTip() 
		{
			super();            
		}       
		
		override protected function updateDisplayList(w:Number, h:Number):void 
		{
			super.updateDisplayList(w, h);
			this.setStyle("textAlign","center");
			var g:Graphics = graphics; 
			g.clear();  
			g.beginFill(0xCCCCCC, 0.5);
			g.lineStyle(2, 0x000000, 0.8);
			g.drawRect( -30, 0, w + 60, h);
			g.endFill(); 
		}
	}
}
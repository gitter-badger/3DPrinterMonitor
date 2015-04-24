package View.Components
{
	import mx.charts.renderers.AreaRenderer;

	public class CustomAreaRenderer extends AreaRenderer
	{
		
		override protected function updateDisplayList(unscaledWidth:Number,
													  unscaledHeight:Number):void
		{
			// The line renderer uses mx.charts.chartClasses.GraphicsUtilities to plot a curve.
			// This class has a bug when rendering curves, if it manages to receive render data too
			// early in the creation of the chart.
			//
			// Our work around here is to trap the runtime error, since the chart will successfully render
			// on the next frame.
			try
			{
				super.updateDisplayList(unscaledWidth,unscaledHeight);
			}
			catch(e:Error)
			{
				// We are swallowing this error so we don't take out the entire layout manager.
			}
			
		}
	} 
}
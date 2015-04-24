package Model
{

	public class Constants
	{
		public static const CHART_COLOR_GREEN:uint=0xA6EB78;
		public static const CHART_COLOR_ORANGE:uint=0xFC8200;
		public static const CHART_COLOR_RED:uint=0xFF3D03;
		public static const CHART_COLOR_BLUE:uint=0x12D1FC;
		public static const FAIL_LEVEL:int=80;
		public static const PRICE_PER_GRAM_IN_DOLLARS:Number=0.06;
		public static const EURO_DOLLAR:Number=1.2;
		public static const DOLLAR_EURO:Number=0.8;

		public static const P2P_PRINT_STARTED_MSG:String="printStarted";
		public static const P2P_PRINT_STOPPED_MSG:String="printStopped";

		//public static const ROOT_URL:String = "http://www.st-f.net/lab/PrintManager/adminapp/";
		public static const ROOT_URL:String="http://localhost:8888/Lab/STLWebViewer/server/adminapp/";

		public static const FFMPEG_URL:String=ROOT_URL + "php/ffmpeg.php";
		public static const LISTFILES_URL:String=ROOT_URL + "php/listFiles.php";
		public static const UPLOADURL:String=ROOT_URL + "php/uploada.php";
		public static const MODELSURL:String=ROOT_URL + "php/models/";
		public static const GATEWAY_URL:String=ROOT_URL;

		public static const VIDEOIN_WIDTH:int=640;
		public static const VIDEOIN_HEIGHT:int=480;

		/*		public static const VIDEOIN_WIDTH:int=480;
				public static const VIDEOIN_HEIGHT:int=360;*/
		/*public static const VIDEOIN_WIDTH:int=1024;
		public static const VIDEOIN_HEIGHT:int=768;*/
		/*public static const VIDEOIN_WIDTH:int=960;
		public static const VIDEOIN_HEIGHT:int=720;*/


		public static const VIDEOIN_FPS:int=24;
		public static const WEBCAM_QUALITY:int=90;
		public static const WEBCAM_BANDWIDTH:int=0;
		public static const SNAPSHOT_FREQUENCY:int=6000;
		public static const SNAPSHOT_COMPRESSION:int=85;

		public static function timeFormat(value:int):String
		{
			var hours:Number=Math.floor(value / 3600);
			var minutes:Number=Math.floor((value % 3600) / 60);
			var seconds:Number=value % 60;
			var hourString:String=hours < 10 ? "0" + String(hours) + ":" : String(hours) + ":";
			var minuteString:String=minutes < 10 ? "0" + String(minutes) + ":" : String(minutes) + ":";
			var secondString:String=seconds < 10 ? "0" + String(seconds) : String(seconds);
			return hourString + minuteString + secondString;
		}

		//public static const GATEWAY_URL:String = "";
	/*private static const UPLOADURL:String = "http://localhost:8888/Lab/STLWebViewer/server/php/uploada.php";
	private static const MODELSURL:String = "http://localhost:8888/Lab/STLWebViewer/server/models/"; */

	}
}

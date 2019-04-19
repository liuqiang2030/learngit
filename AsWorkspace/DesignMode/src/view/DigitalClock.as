package view
{
	
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import model.ClockData;

	public class DigitalClock extends AbstractClockView
	{
		protected var _displayText:TextField;
		public function DigitalClock(data:ClockData)
		{
			super(data);
		}
		
		override protected function init():void
		{
			
			super.init();
		}
		protected function createTF():TextField{
			var tf:TextField = new TextField();
			tf.width = 200;
			tf.height = 50;
			tf.autoSize = TextFieldAutoSize.RIGHT;
			tf.x = 195;
			tf.y = 0;
			return tf;
		}
		override protected function addChildren():void
		{
			super.addChildren();
		}
		
		override public function draw():void
		{
			super.draw();
		}
		
	}
}
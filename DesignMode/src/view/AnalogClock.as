package view
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import model.ClockData;
	
	public class AnalogClock extends AbstractClockView
	{
		protected var _face:Sprite;
		protected var _hourHand:Sprite;
		protected var _minuteHand:Sprite;
		protected var _secondHand:Sprite;
		public function AnalogClock(data:ClockData)
		{
			super(data);
		}
		override protected function init():void
		{
			_face = new Sprite();
			_hourHand = new Sprite();
			_minuteHand = new Sprite();
			_secondHand = new Sprite();
			super.init();
		}
		
		override protected function addChildren():void
		{
			this.addChild(_face);
			this.addChild(_hourHand);
			this.addChild(_minuteHand);
			this.addChild(_secondHand);
			super.addChildren();
		}
		
		override public function draw():void
		{
			var r:Number = Math.min(width,height)*0.9*0.5;
			if(_face && _face.visible){
				_face.graphics.clear();
				_face.graphics.lineStyle(1,0,1);
				_face.graphics.drawCircle(width*0.5,height*0.5,r);
				_face.graphics.endFill();
			}
			if(_face && _face.visible){
				_face.graphics.clear();
				_face.graphics.lineStyle(1,0,1);
				_face.graphics.drawCircle(width*0.5,height*0.5,r);
				_face.graphics.endFill();
			}
			
			super.draw();
		}
		
		
		
		
	}
}
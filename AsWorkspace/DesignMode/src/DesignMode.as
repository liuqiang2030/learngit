package
{
	import flash.display.Sprite;
	import model.ClockData;
	
	import view.AnalogClock;
	
	public class DesignMode extends Sprite
	{
		public function DesignMode()
		{
			testAnalogClock();
		}
		private function testAnalogClock():void{
			var clockdata:ClockData = new ClockData();
			clockdata.isRealTiem = true;
			var clock:AnalogClock = new AnalogClock(clockdata);
			clock.setSize(200,200);
			this.addChild(clock);
		}
	}
}
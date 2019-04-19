package model
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class ClockData extends EventDispatcher
	{
		private var _time:Time;
		private var _timer:Timer;
		private var _isRealTiem:Boolean;
		
		public function ClockData(target:IEventDispatcher=null)
		{
			super(target);
		}

		public function get time():Time
		{
			if(_isRealTiem || _time == null){
				var date:Date = new Date();
				return new Time(date.hours,date.minutes,date.seconds);
			}else{
				return _time.clone();
			}
			return _time;
		}

		public function set time(value:Time):void
		{
			if(value == null)return;
			_time = value.clone();
			this.dispatchEvent(new Event(Event.CHANGE));
		}
		protected function onTimer(evt:TimerEvent):void{
			this.dispatchEvent(new Event(Event.CHANGE));
		}
		public function set isRealTiem(value:Boolean):void
		{
			_isRealTiem = value;
			if(_isRealTiem){
				if(_timer == null){
					_timer = new Timer(1000);
					_timer.addEventListener(TimerEvent.TIMER,onTimer);
				}
				if(!_timer.running)
					_timer.start();
			}else{
				if(_timer!=null && _timer.running)
					_timer.stop()
			}
		}
	}
}
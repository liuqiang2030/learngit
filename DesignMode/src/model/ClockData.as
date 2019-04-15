package model
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class ClockData extends EventDispatcher
	{
		private var _time:Time;
		public function ClockData(target:IEventDispatcher=null)
		{
			super(target);
		}

		public function get time():Time
		{
			if(_time == null){
				var date:Date = new Date();
				return new Time(date.hours,date.minutes,date.seconds);
			}else{
				return _time.clone();
			}
			return _time;
		}

		public function set time(value:Time):void
		{
			_time = value.clone();
			this.dispatchEvent(new Event(Event.CHANGE));
		}

	}
}
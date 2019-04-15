package model
{
	public class Time
	{
		private var _hour:uint;
		private var _minute:uint;
		private var _second:uint;
		public function Time(hour:uint,minute:uint,second:uint)
		{
			this.hour = hour;
			this.minute = minute;
			this.second = second;
		}
		public function clone():Time{
			return new Time(hour,minute,second);
		}
		public function get second():uint
		{
			return _second;
		}

		public function set second(value:uint):void
		{
			_second = value;
		}

		public function get minute():uint
		{
			return _minute;
		}

		public function set minute(value:uint):void
		{
			_minute = value;
		}

		public function get hour():uint
		{
			return _hour;
		}

		public function set hour(value:uint):void
		{
			_hour = value;
		}

	}
}
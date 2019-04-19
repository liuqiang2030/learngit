package view
{
	import com.wonderidea.as3.ui.components.Component;
	import model.ClockData;
	
	public class AbstractClockView extends Component
	{
		protected var _data:ClockData;
		public function AbstractClockView(data:ClockData)
		{
			_data = data;
			super();
		}
	}
}
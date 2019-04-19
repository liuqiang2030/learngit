package view
{
	import com.wonderidea.as3.ui.data.FontNameList;
	import com.wonderidea.as3.ui.tool.BitmapTool;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	
	import model.ClockData;
	import model.Time;
	
	public class AnalogClock extends AbstractClockView
	{
		protected var _face:Sprite;
		protected var _hourHand:Sprite;
		protected var _minuteHand:Sprite;
		protected var _secondHand:Sprite;
		protected var _numberArr:Array;
		protected var _textArr:Array;
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
			_numberArr = [];
			_textArr = [];
			for (var i:int = 1; i <= 12; i++) 
			{
				var con:Sprite = new Sprite();
				var text:TextField = createTF();
				text.text = String(i);
				var bmpd:BitmapData = BitmapTool.convertsTextToBitmapData(text);
				var bitmap:Bitmap = new Bitmap(bmpd.clone(),"auto",true);
				bmpd.dispose();
				bmpd = null;
				_textArr.push(bitmap);
				con.addChild(bitmap);
				_numberArr.push(con);
				_textArr.push(text);
			}
			super.init();
		}
		protected function createTF():TextField{
			var tf:TextField = new TextField();
			tf.autoSize = TextFieldAutoSize.LEFT;
			tf.type = TextFieldType.DYNAMIC;
			tf.cacheAsBitmap = false;
			var format:TextFormat = new TextFormat(FontNameList.Microsoft_YaHei,12,0xff0000);
			tf.defaultTextFormat = format;
			return tf;
		}
		override protected function addChildren():void
		{
			this.addChild(_face);
			this.addChild(_hourHand);
			this.addChild(_minuteHand);
			this.addChild(_secondHand);
			for (var i:int = 0; i < _numberArr.length; i++) 
			{
				_face.addChild(_numberArr[i]);
			}
			super.addChildren();
			addListeners();
		}
		protected function addListeners():void{
			_data.addEventListener(Event.CHANGE,onChange);
		}
		protected function onChange(evt:Event):void{
			var time:Time = _data.time;
			_hourHand.rotation = 30*time.hour + 30*time.minute/60;
			_minuteHand.rotation = 6*time.minute + 6*time.second/60;
			_secondHand.rotation = 6*time.second;
		}
		private function drawNumberRule(con:Sprite,r:Number,l:Number):void{
			con.graphics.clear();
			con.graphics.lineStyle(1,0);
			con.graphics.moveTo(0,r);
			con.graphics.lineTo(0,r-l);
			con.graphics.endFill();
		}
		override public function draw():void
		{
			var r:Number = Math.min(width,height)*0.9*0.5;
			if(_face && _face.visible){
				_face.graphics.clear();
				_face.graphics.lineStyle(1,0,1);
				_face.graphics.drawCircle(0,0,r);
				_face.graphics.endFill();
				_face.x = width*0.5;
				_face.y = height*0.5;
				for (var i:int = 0; i < _textArr.length; i++) 
				{
					_textArr[i].x = -_textArr[i].width*0.5 ;
					_textArr[i].y = -r+10;
//					if((i+1)%3 == 0){
//						_textArr[i].y = -r+10;
//					}else{
//						_textArr[i].y = -r+5
//					}
				}
				for (var j:int = 0; j < _numberArr.length; j++) 
				{
					if((j+1)%3 == 0){
						drawNumberRule(_numberArr[j],r,8);
					}else{
						drawNumberRule(_numberArr[j],r,4);
					}
					_numberArr[j].rotation = 30*(j+1);
				}
			}
			if(_hourHand && _hourHand.visible){
				_hourHand.graphics.clear();
				_hourHand.graphics.beginFill(0xff0000,0.5);
				_hourHand.graphics.moveTo(0,0);
				_hourHand.graphics.lineTo(0.05*r,-0.1*r);
				_hourHand.graphics.lineTo(0,-0.7*r);
				_hourHand.graphics.lineTo(-0.05*r,-0.1*r);
				_hourHand.graphics.lineTo(0,0);
				_hourHand.graphics.endFill();
				_hourHand.x = width*0.5;
				_hourHand.y = height*0.5;
			}
			
			if(_minuteHand && _minuteHand.visible){
				_minuteHand.graphics.clear();
				_minuteHand.graphics.beginFill(0x00ff00,0.5);
				_minuteHand.graphics.moveTo(0,0);
				_minuteHand.graphics.lineTo(0.05*r,-0.1*r);
				_minuteHand.graphics.lineTo(0,-0.8*r);
				_minuteHand.graphics.lineTo(-0.05*r,-0.1*r);
				_minuteHand.graphics.lineTo(0,0);
				_minuteHand.graphics.endFill();
				_minuteHand.x = width*0.5;
				_minuteHand.y = height*0.5;
			}
			
			if(_secondHand && _secondHand.visible){
				_secondHand.graphics.clear();
				_secondHand.graphics.beginFill(0x0000ff,0.5);
				_secondHand.graphics.moveTo(0,0);
				_secondHand.graphics.lineTo(0.05*r,-0.1*r);
				_secondHand.graphics.lineTo(0,-0.9*r);
				_secondHand.graphics.lineTo(-0.05*r,-0.1*r);
				_secondHand.graphics.lineTo(0,0);
				_secondHand.graphics.endFill();
				_secondHand.x = width*0.5;
				_secondHand.y = height*0.5;
			}
			super.draw();
			onChange(null);
		}
		
		
		
		
	}
}
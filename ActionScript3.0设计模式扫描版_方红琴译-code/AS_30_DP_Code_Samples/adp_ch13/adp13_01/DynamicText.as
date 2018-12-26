package 
{
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.display.Sprite;

	public class DynamicText extends Sprite
	{
		private var gameInfo:TextField;
		private var gameFormat:TextFormat;

		public function DynamicText():void
		{
			gameInfo=new TextField();
			addChild(gameInfo);
			gameInfo.border=false;
			gameInfo.background=true;
			gameInfo.type=TextFieldType.DYNAMIC;
			gameInfo.width=70;
			gameInfo.height=20;
			gameFormat=new TextFormat();
			gameFormat.color=0xcc0000;
			gameFormat.font="Verdana";
			gameFormat.size=10;
			gameInfo.defaultTextFormat=gameFormat;
		}
		public function setMove(pMove:String)
		{
			gameInfo.text=pMove;
		}
		public function getMove():String
		{
			return gameInfo.text;
		}
	}
}
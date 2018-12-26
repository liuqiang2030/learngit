package utils {
	
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	public class TextDisplayField extends TextField {
		
		public function TextDisplayField(labelText:String = "", fontSize:int = 14, showborder:Boolean = true) {
			autoSize = TextFieldAutoSize.LEFT;
			text = labelText;
			border = showborder;
			var format:TextFormat = new TextFormat("Verdana");
			format.size = fontSize;
			setTextFormat(format);
		}
	}
}

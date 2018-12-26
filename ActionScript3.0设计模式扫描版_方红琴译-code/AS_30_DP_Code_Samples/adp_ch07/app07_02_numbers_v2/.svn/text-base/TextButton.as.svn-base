package {
	
	import flash.display.*;
	import flash.events.*;
	
	public class TextButton extends SimpleButton {
		
		public var selected:Boolean = false;
		
		public function TextButton(txt:String) {
			upState = new TextButtonState(0xFFFFFF, txt);
			downState = new TextButtonState(0x999999, txt);
			overState = new TextButtonState(0xCCCCCC, txt);
			hitTestState = upState;
		}
	}
}

import flash.display.*;
import flash.text.TextFormat;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

class TextButtonState extends Sprite {
	
    public function TextButtonState(color:uint, labelText:String) {
        var label = new TextField();
		label.autoSize = TextFieldAutoSize.LEFT;
        label.text = labelText;
        label.x = 2;
        var format:TextFormat = new TextFormat("Verdana");
        label.setTextFormat(format);
        var buttonWidth:Number = label.textWidth + 10;
        var background:Shape = new Shape();
        background.graphics.beginFill(color);
        background.graphics.lineStyle(2, 0x000000);
        background.graphics.drawRoundRect(0, 0, buttonWidth, 18, 4);
        addChild(background);
        addChild(label);
    }
}
﻿package {		import flash.display.*;	import flash.events.*;			class InvokerPanel extends Sprite {				var commandList:Array;		var buttonList:Array;				public function InvokerPanel() {			this.commandList = new Array(5);			this.buttonList = new Array(5);		}				public function setCommand(nSlot:int, c:ICommand):void {			this.commandList[nSlot] = c;		}				public function setButton(nSlot:int, sName:String):void {			var btn:TextButton = new TextButton(sName);			this.buttonList[nSlot] = btn;			btn.x = nSlot * 100;			btn.addEventListener(MouseEvent.CLICK, this.buttonClicked);			this.addChild(btn);		}				private function buttonClicked(e:Event) {			for (var i:int = 0; i < buttonList.length; i++) {				if (buttonList[i] === e.target) {					this.commandList[i].execute();					break;				}			}		}	}}
package {
	
	import flash.events.*;
	import flash.display.Stage;
		
	class InvokerKeyboard {
		
		var commandList:Array;
		var keyList:Array;
		
		public function InvokerKeyboard(stageTarget:Stage) {
			this.commandList = new Array();
			this.keyList = new Array();
			// attach KEY_DOWN event listener onKeyPress() to the stage
			stageTarget.addEventListener(KeyboardEvent.KEY_DOWN, this.onKeyPress);
		}
		
		public function setCommand(keycode:int, c:ICommand):void {
			this.keyList.push(keycode);
			this.commandList.push(c);
		}
		
		private function onKeyPress(event:KeyboardEvent) {
			for (var i:int = 0; i < keyList.length; i++) {
				if (keyList[i] === event.keyCode) {
					this.commandList[i].execute();
					break;
				}
			}
		}
	}
}
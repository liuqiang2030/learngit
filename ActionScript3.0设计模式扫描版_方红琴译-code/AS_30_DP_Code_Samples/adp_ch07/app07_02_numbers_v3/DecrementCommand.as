﻿package {		import flash.text.TextField;		class DecrementCommand implements ICommand {				var receiver:TextField;				public function DecrementCommand(rec:TextField):void {			this.receiver = rec;		}				public function execute():void {			receiver.text = String(Number(receiver.text) - 1);		}	}}
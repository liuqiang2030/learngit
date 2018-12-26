package {
	
	import flash.errors.IllegalOperationError;
	
	class UndoLastCommand extends CommandWithUndo {
		
		override public function execute():void {
			if (aCommandHistory.length) {
				var lastCommand:CommandWithUndo = aCommandHistory.pop();
				lastCommand.undo();
			}
		}
		
		override public function undo():void {
			throw new IllegalOperationError("undo operation not supported on this command");
		}
	}
}
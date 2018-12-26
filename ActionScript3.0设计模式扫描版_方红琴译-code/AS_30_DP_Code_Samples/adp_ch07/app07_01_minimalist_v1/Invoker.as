package {
	
	class Invoker {
		
		var currentCommand:ICommand;
		
		public function setCommand(c:ICommand):void {
			this.currentCommand = c;
		}
		
		public function executeCommand() {
			currentCommand.execute();
		}
	}
}
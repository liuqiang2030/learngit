package {
	
	class ConcreteCommand implements ICommand {
		
		var receiver:Receiver;
		
		public function ConcreteCommand(rec:Receiver):void {
			this.receiver = rec;
		}
		
		public function execute():void {
			// implement behavior by delegating to receiver
			receiver.action();
		}
	}
}
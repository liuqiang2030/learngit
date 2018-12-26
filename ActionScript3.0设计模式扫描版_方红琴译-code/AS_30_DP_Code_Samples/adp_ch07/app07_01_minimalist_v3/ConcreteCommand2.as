package {
	
	class ConcreteCommand2 implements ICommand {
		
		var receiver:Receiver2;
		
		public function ConcreteCommand2(rec:Receiver2):void {
			this.receiver = rec;
		}
		
		public function execute():void {
			// implement behavior by delegating to receiver
			receiver.action2();
		}
	}
}
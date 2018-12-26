package {
	
	class ConcreteCommand1 implements ICommand {
		
		var receiver:Receiver1;
		
		public function ConcreteCommand1(rec:Receiver1):void {
			this.receiver = rec;
		}
		
		public function execute():void {
			// implement behavior by delegating to receiver
			receiver.action1();
		}
	}
}
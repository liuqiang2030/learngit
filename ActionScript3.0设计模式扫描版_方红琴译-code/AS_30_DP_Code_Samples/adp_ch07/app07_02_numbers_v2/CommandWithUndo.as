package {
	
	// ABSTRACT Class (should be subclassed and not instantiated)
	public class CommandWithUndo implements ICommand {
		
		internal static var aCommandHistory:Array = new Array();
		
		public function execute():void {
			aCommandHistory.push(this);
		}
		
		// ABSTRACT Method (must be overridden in a subclass)
		public function undo():void {}
	}
}
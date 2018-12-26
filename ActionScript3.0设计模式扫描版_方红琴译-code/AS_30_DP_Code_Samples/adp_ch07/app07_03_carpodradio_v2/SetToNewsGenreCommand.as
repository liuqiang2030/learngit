package {
	
	class SetToNewsGenreCommand implements ICommand {
		
		var receiver:ControlButtons;
		
		public function SetToNewsGenreCommand(rec:ControlButtons):void {
			this.receiver = rec;
		}
		
		public function execute():void {
			this.receiver.setGenre(DynamicControlButtons.NEWS);
		}
	}
}
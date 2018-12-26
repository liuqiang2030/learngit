package {
	
	class SetToMusicGenreCommand implements ICommand {
		
		var receiver:ControlButtons;
		
		public function SetToMusicGenreCommand(rec:ControlButtons):void {
			this.receiver = rec;
		}
		
		public function execute():void {
			this.receiver.setGenre(DynamicControlButtons.MUSIC);
		}
	}
}
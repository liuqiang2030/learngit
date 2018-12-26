package {
		
	class DynamicControlButtons extends ControlButtons {
		
		public static const NEWS:uint = 0;
		public static const MUSIC:uint = 1;
		var currentGenre:uint = NEWS;
		
		var newsPodcastCommands:Array;
		var musicPodcastCommands:Array;
		
		public function DynamicControlButtons() {
			this.newsPodcastCommands = new Array(3);
			this.musicPodcastCommands = new Array(3);
		}
		
		public function setGenre(genre:uint) {
			if (genre == NEWS) {
				this.currentGenre = NEWS;
			} else if (genre == MUSIC) {
				this.currentGenre = MUSIC;
			}
			this.updateCommandButtons();
		}
		
		public function setGenreCommand(nSlot:int, c:ICommand, genre:uint):void {
			if (genre == NEWS) {
				this.newsPodcastCommands[nSlot] = c;
			} else if (genre == MUSIC) {
				this.musicPodcastCommands[nSlot] = c;
			}
			this.updateCommandButtons();
		}
		
		private function updateCommandButtons() {
			for (var i:int = 0; i < 3; i++) {
				if (currentGenre == NEWS) {
					this.commandList[i] = this.newsPodcastCommands[i];
				} else if (currentGenre == MUSIC) {
					this.commandList[i] = this.musicPodcastCommands[i];
				}
			}
		}
	}
}
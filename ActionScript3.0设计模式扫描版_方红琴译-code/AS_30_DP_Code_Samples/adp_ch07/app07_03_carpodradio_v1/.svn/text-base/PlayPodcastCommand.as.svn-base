package {
	
	class PlayPodcastCommand implements ICommand {
		
		var receiver:Radio;
		var podCastURL:String;
		
		public function PlayPodcastCommand(rec:Radio, url:String):void {
			this.receiver = rec;
			this.podCastURL = url;
		}
		
		public function execute():void {
			this.receiver.playPodcast(this.podCastURL);
		}
	}
}
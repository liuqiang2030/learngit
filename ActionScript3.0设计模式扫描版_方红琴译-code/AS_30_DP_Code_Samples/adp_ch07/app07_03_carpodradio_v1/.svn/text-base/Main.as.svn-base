package {
	
	import flash.display.MovieClip;
	
	import flash.display.SimpleButton;

	/** 
	*	Main Class
	*	@ purpose:		Document class for movie
	*/
	public class Main extends MovieClip {

		public function Main() {
			
			// create radio (receiver)
			var radio:Radio = new Radio();
			radio.x = 50;
			radio.y = 50;
			this.addChild(radio);
			
			// create control buttons (invoker)
			var controls:ControlButtons = new ControlButtons();
			controls.setButton(0,"News");
			controls.setButton(1,"Music");
			controls.setButton(2,"Technology");
			controls.setButton(3,"Business");
			controls.setButton(4,"Sports");
			controls.x = 50;
			controls.y = this.stage.stageHeight - 50;
			this.addChild(controls);
			
			// attach podcast station commands to invoker buttons
			var podcastURL_1:String = "http://www.npr.org/rss/podcast.php?id=500005";
			var podcastURL_2:String = "http://www.npr.org/rss/podcast.php?id=1039";
			var podcastURL_3:String = "http://www.npr.org/rss/podcast.php?id=1019";
			var podcastURL_4:String = "http://www.npr.org/rss/podcast.php?id=1095";
			var podcastURL_5:String = "http://www.npr.org/rss/podcast.php?id=4499275";
			
			controls.setCommand(0, new PlayPodcastCommand(radio, podcastURL_1));
			controls.setCommand(1, new PlayPodcastCommand(radio, podcastURL_2));
			controls.setCommand(2, new PlayPodcastCommand(radio, podcastURL_3));
			controls.setCommand(3, new PlayPodcastCommand(radio, podcastURL_4));
			controls.setCommand(4, new PlayPodcastCommand(radio, podcastURL_5));
		
		}
	}
}
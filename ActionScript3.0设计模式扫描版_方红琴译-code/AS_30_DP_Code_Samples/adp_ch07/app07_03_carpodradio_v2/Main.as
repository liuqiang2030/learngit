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
			var controls:DynamicControlButtons = new DynamicControlButtons();
			controls.setButton(0,"1");
			controls.setButton(1,"2");
			controls.setButton(2,"3");
			controls.setButton(3,"News");
			controls.setButton(4,"Music");
			controls.x = 50;
			controls.y = this.stage.stageHeight - 50;
			this.addChild(controls);
			
			// attach podcast station commands to invoker buttons
			var podcastNewsURL_1:String = "http://www.npr.org/rss/podcast.php?id=500005";
			var podcastNewsURL_2:String = "http://rss.cnn.com/services/podcasting/newscast/rss.xml";
			var podcastNewsURL_3:String = "http://www.npr.org/rss/podcast.php?id=510053";
			var podcastMusicURL_1:String = "http://www.npr.org/rss/podcast.php?id=510019";
			var podcastMusicURL_2:String = "http://www.npr.org/rss/podcast.php?id=510026";
			var podcastMusicURL_3:String = "http://minnesota.publicradio.org/tools/podcasts/new_classical_tracks.xml";
			
			// add station tuning commands to invoker buttons
			controls.setGenreCommand(0, new PlayPodcastCommand(radio, podcastNewsURL_1), DynamicControlButtons.NEWS);
			controls.setGenreCommand(1, new PlayPodcastCommand(radio, podcastNewsURL_2), DynamicControlButtons.NEWS);
			controls.setGenreCommand(2, new PlayPodcastCommand(radio, podcastNewsURL_3), DynamicControlButtons.NEWS);
			controls.setGenreCommand(0, new PlayPodcastCommand(radio, podcastMusicURL_1), DynamicControlButtons.MUSIC);
			controls.setGenreCommand(1, new PlayPodcastCommand(radio, podcastMusicURL_2), DynamicControlButtons.MUSIC);
			controls.setGenreCommand(2, new PlayPodcastCommand(radio, podcastMusicURL_3), DynamicControlButtons.MUSIC);
			
			// add genre selection commands to invoker buttons
			controls.setCommand(3, new SetToNewsGenreCommand(controls));
			controls.setCommand(4, new SetToMusicGenreCommand(controls));
		}
	}
}
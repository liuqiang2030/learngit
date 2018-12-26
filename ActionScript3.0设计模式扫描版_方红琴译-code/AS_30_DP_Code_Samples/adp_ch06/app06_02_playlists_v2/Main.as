﻿package {
	
	import flash.display.MovieClip;

	/** 
	*	Main Class
	*	@ purpose:		Document class for movie
	*/
	public class Main extends MovieClip {

		public function Main() {
			
			// create playlist
			var drumlicks:Playlist = new Playlist("drum licks");  
			drumlicks.add(new Song("bongo.mp3"));
			drumlicks.add(new Song("tabla.mp3"));
			drumlicks.add(new Song("djembe.mp3"));
			drumlicks.play();
			
			// create another playlist
			var guitariffs:Playlist = new Playlist("guitar riffs");
			guitariffs.add(new Song("acousticguitar.mp3"));
			guitariffs.add(new Song("electricguitar.mp3"));
			guitariffs.play();
			
			// create composite playlist
			var eclectic:Playlist = new Playlist("eclectic");
			eclectic.add(drumlicks);
			eclectic.add(new Song("balladpiano.mp3"));
			eclectic.add(guitariffs);
			eclectic.play();
			
			// remove drums from eclectic playlist
			eclectic.remove(eclectic.getChild(1));
			eclectic.play();
			
		}
	}
}
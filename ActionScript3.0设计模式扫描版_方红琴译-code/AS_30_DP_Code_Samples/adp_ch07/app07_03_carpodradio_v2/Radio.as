package {
	
	import flash.display.*;
	import flash.events.*;
    import flash.media.Sound;
    import flash.media.SoundChannel;
    import flash.net.*;
	import utils.*;
		
	class Radio extends Sprite {
		
		private var audioDisplay:TextDisplayField;
		private static var audioChannel:SoundChannel = new SoundChannel();
		var xmlLoader:URLLoader;
		
		public function Radio() {
			audioDisplay = new TextDisplayField("click buttons to play", 14);
			this.addChild(audioDisplay);
		}
		
		public function playPodcast(url:String) {
			var xmlURL:URLRequest = new URLRequest(url);
			this.xmlLoader = new URLLoader(xmlURL);
			xmlLoader.addEventListener(Event.COMPLETE, xmlLoaded);
			xmlLoader.addEventListener(IOErrorEvent.IO_ERROR, loadError);
		}
		
		private function xmlLoaded(evtObj:Event) { 
			var xml:XML = new XML();
			xml = XML(xmlLoader.data);
			// set the default XML namespace
			if (xml.namespace("") != undefined) {
				default xml namespace = xml.namespace("");
			}
			// set the display field to audio stream name
			this.audioDisplay.text = xml..item[0].title;
			// get audio url
			var url = xml..item[0].enclosure.attribute("url");
			// load audio and play
			var request:URLRequest = new URLRequest(url);
            var audio:Sound = new Sound();
            audio.addEventListener(IOErrorEvent.IO_ERROR, loadError);
            audio.load(request);
			audioChannel.stop(); // stop previous audio
            audioChannel = audio.play();
		}
		
		private function loadError(event:Event):void {
			trace("Load error " + event);
		}
	}
}
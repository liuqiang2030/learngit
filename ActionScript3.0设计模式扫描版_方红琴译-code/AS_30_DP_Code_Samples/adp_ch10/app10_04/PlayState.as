﻿package {	//Play State #3	import flash.net.NetStream;	class PlayState implements State	{		var videoWorks:VideoWorks;		public function PlayState(videoWorks:VideoWorks)		{			trace("--Play State--");			this.videoWorks=videoWorks;		}		public function startPlay(ns:NetStream,flv:String):void		{			trace("You're already playing");		}		public function stopAll(ns:NetStream):void		{			ns.close();			trace("Stop playing.");			videoWorks.setState(videoWorks.getStopState());		}		public function startRecord(ns:NetStream,flv:String):void		{			trace("You have to stop first.");		}		public function startAppend(ns:NetStream,flv:String):void		{			trace("You have to stop first.");		}		public function doPause(ns:NetStream):void		{			ns.togglePause();			trace("Start pausing.");			videoWorks.setState(videoWorks.getPauseState());		}	}}
﻿package {	import flash.media.Sound;	import flash.media.SoundChannel;	import flash.net.URLRequest;	public class PlayTune	{		private var channelNow:SoundChannel;		public function PlayTune (tuneNow:String):void		{			tuneNow+=".mp3";			var playMe:URLRequest=new URLRequest(tuneNow);			var soundMedia:Sound=new Sound();			soundMedia.load (playMe);			channelNow=soundMedia.play();		}	}}
﻿package {	//A concrete class	//Audio Class	public class Audio extends VidAudio	{		private var tuneName:String;		override protected function selectMedia ():void		{			tuneName="iBlues";		}		override protected function playNow ():void		{			var playTune:PlayTune=new PlayTune(tuneName);		}	}}
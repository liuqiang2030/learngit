﻿package {	//A concrete class	//Vid class	public class Vid extends VidAudio	{		private var vidName:String;		override protected function selectMedia ():void		{			vidName="media";		}		override protected function playNow ():void		{			var playVideo=new PlayVideo(vidName);			addChild (playVideo);		}	}}
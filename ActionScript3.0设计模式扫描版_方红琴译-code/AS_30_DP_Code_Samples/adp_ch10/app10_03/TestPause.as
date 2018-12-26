﻿package {	//Implement FMS2 App and Test State Machine #6	import flash.display.Sprite;	import flash.net.NetConnection;	import flash.net.NetStream;	import flash.media.Video;	import flash.text.TextField;	import flash.text.TextFieldType;	import flash.events.MouseEvent;	import flash.events.NetStatusEvent;	public class TestPause extends Sprite	{		private var nc:NetConnection=new NetConnection();		private var ns:NetStream;		private var vid:Video=new Video(320,240);		private var vidTest:VideoWorks;		private var playBtn:NetBtn;		private var stopBtn:NetBtn;		private var flv:String;		private var flv_txt:TextField;		private var dummy:Object;		public function TestPause ()		{			nc.connect (null);			ns=new NetStream(nc);			addChild (vid);			vid.x=stage.stageWidth / 2 - vid.width / 2;			vid.y=stage.stageHeight / 2 - vid.height / 2;			//Instantiate State Machine			vidTest=new VideoWorks  ;			//Play, Stop and Pause Buttons			playBtn=new NetBtn("Play");			addChild (playBtn);			playBtn.x=stage.stageWidth / 2 - 100 + playBtn.width / 2;			playBtn.y=350;			stopBtn=new NetBtn("Stop");			addChild (stopBtn);			stopBtn.x=stage.stageWidth / 2 - stopBtn.width / 2;			stopBtn.y=350;			var pauseBtn:NetBtn=new NetBtn("Pause");			addChild (pauseBtn);			pauseBtn.x=(stage.stageWidth / 2 + 100) - pauseBtn.width;			pauseBtn.y=350;			//Add Event Listeners			playBtn.addEventListener (MouseEvent.CLICK,doPlay);			stopBtn.addEventListener (MouseEvent.CLICK,doStop);			pauseBtn.addEventListener (MouseEvent.CLICK,pauseNow);			//Add the text field			flv_txt=new TextField  ;			flv_txt.border=true;			flv_txt.borderColor=0x9e0039;			flv_txt.background=true;			flv_txt.backgroundColor=0xfab383;			flv_txt.type=TextFieldType.INPUT;			flv_txt.x=stage.stageWidth / 2 - 45;			flv_txt.y=10;			flv_txt.width=90;			flv_txt.height=16;			addChild (flv_txt);			//This prevents a MetaData error being thrown			dummy=new Object  ;			ns.client=dummy;			dummy.onMetaData=getMeta;			//NetStream			ns.addEventListener (NetStatusEvent.NET_STATUS,flvCheck);		}		//MetaData 		private function getMeta (mdata:Object):void		{			trace (mdata.duration);		}		//Handle flv		private function flvCheck (event:NetStatusEvent):void		{			switch (event.info.code)			{				case "NetStream.Play.Stop" :					vidTest.stopPlay (ns);					vid.clear ();					break;				case "NetStream.Play.StreamNotFound" :					vidTest.stopPlay (ns);					flv_txt.text="File not found";					break;			}		}		//Start play		private function doPlay (e:MouseEvent):void		{			if (flv_txt.text != "" && flv_txt.text != "Provide file name")			{				flv_txt.textColor=0x000000;				flv=flv_txt.text + ".flv";				vidTest.startPlay (ns,flv);				vid.attachNetStream (ns);			}			else			{				flv_txt.textColor=0xcc0000;				flv_txt.text="Provide file name";			}		}		//Stop play		private function doStop (e:MouseEvent):void		{			vidTest.stopPlay (ns);			vid.clear ();		}		//Pause play		function pauseNow (e:MouseEvent):void		{			vidTest.doPause (ns);		}	}}
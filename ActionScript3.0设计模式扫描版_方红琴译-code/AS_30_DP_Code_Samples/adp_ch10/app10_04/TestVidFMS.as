﻿package {	//Test Module #8	import flash.display.Sprite;	import flash.net.NetConnection;	import flash.net.NetStream;	import flash.net.ObjectEncoding;	import flash.media.Video;	import flash.media.Camera;	import flash.media.Microphone;	import flash.text.TextField;	import flash.text.TextFieldType;	import flash.events.MouseEvent;	import flash.events.NetStatusEvent;	public class TestVidFMS extends Sprite	{		private var nc:NetConnection;		private var ns:NetStream;		private var dummy:Object;		private var flv_txt:TextField;		private var flv:String;		private var cam:Camera;		private var mic:Microphone;		private var stateVid:VideoWorks;		private var playCheck:Boolean;		private var pauseCheck:Boolean;		private var playBtn:NetBtn;		private var stopBtn:NetBtn;		private var pauseBtn:NetBtn;		private var recordBtn:NetBtn;		private var appendBtn:NetBtn;		public function TestVidFMS ()		{			//************			//Add the text field			//************			flv_txt= new TextField();			flv_txt.border=true;			flv_txt.background=true;			flv_txt.backgroundColor=0xfab383;			flv_txt.type=TextFieldType.INPUT;			flv_txt.x=(550/2)-45;			flv_txt.y=15;			flv_txt.width=90;			flv_txt.height=18;			addChild (flv_txt);			//FMS State Machine			NetConnection.defaultObjectEncoding=flash.net.ObjectEncoding.AMF0;			nc = new NetConnection();			nc.objectEncoding = flash.net.ObjectEncoding.AMF0;			nc.addEventListener (NetStatusEvent.NET_STATUS,checkHookupStatus);			//Use your own domain/IP address on RTMP			nc.connect ("rtmp://192.168.0.11/flvstate/flv");			//OR set up a local connection			//nc.connect("rtmp:/flvstate/flv");			//nc.connect(null);			//Camera & Microphone Settings			cam = Camera.getCamera();			cam.setMode (320,240,15);			cam.setKeyFrameInterval (30);			cam.setQuality (0,80);			mic = Microphone.getMicrophone();			mic.rate=11;			//Add video object			vid=new Video(320,240);			addChild (vid);			vid.x=(550/2)-(320/2);			vid.y=40;			setLocal ();			//Instantiate State Machine			stateVid=new VideoWorks;			//Play, Stop, Record, Append and Pause Buttons			playBtn=new NetBtn("Play");			addChild (playBtn);			playBtn.x=(550/2)-(320/2);			playBtn.y=300;			var playCheck:Boolean=false;			recordBtn=new NetBtn("Record");			addChild (recordBtn);			recordBtn.x=(550/2)+((320/2)-60);			recordBtn.y=300;			appendBtn=new NetBtn("Append");			addChild (appendBtn);			appendBtn.x=(550/2)+((320/2)-60);			appendBtn.y=330;			stopBtn=new NetBtn("Stop");			addChild (stopBtn);			stopBtn.x=(550/2)-25;			stopBtn.y=300;			pauseBtn=new NetBtn("Pause");			addChild (pauseBtn);			pauseBtn.x=(550/2)-(320/2);			pauseBtn.y=330;			pauseCheck=true;			//Add Event Listeners			playBtn.addEventListener (MouseEvent.CLICK,doPlay);			stopBtn.addEventListener (MouseEvent.CLICK,doStop);			recordBtn.addEventListener (MouseEvent.CLICK,doRecord);			appendBtn.addEventListener (MouseEvent.CLICK,doAppend);			pauseBtn.addEventListener (MouseEvent.CLICK,doPause);		}		//Add Control Functions		function setNet ()		{			vid.attachNetStream (ns);		}		function setLocal ()		{			vid.attachCamera (cam);		}		function doPlay (e:MouseEvent):void		{			if (flv_txt.text != "" && flv_txt.text != "Provide file name")			{				setNet ();				flv_txt.textColor=0x000000;				flv=flv_txt.text;				stateVid.startPlay (ns,flv);				if (! playCheck)				{					playCheck=true;				}			}			else			{				flv_txt.textColor=0xcc0000;				flv_txt.text="Provide file name";			}		}		function doRecord (e:MouseEvent):void		{			if (flv_txt.text != "" && flv_txt.text != "Provide file name")			{				ns.attachAudio (mic);				ns.attachCamera (cam);				flv_txt.textColor=0x000000;				flv=flv_txt.text;				stateVid.startRecord (ns,flv);				if (! playCheck)				{					playCheck=true;				}			}			else			{				flv_txt.textColor=0xcc0000;				flv_txt.text="Provide file name";			}		}		function doAppend (e:MouseEvent):void		{			if (flv_txt.text != "" && flv_txt.text != "Provide file name")			{				ns.attachAudio (mic);				ns.attachCamera (cam);				flv_txt.textColor=0x000000;				flv=flv_txt.text;				stateVid.startAppend (ns,flv);				if (! playCheck)				{					playCheck=true;				}			}			else			{				flv_txt.textColor=0xcc0000;				flv_txt.text="Provide file name";			}		}		function doPause (e:MouseEvent):void		{			if (pauseCheck)			{				pauseCheck=false;				if (playCheck)				{					stopBtn.visible=false;				}				stateVid.doPause (ns);			}			else			{				pauseCheck=true;				stopBtn.visible=true;				stateVid.doPause (ns);			}		}		function doStop (e:MouseEvent):void		{			playCheck=false;			stateVid.stopAll (ns);			vid.clear ();			setLocal ();		}		//Check connection, instantiate stream, 		//and set up metadata event handler		function checkHookupStatus (event:NetStatusEvent):void		{			if (event.info.code == "NetConnection.Connect.Success")			{				ns = new NetStream(nc);				dummy=new Object();				ns.client=dummy;				dummy.onMetaData=getMeta;				ns.addEventListener (NetStatusEvent.NET_STATUS,flvCheck);			}		}		//MetaData		function getMeta (mdata:Object):void		{			trace (mdata.duration);		}		//Handle flv		private function flvCheck (event:NetStatusEvent):void		{			switch (event.info.code)			{				case "NetStream.Play.Stop" :					stateVid.stopAll (ns);					setLocal ();					break;				case "NetStream.Play.StreamNotFound" :					stateVid.stopAll (ns);					flv_txt.text="File not found";					setLocal ();					break;			}		}	}}
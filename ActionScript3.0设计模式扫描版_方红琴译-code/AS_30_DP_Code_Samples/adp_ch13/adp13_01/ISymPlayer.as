package
{
	//Symetrical Proxy Interface
	import flash.events.Event;
	interface ISymPlayer
	{
		function numConnect(cl:uint):void;
		function makeMove(event:Event):void;
		function localMove(locMove:String):void;
		function onProxyMove(proxMove:String):void;
		function doMove(s:String):void;
		function takeTurn():void;
	}
}
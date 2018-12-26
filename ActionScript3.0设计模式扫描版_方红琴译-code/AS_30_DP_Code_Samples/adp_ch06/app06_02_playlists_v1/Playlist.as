package {
	
	public class Playlist extends Component {
	
		private var sName:String;
		protected var aChildren:Array;
		
		public function Playlist(sName:String) {
			this.sName = sName;
			this.aChildren = new Array();
		}
		
		override public function add(c:Component):void {
			aChildren.push(c);
		}
		
		override public function play():void {
			trace("Queuing playlist: " + this.sName);
			for each (var c:Component in aChildren) {
				c.play();
			}
		}
	}
}
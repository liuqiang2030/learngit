﻿package {		public class Leaf extends Component {			private var sName:String;				public function Leaf(sNodeName:String) {			this.sName = sNodeName;		}				override public function operation():void {			trace(this.sName);		}	}}
﻿package{	public class Integrity extends Decorator	{		var components:Component;		public function Integrity(components:Component) {			this.components=components;		}		override public function getSoul():String		{			return components.getSoul() + "|Integrity";		}		override public function good():Number		{			return 14 + components.good();		}		override public function evil():Number		{			return -6 + components.evil();		}	}}
﻿package{	public class Dogmatisms extends Decorator	{		var components:Component;		public function Dogmatisms(components:Component) 		{			this.components=components;		}		override public function getSoul():String		{			return components.getSoul() + "|Dogmatisms";		}		override public function good():Number		{			return -12 + components.good();		}		override public function evil():Number		{			return 15 + components.evil();		}	}}
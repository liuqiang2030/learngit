﻿package {	public class Umbrella extends Dresser	{		var model:Model;		public function Umbrella(model:Model)		{			this.model=model;		}		override public function getDressed():String		{			return model.getDressed() + "~umbrella";		}	}}
﻿package{	public class PinkDress extends Dresser	{		var model:Model;		public function PinkDress(model:Model) {			this.model=model;		}		override public function getDressed():String		{			return model.getDressed() + " pinkdress";		}	}}
﻿package {	//Abstract class	class Context	{		protected var strategy:Strategy;		public function Context() {}		public function doStrategy():void		{			strategy.think();		}	}}
﻿package {	//Abstract Class	class ShedMaker	{		public final function templateMethod ():void		{			doDesign ();			determineSupplies ();			storeTools ();		}		protected function doDesign ():void		{		}		protected function determineSupplies ():void		{		}		private final function storeTools ():void		{			trace ("Now I can put all my tools away.\n");		}	}}
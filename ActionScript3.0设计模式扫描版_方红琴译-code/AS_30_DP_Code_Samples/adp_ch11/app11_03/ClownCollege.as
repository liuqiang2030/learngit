﻿package {	import flash.display.Sprite;	public class ClownCollege extends Sprite	{		public function ClownCollege()		{			var joker:Clown=new Koka();			joker.doTrick();			joker.doSkit();			var gagGrrrl:Clown=new Bojo();			gagGrrrl.doTrick();			gagGrrrl.doSkit();						var gurgle:Clown=new Bubbles();			gurgle.doSkit();			gurgle.doTrick();			gurgle.setTrick(new BubblePants());			gurgle.doTrick();		}	}}
﻿//Main.aspackage{	import flash.display.Sprite;	public class Main extends Sprite	{		public function Main()		{			//Program to implementation			var alien:Alien=new Alien();			alien.useWeapon();						//Program to interface			var spaceWarrior:SpaceWarrior=new Earthling();			spaceWarrior.useWeapon();			//Added			spaceWarrior=new Alien();			spaceWarrior.useWeapon();					}	}}
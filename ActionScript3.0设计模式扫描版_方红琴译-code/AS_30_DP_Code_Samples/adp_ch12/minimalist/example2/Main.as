﻿package {		import flash.display.*;	import flash.events.*;	/** 	*	Main Class	*	@ purpose:		Document class for movie	*/	public class Main extends Sprite {		public function Main() {						var model:IModel = new Model();			var controller:IKeyboardInputHandler = new Controller(model);			var view:View = new View(model, controller, this.stage);		}	}}
﻿package {		import flash.display.*;	import flash.events.*;	import flash.geom.*;	/** 	*	Main Class	*	@ purpose:		Document class for movie	*/	public class Main extends Sprite {		public function Main() {						var carModel:ICar = new CarModel();			carModel.setLoc(new Point(200,200));			carModel.setColor(0x0000FF); // blue						var carController:IKeyboardInputHandler = new RHController(carModel);						// keyboard input view (composite)			var kbInputView:CompositeView = new KeyboardInputView(carModel, carController, this.stage);						// car view (component)			var car:ComponentView = new CarView(carModel);			kbInputView.add(car); // add car view to keyboard input view as child component			addChild(car);						// register keyboard input view to recieve notifications from the car model			carModel.addEventListener(Event.CHANGE, kbInputView.update);					}	}}
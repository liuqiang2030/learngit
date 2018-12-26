﻿package {		import flash.geom.*;	import flash.events.*;		public class CarView extends ComponentView {				public function CarView(aModel:ICar, aController:Object = null) {						super(aModel, aController);					// draw car body			graphics.beginFill(model.getColor());			graphics.drawRect(-20, -10, 40, 20);			graphics.endFill();			// draw tires			drawTire(-12, -15);			drawTire(12, -15);			drawTire(-12, 15);			drawTire(12, 15);						// update car			this.update();		}				private function drawTire(xLoc:int, yLoc:int) {			graphics.beginFill(0x000000); // black color			graphics.drawRect(xLoc - 4, yLoc - 2, 8, 4);			graphics.endFill();		}				override public function update(event:Event = null):void {			// get data from model and update view			var ptLoc:Point = (model as ICar).getLoc();			this.x = ptLoc.x;			this.y = ptLoc.y;			this.rotation = (model as ICar).getRotation();		}	}}
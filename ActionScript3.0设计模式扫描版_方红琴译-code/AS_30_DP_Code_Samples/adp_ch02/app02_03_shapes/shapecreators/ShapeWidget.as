package shapecreators {
	
	import flash.display.Sprite;
	
	// ABSTRACT Class (should be subclassed and not instantiated)
	internal class ShapeWidget extends Sprite {
		
		// ABSTRACT Method (should be implemented in subclass)
		internal function drawWidget():void {}
		
		// method to set the x and y location of the sprite
		internal function setLoc(xLoc:int, yLoc:int):void {
			this.x = xLoc;
			this.y = yLoc;
		}
	}
}
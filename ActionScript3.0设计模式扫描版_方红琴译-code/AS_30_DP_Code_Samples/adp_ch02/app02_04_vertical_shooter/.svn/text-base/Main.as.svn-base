package {
	
	import flash.display.*;
	import flash.text.*;
	import ships.*;

	/** 
	*	Main Class
	*
	*	@ purpose:		Document class for movie
	*/
	public class Main extends MovieClip {

		public function Main() {
			// show instructions
			var t:TextField = new TextField();
			var f:TextFormat = new TextFormat();
			f.color = 0xFFFF00;
			f.size = 18;
			f.font = "Arial";
			f.align = TextFormatAlign.CENTER;
			t.width = 300;
			t.x = 100;
			t.y = 20;
			t.text = "Mouse moves ship -- click to fire!";
			t.setTextFormat(f);
			addChild(t);

			// instantiate ship creator
			var shipFactory:ShipCreator = new ShipCreator();
			
			// place hero ship
			shipFactory.addShip(ShipCreator.HERO, this.stage,  
								this.stage.stageWidth / 2, this.stage.stageHeight - 20);
			// place alien ships 
			for (var i:Number = 0; i < 5; i++) {
				shipFactory.addShip(ShipCreator.ALIEN, this.stage, 120 + 80 * i, 100);
			}	
		}
	}
}
﻿package {		import flash.geom.*;	import flash.events.*;	import flash.display.*;		public class DashboardView extends ComponentView {				private var guageHand:Sprite;				public function DashboardView(aModel:Object, aController:Object = null) {						super(aModel, aController);						// draw dashboard						// draw circle for guage			graphics.lineStyle(2, model.getColor());			graphics.drawCircle(10, 10, 20);						// draw guage hand as sprite			guageHand = new Sprite();			guageHand.graphics.lineStyle(2, 0x000000);			guageHand.graphics.moveTo(0,0);			guageHand.graphics.lineTo(15,0);			guageHand.x = guageHand.y = 10;			this.addChild(guageHand);		}				override public function update(event:Event = null):void {			// get data from model and update view			this.guageHand.rotation = model.getRotation();		}	}}
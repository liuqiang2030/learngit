﻿package {		import flash.events.*;		public class Controller {				private var model:Object;				public function Controller(oModel:Object) {			this.model = oModel;		}				internal function keyPressHandler(event:KeyboardEvent):void {			model.setKey(event.charCode); // update model		}	}}
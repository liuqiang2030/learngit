﻿package {	public class Controller implements ICompInputHandler {				private var model:Object;				public function Controller(aModel:INewModel) {			this.model = aModel;		}				public function compChangeHandler(index:uint):void {			model.setRegion(index); // update model		}	}}	
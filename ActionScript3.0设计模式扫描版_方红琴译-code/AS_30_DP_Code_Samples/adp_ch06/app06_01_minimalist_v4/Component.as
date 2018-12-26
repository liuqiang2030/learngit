﻿package {		import flash.errors.IllegalOperationError;		// ABSTRACT Class (should be subclassed and not instantiated)	public class Component {				protected var parentNode:Composite = null;				public function add(c:Component):void {			throw new IllegalOperationError("add operation not supported");		}				public function remove(c:Component):void {			throw new IllegalOperationError("remove operation not supported");		}				public function getChild(n:int):Component { 			throw new IllegalOperationError("getChild operation not supported");			return null;		}				// ABSTRACT Method (must be overridden in a subclass)		public function operation():void {		}				public function getParent():Composite {			return this.parentNode;		}				internal function setParent(compositeNode:Composite):void {			this.parentNode = compositeNode;		}				internal function removeParentRef():void { 			this.parentNode = null;		}		internal function getComposite():Composite { 			return null;		}			}}
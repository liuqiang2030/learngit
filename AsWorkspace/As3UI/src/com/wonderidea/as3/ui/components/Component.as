package com.wonderidea.as3.ui.components
{
	import com.wonderidea.focusky.ui.Component;
	
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	/**
	 *  所有组件的基类
	 * @author liuqiang
	 * 2019.4.15
	 */	
	public class Component extends Sprite
	{
		protected var _width:Number = 100;
		protected var _height:Number = 100;
		protected var _tag:int = -1;
		protected var _enabled:Boolean = true;
		
		public static const DRAW:String = "draw";
		
		/**
		 * 构造器
		 * @param parent The parent DisplayObjectContainer on which to add this component.
		 * @param xpos The x position to place this component.
		 * @param ypos The y position to place this component.
		 */
		public function Component(parent:DisplayObjectContainer = null, xpos:Number = 0, ypos:Number =  0)
		{
			move(xpos, ypos);
			init();
			if(parent != null)
			{
				parent.addChild(this);
			}
		}
		
		/**
		 * 初始化组件
		 */
		protected function init():void
		{
			addChildren();
			invalidate();
		}
		
		/**
		 * 添加子集显示列表
		 */
		protected function addChildren():void
		{
			
		}
		
		
		/**
		 * Marks the component to be redrawn on the next frame.
		 */
		public function invalidate():void
		{
			if(this.hasEventListener( Event.ENTER_FRAME ) ) return;
			addEventListener(Event.ENTER_FRAME, onInvalidate);
			//draw();
		}
		
		
		
		
		///////////////////////////////////
		// public methods
		///////////////////////////////////
		
		/**
		 * Utility method to set up usual stage align and scaling.
		 */
		public static function initStage(stage:Stage):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
		}
		
		/**
		 * Moves the component to the specified position.
		 * @param xpos the x position to move the component
		 * @param ypos the y position to move the component
		 */
		public function move(xpos:Number, ypos:Number):void
		{
			x = Math.round(xpos);
			y = Math.round(ypos);
		}
		
		/**
		 * Sets the size of the component.
		 * @param w The width of the component.
		 * @param h The height of the component.
		 */
		public function setSize(w:Number, h:Number):void
		{
			_width = w<0?0:w;
			_height = h<0?0:h;
			dispatchEvent(new Event(Event.RESIZE));
			invalidate();
		}
		
		/**
		 * Abstract draw function.
		 */
		public function draw():void
		{
			dispatchEvent(new Event(Component.DRAW));
		}
		
		
		
		
		///////////////////////////////////
		// event handlers
		///////////////////////////////////
		
		/**
		 * Called one frame after invalidate is called.
		 */
		protected function onInvalidate(event:Event):void
		{
			removeEventListener(Event.ENTER_FRAME, onInvalidate);
			draw();
		}
		
		
		
		
		///////////////////////////////////
		// getter/setters
		///////////////////////////////////
		
		/**
		 * Sets/gets the width of the component.
		 */
		override public function set width(w:Number):void
		{
			_width = w<0?0:w;
			invalidate();
			dispatchEvent(new Event(Event.RESIZE));
		}
		override public function get width():Number
		{
			return _width;
		}
		
		/**
		 * Sets/gets the height of the component.
		 */
		override public function set height(h:Number):void
		{
			_height = h<0?0:h;
			invalidate();
			dispatchEvent(new Event(Event.RESIZE));
		}
		override public function get height():Number
		{
			return _height;
		}
		
		/**
		 * Sets/gets in integer that can identify the component.
		 */
		public function set tag(value:int):void
		{
			_tag = value;
		}
		public function get tag():int
		{
			return _tag;
		}
		
		/**
		 * Overrides the setter for x to always place the component on a whole pixel.
		 */
		override public function set x(value:Number):void
		{
			super.x = Math.round(value);
		}
		
		/**
		 * Overrides the setter for y to always place the component on a whole pixel.
		 */
		override public function set y(value:Number):void
		{
			super.y = Math.round(value);
		}
		
		/**
		 * Sets/gets whether this component is enabled or not.
		 */
		public function set enabled(value:Boolean):void
		{
			_enabled = value;
			setEnabledStyle();
		}
		protected function setEnabledStyle():void{
			mouseEnabled = mouseChildren = _enabled;
			tabEnabled = _enabled;
			alpha = _enabled ? 1.0 : 0.5;
		}
		public function get enabled():Boolean
		{
			return _enabled;
		}
	}
}
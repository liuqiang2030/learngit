﻿package {	//Concrete Observer	class ConcreteObserver implements Observer,DataOut	{		private var dataNow:Array;		private var q1:Number,q2:Number,q3:Number,q4:Number;		public function ConcreteObserver()		{		}		public function outToDesign():Array		{			return dataNow;		}		public function update(q1:Number,q2:Number,q3:Number,q4:Number):void		{			this.q1=q1;			this.q2=q2;			this.q3=q3;			this.q4=q4;			dataNow=new Array(q1,q2,q3,q4);			outToDesign();		}	}}
﻿package {		import flash.display.MovieClip;	/** 	*	Main Class	*	@ purpose:		Document class for movie	*/	public class Main extends MovieClip {		public function Main() {						// create a concrete command			var rec:Receiver = new Receiver();			var concCommand:ICommand = new ConcreteCommand(rec);						// create the timed invoker			var invoker:TimedInvoker = new TimedInvoker();			// assign command to the invoker			invoker.setCommand(concCommand); 			// invoke commands on timer events			invoker.setTimer();		}	}}
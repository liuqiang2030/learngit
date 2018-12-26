﻿package {		import flash.display.MovieClip;	/** 	*	Main Class	*	@ purpose:		Document class for movie	*/	public class Main extends MovieClip {		public function Main() {						// create a concrete command 1			var command1:ICommand = new ConcreteCommand1(new Receiver1());						// create a concrete command 2			var command2:ICommand = new ConcreteCommand2(new Receiver2());						// create a macro command and add commands			var macroCommand:IMacroCommand = new ConcreteMacroCommand();			macroCommand.add(command1);			macroCommand.add(command2);						// create the timed invoker			var invoker:TimedInvoker = new TimedInvoker();			// assign macro command to the invoker			invoker.setCommand(macroCommand); 			// invoke commands on timer events			invoker.setTimer();		}	}}
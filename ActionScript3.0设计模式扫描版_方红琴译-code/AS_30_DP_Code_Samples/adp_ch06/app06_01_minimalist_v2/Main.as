﻿package {
	
	import flash.display.MovieClip;

	/** 
	*	Main Class
	*	@ purpose:		Document class for movie
	*/
	public class Main extends MovieClip {

		public function Main() {
			
			// create root node
			var root:Composite = new Composite("root");  
			
			// add a node to root
			root.add(new Composite("composite 1")); // add node to root as child
			root.getChild(1).add(new Leaf("leaf 1")); // add a child leaf
			root.getChild(1).add(new Leaf("leaf 2")); // add a child leaf
			
			// add another node
			root.add(new Composite("composite 2")); // add node to root as child
			root.getChild(2).add(new Leaf("leaf 3")); // add a child leaf
			root.getChild(2).add(new Leaf("leaf 4")); // add a child leaf
			root.getChild(2).add(new Leaf("leaf 5")); // add a child leaf
			
			// add a child leaf to the root node
			root.add(new Leaf("leaf 6"));
			
			root.operation(); // call operation on root node
		}
	}
}
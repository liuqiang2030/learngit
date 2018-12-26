package {
	
	import flash.display.MovieClip;

	/** 
	*	Main Class
	*	@ purpose:		Document class for movie
	*/
	public class Main extends MovieClip {

		public function Main() {
			
			// create root node
			var root:Composite = new Composite("root");  
			
			// create a node
			var n1:Composite = new Composite("composite 1");
			n1.add(new Leaf("leaf 1")); // add a child leaf
			n1.add(new Leaf("leaf 2")); // add a child leaf
			root.add(n1); // add node to root as child
			
			// create another node
			var n2:Composite = new Composite("composite 2");
			n2.add(new Leaf("leaf 3")); // add a child leaf
			n2.add(new Leaf("leaf 4")); // add a child leaf
			var l5 = new Leaf("leaf 5");
			n2.add(l5); // add a child leaf
			root.add(n2); // add node to root as child
			
			// add a child leaf to the root node
			root.add(new Leaf("leaf 6"));
			
			root.operation(); // call operation on root node
			// n2.operation(); // call operation on child node
			// l6.add(new Leaf("leaf"));
		}
	}
}
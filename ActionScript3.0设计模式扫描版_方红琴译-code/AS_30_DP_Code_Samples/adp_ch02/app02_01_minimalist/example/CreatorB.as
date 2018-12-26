﻿package example {
	
	// Concrete creator B (subclass of Creator)
	public class CreatorB extends Creator {
	
		override protected function factoryMethod():IProduct {
			trace("Creating product 2");
			return new Product2(); // returns concrete product
		}
	}
}
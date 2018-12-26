package printcenters {
	
	import printcenters.*;
	
	// Low Volume Print Center (subclass of PrintCenter)
	public class LowVolPrintCenter extends PrintCenter {
	
		override protected function createPrintjob():IPrintjob { 
			trace("Creating new printjob for the inkjet printer");
			return new InkjetPrintjob();
		}
		
	}
	
}
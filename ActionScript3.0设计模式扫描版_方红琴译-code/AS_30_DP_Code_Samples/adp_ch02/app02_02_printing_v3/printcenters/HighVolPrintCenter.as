package printcenters {
	
	import printcenters.*;
	
	// High Volume Print Center (subclass of PrintCenter)
	public class HighVolPrintCenter extends PrintCenter {
	
		override protected function createPrintjob():IPrintjob { 
			trace("Creating new printjob for the workgropup printer");
			return new WorkgroupPrintjob();
		}
	}
}
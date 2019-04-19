package com.wonderidea.as3.ui.tool
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.text.TextField;

	public class BitmapTool
	{
		public function BitmapTool()
		{
		}
		public static function convertsTextToBitmapData(textfield:TextField):BitmapData{
			var width:int=Math.floor(textfield.width);
			var height:int=Math.floor(textfield.height);
			while(width<1){
				width++;
			}
			while(height<1){
				height++;
			}
			var bmd:BitmapData=new BitmapData(width,height,true,0xffffff);
			bmd.draw(textfield,null,null,null,null,true);
			return bmd;
		}
		
		public static function getScaledBitmapDataByMaxSize(source:DisplayObject,maxSize:Number):BitmapData{
			var bitmapOut:BitmapData;
			try{
                var rx:Number=source.width;
                var ry:Number=source.height;
                var scale:Number=1;
                if(rx>ry){
                    scale=maxSize/rx;
                }else{
                    scale=maxSize/ry;
                }
				if(scale>1)scale = 1;
                bitmapOut = new BitmapData(rx*scale,ry*scale);
                bitmapOut.fillRect(new Rectangle(0,0,bitmapOut.width,bitmapOut.height),0x0088ffff);
                var drawMatrix:Matrix=new Matrix();
                drawMatrix.scale(scale,scale);
                bitmapOut.draw(source,drawMatrix,null,null,null,true);
            }catch(e:Error){
                
            }
            return bitmapOut;
			
        }
	}
}
package  {

	import GZ.Gfx.Object;
	import GZ.File.RcImg;
	import GZ.File.RcAtlas;
	import GZ.Gfx.Root;

	import GZ.Sys.Interface.Interface;
	import GZ.Gfx.Clip;

	import GZ.Base.Math.Math;
	import GZ.Gfx.Clip.Img;
	
	import Demo.TestResult;
	import GZ.Sys.Interface.Context;
	import GZ.Gpu.ShaderModel.AtModel.Attribute_Quad;
	

	
	/**
	 * @author Maeiky
	 */
	public class Wing extends Clip {

	
		
		public var oImg : Img;

		
		public var oTest : Img;
		public var bDancing : Bool = true;
		
		public var oAtlasImg : Img;
		public var oAtlas : RcAtlas;
				
				
		public var nCount : Float= 0;
		public var bSwitch : Bool = false;
		
		//public var sVwwdar : String;
		
		public function Wing( _oParent : Root, _oImg:Img, _nOffset:Float):Void {
			Clip(_oParent, 0.0, 0.0);
			oImg = _oImg;
			nCount = _nOffset;
			oImg.vSize.nHeight = 0.85;
			oImg.vSize.fSetSpeed(100);
		}


		override public function fUpdateParentToChild():Void {
			nCount += 6;
			if(nCount > 300){
				nCount -= 300;
				if(bSwitch){
					bSwitch = false;
					oImg.vSize.nHeight.fTo(0.75);
				}else{
					bSwitch = true;
					oImg.vSize.nHeight.fTo(1.0)
				}
			}
		}
	}
}

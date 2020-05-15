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
	
 	import Demo.Screen.Butterfly.Wing;
	
	/**
	 * @author Maeiky
	 */
	public class DemoButterfly extends Clip {

	
		public var oWing1 : Wing;
		public var oWing2 : Wing;
		public var oWing3 : Wing;
		
		
		public var oImg1 : Img;
		public var oImg2 : Img;
		public var oImg3 : Img;
		
		public var oTest : Img;
		public var bDancing : Bool = true;
		
		public var oAtlasImg : Img;
		public var oAtlas : RcAtlas;
				
				
		public var nCount : UInt= 0;
		
		//public var sVwwdar : String;
		
		public function DemoButterfly( _oParent : Root):Void {
			Clip(_oParent, 0.0, 0.0);
			//Just a test///////////////////
			oAtlas = new RcAtlas(1024);	
			
					
			var _oRc1 : RcImg = new  RcImg("Exe|Rc/Butterfly/Butterfly_1.png"); //Walk0001.png
			oAtlas.fAdd(_oRc1);
			var _oRc2 : RcImg = new  RcImg("Exe|Rc/Butterfly/Butterfly_2.png"); //Walk0001.png
			oAtlas.fAdd(_oRc2);
			var _oRc3 : RcImg = new  RcImg("Exe|Rc/Butterfly/Butterfly_3.png"); //Walk0001.png
			oAtlas.fAdd(_oRc3);
			
			oAtlas.fPack();
			
			

			
			
			oAtlas.fTransposeAll();
			
			if(Context.oItf.bGpuDraw){
				oAtlas.fSetGpuTexLayer(Attribute_Quad.oTexture);
				oAtlas.fGpuLoad();	
				//Debug.fTrace("AtlasLayer: " + Attribute_Quad.oTexSprites.nSlot);
			}
			
		//	oAtlasImg  = new Img(this, 512, 512,  oAtlas, true,0 ,0, false);
			
			
			oImg3  = new Img(this, 400, 400,  _oRc3, false, _oRc3.nWidth/2, _oRc3.nHeight);
			oImg2  = new Img(this, 400, 400,  _oRc2, false, _oRc2.nWidth/2, _oRc2.nHeight);
			oImg1  = new Img(this, 400, 400,  _oRc1, false, _oRc1.nWidth/2, _oRc1.nHeight);
	
			
			oImg1.vColor.nAlpha = 0.90;
			oImg2.vColor.nAlpha = 0.75;
			oImg3.vColor.nAlpha = 0.65;
			
			
			oWing1 = new Wing(this, oImg1, 10);
			oWing2 = new Wing(this, oImg2, 100);
			oWing3 = new Wing(this, oImg3, 200);
			/*
			oImg1 = new Img(this, 400.0, 300.0, "Exe|Rc/Butterfly/Butterfly_1.png", true);
			if(Context.oItf.bGpuDraw){
				oImg1.oRc.fSetGpuTexLayer(Attribute_Quad.oTexture);
				oImg1.oRc.fGpuLoad();
			}
			*/
			

			//oImg1.vColor.nAlpha = 0.75;
			
		}


		override public function fUpdateParentToChild():Void {
		
		}
	}
}

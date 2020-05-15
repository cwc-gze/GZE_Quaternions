package  {


	import GZ.Gfx.Effects.Light;
	import GZ.Gpu.ShaderModel.GzModel.GzShCommun.GzShCommun_Light;
	import GZ.Gfx.Clip;
	
	/**
	 * @author Maeiky
	 */

	public class LigthObj  extends Clip {

	
		public var oLight : Light;
		//public var nIndex : UInt;
			
		public function LigthObj():Void {
			Clip(parent, 400 , -50);
		
			
			
			oLight  = new Light(0, 0, -400);
			oLight.oBoxColor.vColor.nGreen = 1.000;
			oLight.oBoxColor.vColor.nBlue = 1.000;
			oLight.oBoxColor.vColor.nRed = 1.000;
			oLight.oBoxColor.vColor.nAlpha = 180.000;
			
			oLight.oBoxSpecular.vColor.nAlpha = 100;
			oLight.oBoxSpecular.vColor.nGreen = 1.0;
			oLight.oBoxSpecular.vColor.nBlue = 0.5;
			oLight.oBoxSpecular.vColor.nRed = 1.0;
			
			
			//Debug.fTrace("NewLight : " + nIndex);
		//	GzShCommun_Light.fSetDiffuseTranslucidity(-1.0);
		}
		

		override public function fUpdateParentToChild():Void {
		/*
			vPos.nY = vPos.nY + 3;
			if(vPos.nY > 700 + 600){ //600 = Height frame
				vPos.nY = -700;
			}
				
			GzShCommun_Light.fUpdateLight(nIndex, oLight);
			*/
		}





	}
}

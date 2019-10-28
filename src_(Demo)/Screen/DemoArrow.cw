package  {

	import GZ.Gfx.Object;

	import GZ.File.RcImg;
	import GZ.Gfx.Root;

	import GZ.Sys.Interface.Interface;
	import GZ.Gfx.Clip;

	import GZ.Base.Math.Math;
	import GZ.Gfx.Clip.Img;
	
	import Demo.TestResult;

	
	/**
	 * @author Maeiky
	 */
	public class DemoArrow extends Clip {

	
		
		public var oImg : Img;
		public var oImg2 : Img;
		public var oTest : Img;
		public var bDancing : Bool = true;
		
		//public var sVwwdar : String;
		
		public function DemoArrow( _oParent : Root, _oRc: RcImg, _bFriendArrow : Bool = false ):Void {
			Clip(_oParent, 0.0, 0.0);
			//Just a test///////////////////
			
			if(_bFriendArrow == false){
				bDancing = false;
			}
			
	
			//new Img(this, 650.0, 0.0, "Exe|Rc/Arrow.png", true)
			oImg = new Img(this, 650.0, 0.0, _oRc, true); //PoxX = distance of rotation
			if(_bFriendArrow){
				oImg2 =new Img(this, 300.0, 0.0, _oRc, true); //PoxX = distance of rotation
			}
		//	oImg = new Img(this, 650.0, 0.0, E"Arrow.png", false, 220, 82);

	//		hRotateOrder = eRotateOrder.YawPitchRoll;      //By default

			//Container setup
			vPos.nX = oItf.nHalfFrameWidth;
			vPos.nY = oItf.nHalfFrameHeight;
			
			vPos.nZ = 600;
		//	TnX(oItf.nHalfFrameWidth);    //Center to screen X
		//	TnY(oItf.nHalfFrameHeight);   //Center to screen Y
			//TnZ(600);					  //Put the container a little further
			
			//Arrow setup
	//		oImg.hRotateOrder = eRotateOrder.YawPitchRoll;  //By default
	
	
			oImg.vRot.nYaw = Math.nPI/2;
			
			/*
			oImg.MnYaw( Math.nPI/2.0);    //Turn Arrow at 90deg
			oImg.WnAlpha(0.0);
			oImg.TnAlpha(0.85);
			oImg.EnAlpha(200.0);
			*/
			
		}


		override public function fUpdateParentToChild():Void {

			vRot.nYaw= vRot.nYaw + 0.025;
			vRot.nRoll= vRot.nRoll + 0.005;
			
			oImg.vRot.nRoll = oImg.vRot.nRoll + 0.255;
			
			if(bDancing){
				vRot.nPitch = vRot.nPitch  + 0.0005; //Arrow dancing
			}
			
		//	MnYaw(0.025);		 //Container rotate, Arrow inside then follow a circular path on Z axis
		//	MnRoll(0.005);       //Container rotate, Arrow inside then follow a circular path on X axis
		//	oImg.MnRoll(0.255);  //Arrow rotate itself, Rolling on is Yaw rotation (90 deg in setup)
			
		}
	}
}

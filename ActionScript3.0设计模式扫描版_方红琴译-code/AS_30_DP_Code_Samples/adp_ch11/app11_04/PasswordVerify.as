﻿package {	//Concrete Strategy	class PasswordVerify implements StringWork	{		public function stringer(s:String):String		{			var pwv:String=s;			pwv=pwv.toLocaleLowerCase();			if (pwv == "sandlight")			{				return "Welcome to Sandlight";			} else			{				return "Your password is incorrect. Please enter again.";			}		}	}}
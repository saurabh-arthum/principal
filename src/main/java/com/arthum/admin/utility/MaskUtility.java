package com.arthum.admin.utility;

public class MaskUtility {

	public String maskEnd(String value) {
		//ADDED BY GAURAV TO PREVENT FAILURE IN CASE OF NULL VALUE BEING PASSED
		try {
			if(value==null) {
				return "";
			}

			double lendouble = Double.parseDouble(value.length()+"");
			int masklen = (int)Math.ceil(lendouble/2);
//			System.out.println("masklen:::"+masklen);

			String retval = "";

			String maskval = "";
			for(int i=0;i<masklen;i++) {
				maskval=maskval+"X";
			}

			retval = value.substring(0,value.length()-(masklen)) + maskval;
			return retval;
		}catch(Exception e) {
			return "XXXX";
		}
	}


	public String maskStart(String value) {
		//ADDED BY GAURAV TO PREVENT FAILURE IN CASE OF NULL VALUE BEING PASSED
		try {
			if(value==null) {
				return "";
			}

			double lendouble = Double.parseDouble(value.length()+"");
			int masklen= (int) (lendouble-4);

//			System.out.println("masklen:::"+masklen);

			String retval = "";

			String maskval = "";
			for(int i=0;i<masklen;i++) {
				maskval=maskval+"X";
			}
			retval=maskval+value.substring(masklen);
			return retval;
		}
		catch(Exception e )
		{
			return "XXXX";
		}
	}

	public String maskAlternative(String value) {
		//ADDED BY GAURAV TO PREVENT FAILURE IN CASE OF NULL VALUE BEING PASSED
		try {
			if(value==null) {
				return "";
			}

			int len = value.length();

			String retval = "";

			String maskval = "";
			for(int i=0;i<len;i++) {
				if(i%2 == 0) {
					maskval = maskval + value.charAt(i);
				}else {
					maskval = maskval + "X";
				}
			}
			return maskval;
		}
		catch(Exception e )
		{
			return "XXXX";
		}
	}

	public String maskEmailAlternative(String value) {
		//ADDED BY GAURAV TO PREVENT FAILURE IN CASE OF NULL VALUE BEING PASSED
		try {
			if(value==null) {
				return "";
			}

			String emailend = value.substring(value.indexOf("@"), value.length());
//			System.out.println("emailend:::"+emailend);
			value = value.substring(0, value.indexOf("@"));
			int len = value.length();

			String retval = "";

			String maskval = "";
			for(int i=0;i<len;i++) {
				if(i%2 == 0) {
					maskval = maskval + value.charAt(i);
				}else {
					maskval = maskval + "X";
				}
			}
			return maskval+emailend;
		}
		catch(Exception e )
		{
			return "XXXX";
		}
	}

	public String maskEmailEnd(String value) {
		//ADDED BY GAURAV TO PREVENT FAILURE IN CASE OF NULL VALUE BEING PASSED
		try {
			if(value==null) {
				return "";
			}

			String emailend = value.substring(value.indexOf("@"), value.length());
//			System.out.println("emailend:::"+emailend);
			value = value.substring(0, value.indexOf("@"));
			double lendouble = Double.parseDouble(value.length()+"");
			int masklen = (int)Math.ceil(lendouble/2);
//			System.out.println("masklen:::"+masklen);

			String retval = "";

			String maskval = "";
			for(int i=0;i<masklen;i++) {
				maskval=maskval+"X";
			}

			retval = value.substring(0,value.length()-(masklen)) + maskval;
			return retval+emailend;
		}
		catch(Exception e )
		{
			return "XXXX";
		}
	}

	public String maskEmailStartEnd(String value) {

		try {
			if(value==null) {
				return "";
			}
			String emailend;
			if(!value.contains("@"))
			{
				emailend="";
			}else {
				emailend = value.substring(value.indexOf("@"), value.length());
				value = value.substring(0, value.indexOf("@"));
			}
//			System.out.println("emailend:::"+emailend);
			String retval=value.substring(0, 1)+"XXXX"+value.substring(value.length()-1);
			return retval+emailend;
		}
		catch(Exception e )
		{
			return "XXXX";
		}

	}
}

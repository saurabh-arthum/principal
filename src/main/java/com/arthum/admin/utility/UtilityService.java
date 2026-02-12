package com.arthum.admin.utility;

import com.amazonaws.auth.AWSCredentials;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.util.IOUtils;
import org.springframework.stereotype.Service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class UtilityService {

	public String getPaymentMethod() {
		String method="IMPS";
		
		Calendar currentTime=Calendar.getInstance();
		SimpleDateFormat formatDate=new SimpleDateFormat("yyyy-MM-dd");
		
		String todayDate=formatDate.format(currentTime.getTime());

		int holidayCount = 0;
		try {
		}catch(Exception exdate) {}
		
		if(holidayCount==0) {
			Calendar start=Calendar.getInstance();
			Calendar end=Calendar.getInstance();
			try {
				SimpleDateFormat formatFull=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				start.setTime(formatFull.parse(todayDate+" 06:00:00"));
				end.setTime(formatFull.parse(todayDate+" 18:00:00"));
			}catch(Exception e) {}
			
			if(currentTime.after(start) && currentTime.before(end)) {
				method="NEFT";
			}	
		}
		return method;
	}

	public byte[] getFile(String bucketName, String fileName, String fileExt) {
	System.out.println("inside getfile");
	System.out.println("bucketName "+bucketName);
	System.out.println("fileName "+fileName);
	System.out.println("fileExt "+fileExt);
	
	String contentType="application/pdf";
	
	if(fileExt.equalsIgnoreCase("jpg") || fileExt.equalsIgnoreCase("jpeg") || fileExt.equalsIgnoreCase("png")) {
		contentType="image/jpeg";
	}
	if(fileExt.equalsIgnoreCase("xls") || fileExt.equalsIgnoreCase("xlsx")) {
		contentType="application/vnd.ms-excel";
	}
	if(fileExt.equalsIgnoreCase("csv")) {
		contentType="text/csv";
	}
	String accessKey = System.getenv("AWS_ACCESS_KEY");
	String secretKey = System.getenv("AWS_SECRET_KEY");

	AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
	        System.out.println("created credentials "+credentials);
	       
	        AmazonS3 s3client = AmazonS3ClientBuilder
	         .standard()
	         .withCredentials(new AWSStaticCredentialsProvider(credentials))
	         .withRegion(Regions.AP_SOUTH_1)
	         .build();
	       
	        byte[] content = null;
	       
	        try {
	        S3Object s3object = s3client.getObject(bucketName, fileName);
	        S3ObjectInputStream inputStream = s3object.getObjectContent();
	            content = IOUtils.toByteArray(inputStream);
	            System.out.println("File downloaded successfully.");
	            s3object.close();
	        } catch(Exception ex) {
	            System.out.println("IO Error Message= " + ex.getMessage());
	        }
	       
	       return content;
	}
	
	public boolean uploadDocumentS3(File file,String fileName,String fileExt,String bucketLoc) {
		boolean result = false;
		String accessKey = System.getenv("AWS_ACCESS_KEY");
		String secretKey = System.getenv("AWS_SECRET_KEY");
		try {
			AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
//			System.out.println("uploadDocumentS3 created credentials::"+credentials);

			AmazonS3 s3client = AmazonS3ClientBuilder
					.standard()
					.withCredentials(new AWSStaticCredentialsProvider(credentials))
					.withRegion(Regions.AP_SOUTH_1)
					.build();

			System.out.println("uploadDocumentS3 created s3client::"+s3client);

			if(s3client.doesBucketExist(bucketLoc)==false) {
				System.out.println("uploadDocumentS3 bucket does not exist");
				s3client.createBucket(bucketLoc);
				System.out.println("uploadDocumentS3 created bucket");
			}

			s3client.putObject(bucketLoc, fileName, file);
			System.out.println("uploadDocumentS3 object put in bucket");
			result = true;
		}
		catch(Exception e)
		{
			System.out.println("uploadDocumentS3 exception :::"+e);
		}
		return result;
	}

	public String convertNumToWord(long num) {
		  int len;
		  long q=0, r=0;
	      String ltr = " ";
	      String Str = "Rupees";
	    
	      

	      if (num <= 0) System.out.println("Zero or Negative number not for conversion");

	      while (num>0)
	      {

	         len = numberCount(num);

	       

	         switch (len)

	         {
	              case 9:
	              case 8:
	                      q=num/10000000;
	                      r=num%10000000;
	                      ltr = twonum(q);
	                      Str = Str+ltr+digit[4];
	                      num = r;
	                      break;

	              case 7:
	              case 6:
	                      q=num/100000;
	                      r=num%100000;
	                      ltr = twonum(q);
	                      Str = Str+ltr+digit[3];
	                      num = r;
	                      break;

	              case 5:
	              case 4:

	                       q=num/1000;
	                       r=num%1000;
	                       ltr = twonum(q);
	                       Str= Str+ltr+digit[2];
	                       num = r;
	                       break;

	              case 3:


	                        if (len == 3)
	                            r = num;
	                        ltr = threenum(r);
	                        Str = Str + ltr;
	                        num = 0;
	                        break;

	              case 2:

	                       ltr = twonum(num);
	                       Str = Str + ltr;
	                       num=0;
	                       break;

	              case 1:
	                       Str = Str + unitdo[(int) num];
	                       num=0;
	                       break;
	              default:

	                      num=0;
	                      System.out.println("Exceeding Crore....No conversion");
	                      Str="please provide value less than 100 crore";
	                      break;


	          }
	                      if (num==0)
	                      Str=Str+" Only";
	        }
		System.out.println(Str);
		return Str;
	}

	private int numberCount(long num) {
	    int cnt=0;
	    long r;

	    while (num>0)
	    {
	      r = num%10;
	      cnt++;
	      num = num / 10;
	    }

	      return cnt;
	}

	private String twonum(long numq)
	{
	     long numr, nq;
	     String ltr="";

	     nq = numq / 10;
	     numr = numq % 10;

	     if (numq>19)
	       {
	     ltr=ltr+tens[(int) nq]+unitdo[(int) numr];
	       }
	     else
	       {
	     ltr = ltr+unitdo[(int) numq];
	       }

	     return ltr;
	}
	private String threenum(long numq)
	{
	    long numr, nq;
	    String ltr = "";

	    nq = numq / 100;
	    numr = numq % 100;

	    if (numr == 0)
	     {
	     ltr = ltr + unitdo[(int) nq]+digit[1];
	      }
	    else
	     {
	     ltr = ltr +unitdo[(int) nq]+digit[1]+" and"+twonum(numr);
	     }
	    return ltr;

	}
	
	private String[] unitdo ={"", " One", " Two", " Three", " Four", " Five",
	        " Six", " Seven", " Eight", " Nine", " Ten", " Eleven", " Twelve",
	        " Thirteen", " Fourteen", " Fifteen",  " Sixteen", " Seventeen", 
	        " Eighteen", " Nineteen"};
	private String[] tens =  {"", "Ten", " Twenty", " Thirty", " Forty", " Fifty",
	        " Sixty", " Seventy", " Eighty"," Ninety"};
	private String[] digit = {"", " Hundred", " Thousand", " Lakh", " Crore"};


}

package com.arthum.admin.utility;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONObject;

public class DateUtility {

	
	public static JSONObject toGetMonthYearAndDate()
	{
		JSONObject response=new JSONObject();
		
		Date dt = new Date();
		LocalDate localDate = dt.toInstant().atZone(ZoneId.systemDefault()).toLocalDate(); 
		int month = localDate.getMonthValue();
		int year=localDate.getYear();
		Month months=localDate.getMonth();
		int dates=localDate.getDayOfMonth();
		DayOfWeek day=localDate.getDayOfWeek();
		System.out.println(dates+"    "+month+"   "+year+"   "+months+"    "+day);
		response.put("date",dates);
		response.put("monthNumber",month);
		response.put("monthName",months);
		response.put("year",year);
		response.put("dayOfWeek",day);

		return response;
	}

	public static JSONObject getFirstLastDatePreviousMonth()
	{
		JSONObject response=new JSONObject();
		
		Date today = new Date();  
	    Calendar calendar = Calendar.getInstance();  
	    calendar.setTime(today);  
	    calendar.set(Calendar.DAY_OF_MONTH, 1);  
	    calendar.add(Calendar.DATE, -1);  
	    Date lastDayOfMonth = calendar.getTime();
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendr = Calendar.getInstance();  
		calendr.setTime(today);  
		calendr.set(Calendar.DAY_OF_MONTH, 1);  
		calendr.add(Calendar.MONTH, -1);  
	    Date firstDayOfMonth = calendr.getTime();
		String endDate=sdf.format(lastDayOfMonth);
		String startDate=sdf.format(firstDayOfMonth);
		response.put("firstDate", startDate);
		response.put("lastDate", endDate);
		
		return response;
	}
	
	public static JSONObject getFirstLastDateofMonth(int year,int month)
	{
		JSONObject response=new JSONObject();
		
		
	    Calendar calendar = Calendar.getInstance();
	    calendar.set(year, month, 1);  
	    calendar.add(Calendar.DATE, -1);  
	    Date lastDayOfMonth = calendar.getTime();
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String endDate=sdf.format(lastDayOfMonth);
		calendar.set(Calendar.DAY_OF_MONTH,1);
		Date firstDayOfMonth=calendar.getTime();
		String startDate=sdf.format(firstDayOfMonth);
		LocalDate localDate = firstDayOfMonth.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		Month months=localDate.getMonth();
		int firstDay=firstDayOfMonth.getDate();
		int lastDay=lastDayOfMonth.getDate();
		calendar.add(Calendar.MONTH, -1);
		Date firstDayOfPreviousMonth = calendar.getTime();
		LocalDate pmlocalDate = firstDayOfPreviousMonth.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		Month previousMonths=pmlocalDate.getMonth();
		int prevYear=pmlocalDate.getYear();
		response.put("firstDate", startDate);
		response.put("lastDate", endDate);
		response.put("firstDay", firstDay);
		response.put("lastDay", lastDay);
		response.put("monthName", months.name());
		response.put("prevMonthName", previousMonths.name());
		response.put("prevYear", prevYear);
		
		
		return response;
	}
	
	public static String getCurrentDateByFormat(String dateformat) {
		String response="";
		
	    Calendar calendar = Calendar.getInstance();
	    Date currentdate=calendar.getTime();
//		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat sdf = new SimpleDateFormat(dateformat);
		response=sdf.format(currentdate);
		
		return response;
	}
	
}

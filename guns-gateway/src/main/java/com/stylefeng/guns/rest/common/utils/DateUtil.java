package com.stylefeng.guns.rest.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;

/**
 * @author zhouzk
 * @time 2013-03-04
 */
public abstract class DateUtil {
	/**
	 * desc：Date转换为String
	 * 
	 * @param date
	 *            需要转换的date
	 * @param format
	 *            格式字符串
	 * @return 返回按照格式转化后的字符串 DateUtil.toString(new Date(),"yyyy-MM-dd HH:mm:ss
	 *         SSS")
	 */
	public static String toString(Date date, String format) {
		if (date != null) {
			SimpleDateFormat dateformatter = new SimpleDateFormat(format);
			String dateString = dateformatter.format(date);
			return dateString;
		} else {
			return null;
		}
	}

	/**
	 * desc：String时间转换为格式化Date时间
	 * 
	 * @paramdate
	 *            需要转换的String
	 * @param format
	 *            格式字符串
	 * @return 返回按照格式转化后的Date 如：DateUtil.getDate("2007-11-01","yyyy-MM-dd")
	 * @throws ParseException
	 */
	public static Date getDate(String dateStr, String format) throws ParseException {
		SimpleDateFormat dateformatter = new SimpleDateFormat(format);
		return dateformatter.parse(dateStr);
	}

	/**
	 * desc：Date时间转换为格式化后的Date时间
	 * 
	 * @param date
	 *            需要转换的date
	 * @param format
	 *            格式字符串
	 * @return 返回按照格式转化后的Date 如：DateUtil.getDate(new Date(),"yyyy-MM-dd")
	 */
	public static Date getDate(Date date, String format) throws ParseException {
		if (date == null) {
			return null;
		}
		SimpleDateFormat dateformatter = new SimpleDateFormat(format);
		return dateformatter.parse(dateformatter.format(date));
	}

	/**
	 * 获取前m天的日期
	 * 
	 * @param nowDate
	 * @param m
	 * @return
	 */
	public static Date getBeforDay(Date nowDate, int m) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(nowDate);
		calendar.add(Calendar.DAY_OF_MONTH, -m);
		return calendar.getTime();
	}

	/**
	 * 得到指定月的最后一天的日期
	 */
	public static Date getMonthLastDay(int year, int month) {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.YEAR, year);
		calendar.set(Calendar.MONTH, month);
		calendar.set(Calendar.DAY_OF_MONTH, 0);// 把日期设置为当月第一天
		return calendar.getTime();
	}

	/**
	 * 得到指定月的天数
	 */
	public static int getMonthLastDays(int year, int month) {
		Calendar a = Calendar.getInstance();
		a.set(Calendar.YEAR, year);
		a.set(Calendar.MONTH, month - 1);
		a.set(Calendar.DATE, 1);// 把日期设置为当月第一天
		a.roll(Calendar.DATE, -1);// 日期回滚一天，也就是最后一天
		int maxDate = a.get(Calendar.DATE);
		return maxDate;
	}

	/**
	 * 取得当月天数
	 */
	public static int getCurrentMonthLastDays() {
		Calendar a = Calendar.getInstance();
		a.set(Calendar.DATE, 1);// 把日期设置为当月第一天
		a.roll(Calendar.DATE, -1);// 日期回滚一天，也就是最后一天
		int maxDate = a.get(Calendar.DATE);
		return maxDate;
	}

	/**
	 * 判断当前日期是星期几
	 * 
	 * @param pTime
	 *            修要判断的时间
	 * @return dayForWeek 判断结果
	 */
	public static int dayForWeek(String pTime) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			return dayForWeek(format.parse(pTime));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	/**
	 * 判断当前日期是星期几
	 * 
	 * @param pTime
	 *            修要判断的时间
	 * @return dayForWeek 判断结果
	 */
	public static int dayForWeek(Date pTime) {
		try {
			Calendar c = Calendar.getInstance();
			c.setTime(pTime);
			int dayForWeek = 0;
			if (c.get(Calendar.DAY_OF_WEEK) == 1) {
				dayForWeek = 7;
			} else {
				dayForWeek = c.get(Calendar.DAY_OF_WEEK) - 1;
			}
			return dayForWeek;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	/**
	 * 返回本周第N天的日期（按中国周算）
	 * 
	 * @throws ParseException
	 */
	public static Date getWeekByDate(Date date, int week) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		if (c.get(Calendar.DAY_OF_WEEK) == 1) {
			c.roll(Calendar.DATE, -1);// 日期回滚一天，也就是最后一天
			c.setTime(c.getTime());
		}
		// c.set(Calendar.DAY_OF_WEEK, Calendar.TUESDAY);// 把日期设置为当月第一天
		c.set(Calendar.DAY_OF_WEEK, week);// 把日期设置为当月第一天
		return c.getTime();
	}

	/**
	 * 返回 yyyy年m月第n周（周二为一周第一天），如：2016年01月第1周。
	 * 
	 * @param date
	 * @return
	 */
	public static String getChineseInfo(Date date) {
		Date tuesday = getWeekByDate(date, Calendar.TUESDAY);// 获取周二
		Calendar c = Calendar.getInstance();
		c.setTime(tuesday);
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int day = c.get(Calendar.DATE);
		int num = 0;
		for (int i = 1; i <= day; i++) {
			String dd = String.valueOf(i);
			if (i < 10) {
				dd = "0" + i;
			}
			int week = dayForWeek(year + "-" + month + "-" + dd);
			if (week == (Calendar.TUESDAY - 1)) {
				num++;
			}
		}
		return year + "年" + month + "月第" + num + "周";
	}

	/**
	 * 返回 201601_1 的中文格式，2016年01月第1周
	 * 
	 * @param statCycle
	 *            201602_1 or 201602
	 * @return
	 */
	public static String getChineseInfo(String statCycle) {
		String year = statCycle.substring(0, 4);
		String monthStr = "0";
		String weekDesc = "";
		int endIndex = statCycle.indexOf('_');
		if (endIndex > -1) {
			monthStr = statCycle.substring(4, endIndex);
			String num = statCycle.substring(7);
			weekDesc = "第" + num + "周";
		} else {
			monthStr = statCycle.substring(4);
		}
		int month = Integer.parseInt(monthStr);
		return year + "年" + month + "月" + weekDesc;
	}

	/**
	 * 返回 yyyyMM_w 的时间格式（周二为一周第一天），如：201601_1
	 * 
	 * @param date
	 * @return
	 */
	public static String getEnglishInfo(Date date) {
		Date tuesday = getWeekByDate(date, Calendar.TUESDAY);// 获取周二
		Calendar c = Calendar.getInstance();
		c.setTime(tuesday);
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int day = c.get(Calendar.DATE);
		int num = 0;
		for (int i = 1; i <= day; i++) {
			String dd = String.valueOf(i);
			if (i < 10) {
				dd = "0" + i;
			}
			int week = dayForWeek(year + "-" + month + "-" + dd);
			if (week == (Calendar.TUESDAY - 1)) {
				num++;
			}
		}
		return year + "" + (month < 10 ? "0" : "") + month + "_" + num;
	}

	/**
	 * 返回上个月 yyyy年mm月，如：2016年01月
	 * 
	 * @param date
	 * @return
	 */
	public static String getChineseMonthInfo(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH);
		if (month == 0) {
			year = year - 1;
			month = 12;
		}
		return year + "年" + month + "月";
	}

	/**
	 * 返回上个月 yyyyMM 的时间格式，如：201601
	 * 
	 * @param date
	 * @return
	 */
	public static String getEnglishMonthInfo(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH);
		if (month == 0) {
			year = year - 1;
			month = 12;
		}
		return year + "" + (month < 10 ? "0" : "") + month;
	}

	/**
	 * 判断当前时间是否在 周二8点 ~ 周六的0点
	 */
	public static boolean isWorkDay(Date date) {
		// 获取周二上午8点
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 8);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		Date tuesday = getWeekByDate(calendar.getTime(), Calendar.TUESDAY); // 周二

		// 获取周六的0点
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		Date saturday = getWeekByDate(calendar.getTime(), Calendar.SATURDAY); // 周六

		// 判断
		long time = date.getTime();
		if (time >= tuesday.getTime() && time < saturday.getTime()) {
			return true;
		}
		return false;
	}

	/**
	 * 日期格式字符串转换成时间戳
	 * 
	 * @paramdate
	 *            字符串日期
	 * @param format
	 *            如：yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String date2TimeStamp(String date_str, String format) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			return String.valueOf(sdf.parse(date_str).getTime() / 1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public static void main(String[] args) throws ParseException {
		// String str = getChineseInfo(new Date());
		// String str1 = getEnglishInfo(new Date());
		// System.out.println(str);
		// System.out.println(str1);
		// // 月
		// Date date = new Date();
		// String statCycle = DateUtil.getEnglishMonthInfo(date);
		// System.out.println(statCycle);
		// String monthInfo = DateUtil.getChineseMonthInfo(date);
		// System.out.println(monthInfo);
		/*
		 * System.out.println("2017-10-20:"+DateUtil.getUTCTime("2017-10-20",
		 * "yyyy-mm-dd"));
		 * System.out.println("2017-12-20:"+DateUtil.getUTCTime("2017-12-20",
		 * "yyyy-mm-dd"));
		 * System.out.println("2018-12-20:"+DateUtil.getUTCTime("2018-12-20",
		 * "yyyy-mm-dd"));
		 * 
		 * // long a = Long.parseLong("1510156800000");
		 * 
		 * 
		 * @param smdate 当前日 to
		 * 
		 * @param bdate 到期日 from 截止日
		 * 
		 * @return 相差天数
		 * 
		 */

		/*
		 * Long endTime= new Date().getTime(); //当前日 Long nowTime=
		 * Long.parseLong("1502748800000");//截止日
		 * System.out.println("nowTime:"+nowTime);
		 * System.out.println("endTime:"+endTime); int daysRemaining = 0;
		 * if(endTime > nowTime){ String dateValue =
		 * String.valueOf(((endTime-nowTime ) / (1000 * 60 * 60 * 24) - 1));
		 * daysRemaining = Integer.parseInt(dateValue); }else{ String dateValue
		 * = String.valueOf(((endTime-nowTime ) / (1000 * 60 * 60 * 24) + 1));
		 * daysRemaining = Integer.parseInt(dateValue); } //
		 * resultMap.put("daysRemaining", daysRemaining);
		 * 
		 * System.out.println("daysRemaining:"+daysRemaining); String dateValue1
		 * = String.valueOf(((Long.parseLong("10000000000")) / (1000 * 60 * 60 *
		 * 24) + 1)); String dateValue2 =
		 * String.valueOf(((Long.parseLong("12469750529")) / (1000 * 60 * 60 *
		 * 24) + 1)); System.out.println("第一次:"+dateValue1);
		 * System.out.println("第二次:"+dateValue2);
		 */
		// int daysRemaining = -Integer.parseInt("22");
		// System.out.println(Integer.toString(daysRemaining));
		//
		// String s = "2017-11-17";
		// String a = "2017-12-17";
		// System.out.println(daysBetween(s, a));
		//
		// long time = 1517414400000L;
		// long tttt = 1519747200000L;
		// System.out.println(getBeijingTime(time, "yyyy-MM-dd"));
		// System.out.println(getBeijingTime(tttt, "yyyy-MM-dd"));

		/*
		 * String current = String.valueOf(System.currentTimeMillis());
		 * System.out.println(isValidDate(current));
		 */
		
		System.out.println("  东八区："+getTimeOfEastEight());
		System.out.println("格林威治：" + System.currentTimeMillis());
		// int a = dayBetween(System.currentTimeMillis(),
		// Long.valueOf("1522425600000") );
		// System.out.println(a);
	}

	/**
	 * 获取strYYYYMMDD为第N周
	 */
	public static int getWeekByDate(String strYYYYMMDD) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse(strYYYYMMDD);
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(date);
			int weekOfMonth = calendar.get(Calendar.WEEK_OF_MONTH);
			return weekOfMonth;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return -1;
	}

	/**
	 * 判断用户输入的是否是时间
	 * 
	 * @param str
	 *            时间
	 * @author WangBin
	 */
	public static boolean isValidDate(String str) {
		boolean convertSuccess = true;
		// 指定日期格式为四位年/两位月份/两位日期，注意yyyy/MM/dd区分大小写；
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			// 设置lenient为false.
			// 否则SimpleDateFormat会比较宽松地验证日期，比如2007/02/29会被接受，并转换成2007/03/01
			format.setLenient(false);
			format.parse(str);
		} catch (ParseException e) {
			// e.printStackTrace();
			// 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
			convertSuccess = false;
		}
		return convertSuccess;
	}

	/**
	 * 计算两个日期之间相差的天数
	 * 
	 * @param smdate
	 *            当前日 to
	 * @param bdate
	 *            到期日 from
	 * @return 相差天数
	 * @throws ParseException
	 * @author WangBin
	 */
	public static int daysBetween(String smdate, String bdate) throws ParseException {

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		int timeDifference = 0;
		long to = df.parse(smdate).getTime();
		long from = df.parse(bdate).getTime();
		String dateValue = String.valueOf(((from - to) / (1000 * 60 * 60 * 24)));
		timeDifference = Integer.parseInt(dateValue);
		return timeDifference;
	}

	/**
	 * @Description :获取两个utc时间的差值
	 * @date 创建时间 2017-11-17下午1:57:42
	 * @param currentTime
	 *            当前时间
	 * @param endTime
	 *            到期日
	 * @return int
	 * @author WangBin
	 */
	public static int dayBetween(long currentTime, long endTime) throws ParseException {

		int timeDifference;
		String currDate = getBeijingTime(currentTime, "yyyy-MM-dd");
		String endDate = getBeijingTime(endTime, "yyyy-MM-dd");
		currentTime = getUTCTime(currDate, "yyyy-MM-dd");
		endTime = getUTCTime(endDate, "yyyy-MM-dd");
		String dateValue = String.valueOf(((endTime - currentTime) / (1000 * 60 * 60 * 24)));
		timeDifference = Integer.parseInt(dateValue);
		return timeDifference;
	}

	/**
	 * 取北京时间
	 * 
	 * @param currentTime
	 *            utc时间
	 * @param rule
	 *            日期格式
	 * @return
	 * @author WangBin
	 */
	public static String getBeijingTime(long currentTime, String rule) {
		return getFormatedDateString(8, currentTime, rule);
	}

	/**
	 * 取班加罗尔时间
	 * 
	 * @param currentTime
	 *            utc时间
	 * @param rule
	 *            日期格式
	 * @return
	 * @author WangBin
	 */
	public static String getBangaloreTime(long currentTime, String rule) {
		return getFormatedDateString(5.5f, currentTime, rule);
	}

	/**
	 * 取纽约时间
	 * 
	 * @param currentTime
	 *            utc时间
	 * @param rule
	 *            日期格式
	 * @return
	 * @author WangBin
	 */
	public static String getNewyorkTime(long currentTime, String rule) {
		return getFormatedDateString(-5, currentTime, rule);
	}

	/**
	 * 此函数非原创，从网上搜索而来，timeZoneOffset原为int类型，为班加罗尔调整成float类型
	 * timeZoneOffset表示时区，如中国一般使用东八区，因此timeZoneOffset就是8
	 * 
	 * @param timeZoneOffset
	 * @param currentTime
	 *            utc时间
	 * @param rule
	 *            日期格式
	 * @return
	 * @author WangBin
	 */
	public static String getFormatedDateString(float timeZoneOffset, long currentTime, String rule) {
		if (timeZoneOffset > 13 || timeZoneOffset < -12) {
			timeZoneOffset = 0;
		}

		int newTime = (int) (timeZoneOffset * 60 * 60 * 1000);
		TimeZone timeZone;
		String[] ids = TimeZone.getAvailableIDs(newTime);
		if (ids.length == 0) {
			timeZone = TimeZone.getDefault();
		} else {
			timeZone = new SimpleTimeZone(newTime, ids[0]);
		}

		SimpleDateFormat sdf = new SimpleDateFormat(rule);
		sdf.setTimeZone(timeZone);
		return sdf.format(new Date(currentTime));
	}

	/**
	 * 获取utc时间
	 * 
	 * @param date
	 *            时间
	 * @param rule
	 *            日期格式
	 * @throws ParseException
	 * @author WangBin
	 */
	public static Long getUTCTime(String date, String rule) throws ParseException {

		Long utcTime = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(rule);
			Date d = sdf.parse(date);
			utcTime = d.getTime();
		} catch (Exception e) {
			return utcTime;
		}
		return utcTime;
	}

	
	
	//获取东八区北京时间
	public static Long getTimeOfEastEight(){ 
		Long utcTime = null;
		TimeZone timeZone = TimeZone.getTimeZone("GMT+08:00"); 
		Date currentDate = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		df.setTimeZone(timeZone);
		try {
			utcTime = getUTCTime(df.format(currentDate), "yyyyMMddHHmmss");
		} catch (ParseException e) {
			return utcTime;
		}
		return utcTime;
	}
	
	
	
}

package org.ocpsoft.prettytime.i18n;

import java.util.ListResourceBundle;

public class Resources
  extends ListResourceBundle
{
  private static final Object[][] a;
  
  static
  {
    Object[] arrayOfObject1 = { "CenturyPattern", "%n %u" };
    Object[] arrayOfObject2 = { "CenturyFuturePrefix", "" };
    Object[] arrayOfObject3 = { "CenturyFutureSuffix", " from now" };
    Object[] arrayOfObject4 = { "CenturyPastPrefix", "" };
    Object[] arrayOfObject5 = { "CenturyPastSuffix", " ago" };
    Object[] arrayOfObject6 = { "CenturySingularName", "century" };
    Object[] arrayOfObject7 = { "CenturyPluralName", "centuries" };
    Object[] arrayOfObject8 = { "DayPattern", "%n %u" };
    Object[] arrayOfObject9 = { "DayFuturePrefix", "" };
    Object[] arrayOfObject10 = { "DayFutureSuffix", " from now" };
    Object[] arrayOfObject11 = { "DayPastPrefix", "" };
    Object[] arrayOfObject12 = { "DayPastSuffix", " ago" };
    Object[] arrayOfObject13 = { "DaySingularName", "day" };
    Object[] arrayOfObject14 = { "DayPluralName", "days" };
    Object[] arrayOfObject15 = { "DecadePattern", "%n %u" };
    Object[] arrayOfObject16 = { "DecadeFuturePrefix", "" };
    Object[] arrayOfObject17 = { "DecadeFutureSuffix", " from now" };
    Object[] arrayOfObject18 = { "DecadePastPrefix", "" };
    Object[] arrayOfObject19 = { "DecadePastSuffix", " ago" };
    Object[] arrayOfObject20 = { "DecadeSingularName", "decade" };
    Object[] arrayOfObject21 = { "DecadePluralName", "decades" };
    Object[] arrayOfObject22 = { "HourPattern", "%n %u" };
    Object[] arrayOfObject23 = { "HourFuturePrefix", "" };
    Object[] arrayOfObject24 = { "HourFutureSuffix", " from now" };
    Object[] arrayOfObject25 = { "HourPastPrefix", "" };
    Object[] arrayOfObject26 = { "HourPastSuffix", " ago" };
    Object[] arrayOfObject27 = { "HourSingularName", "hour" };
    Object[] arrayOfObject28 = { "HourPluralName", "hours" };
    Object[] arrayOfObject29 = { "JustNowPattern", "%u" };
    Object[] arrayOfObject30 = { "JustNowFuturePrefix", "" };
    Object[] arrayOfObject31 = { "JustNowFutureSuffix", "moments from now" };
    Object[] arrayOfObject32 = { "JustNowPastPrefix", "moments ago" };
    Object[] arrayOfObject33 = { "JustNowPastSuffix", "" };
    Object[] arrayOfObject34 = { "JustNowSingularName", "" };
    Object[] arrayOfObject35 = { "JustNowPluralName", "" };
    Object[] arrayOfObject36 = { "MillenniumPattern", "%n %u" };
    Object[] arrayOfObject37 = { "MillenniumFuturePrefix", "" };
    Object[] arrayOfObject38 = { "MillenniumFutureSuffix", " from now" };
    Object[] arrayOfObject39 = { "MillenniumPastPrefix", "" };
    Object[] arrayOfObject40 = { "MillenniumPastSuffix", " ago" };
    Object[] arrayOfObject41 = { "MillenniumSingularName", "millennium" };
    Object[] arrayOfObject42 = { "MillenniumPluralName", "millennia" };
    Object[] arrayOfObject43 = { "MillisecondPattern", "%n %u" };
    Object[] arrayOfObject44 = { "MillisecondFuturePrefix", "" };
    Object[] arrayOfObject45 = { "MillisecondFutureSuffix", " from now" };
    Object[] arrayOfObject46 = { "MillisecondPastPrefix", "" };
    Object[] arrayOfObject47 = { "MillisecondPastSuffix", " ago" };
    Object[] arrayOfObject48 = { "MillisecondSingularName", "millisecond" };
    Object[] arrayOfObject49 = { "MillisecondPluralName", "milliseconds" };
    Object[] arrayOfObject50 = { "MinutePattern", "%n %u" };
    Object[] arrayOfObject51 = { "MinuteFuturePrefix", "" };
    Object[] arrayOfObject52 = { "MinuteFutureSuffix", " from now" };
    Object[] arrayOfObject53 = { "MinutePastPrefix", "" };
    Object[] arrayOfObject54 = { "MinutePastSuffix", " ago" };
    Object[] arrayOfObject55 = { "MinuteSingularName", "minute" };
    Object[] arrayOfObject56 = { "MinutePluralName", "minutes" };
    Object[] arrayOfObject57 = { "MonthPattern", "%n %u" };
    Object[] arrayOfObject58 = { "MonthFuturePrefix", "" };
    Object[] arrayOfObject59 = { "MonthFutureSuffix", " from now" };
    Object[] arrayOfObject60 = { "MonthPastPrefix", "" };
    Object[] arrayOfObject61 = { "MonthPastSuffix", " ago" };
    Object[] arrayOfObject62 = { "MonthSingularName", "month" };
    Object[] arrayOfObject63 = { "MonthPluralName", "months" };
    Object[] arrayOfObject64 = { "SecondPattern", "%n %u" };
    Object[] arrayOfObject65 = { "SecondFuturePrefix", "" };
    Object[] arrayOfObject66 = { "SecondFutureSuffix", " from now" };
    Object[] arrayOfObject67 = { "SecondPastPrefix", "" };
    Object[] arrayOfObject68 = { "SecondPastSuffix", " ago" };
    Object[] arrayOfObject69 = { "SecondSingularName", "second" };
    Object[] arrayOfObject70 = { "SecondPluralName", "seconds" };
    Object[] arrayOfObject71 = { "WeekPattern", "%n %u" };
    Object[] arrayOfObject72 = { "WeekFuturePrefix", "" };
    Object[] arrayOfObject73 = { "WeekFutureSuffix", " from now" };
    Object[] arrayOfObject74 = { "WeekPastPrefix", "" };
    Object[] arrayOfObject75 = { "WeekPastSuffix", " ago" };
    Object[] arrayOfObject76 = { "WeekSingularName", "week" };
    Object[] arrayOfObject77 = { "WeekPluralName", "weeks" };
    Object[] arrayOfObject78 = { "YearPattern", "%n %u" };
    Object[] arrayOfObject79 = { "YearFuturePrefix", "" };
    Object[] arrayOfObject80 = { "YearFutureSuffix", " from now" };
    Object[] arrayOfObject81 = { "YearPastPrefix", "" };
    Object[] arrayOfObject82 = { "YearSingularName", "year" };
    Object[] arrayOfObject83 = { "YearPluralName", "years" };
    Object[] arrayOfObject84 = { "AbstractTimeUnitPattern", "" };
    Object[] arrayOfObject85 = { "AbstractTimeUnitFuturePrefix", "" };
    Object[] arrayOfObject86 = { "AbstractTimeUnitFutureSuffix", "" };
    Object[] arrayOfObject87 = { "AbstractTimeUnitPastPrefix", "" };
    Object[] arrayOfObject88 = { "AbstractTimeUnitPastSuffix", "" };
    Object[] arrayOfObject89 = { "AbstractTimeUnitSingularName", "" };
    Object[] arrayOfObject90 = { "AbstractTimeUnitPluralName", "" };
    a = new Object[][] { arrayOfObject1, arrayOfObject2, arrayOfObject3, arrayOfObject4, arrayOfObject5, arrayOfObject6, arrayOfObject7, arrayOfObject8, arrayOfObject9, arrayOfObject10, arrayOfObject11, arrayOfObject12, arrayOfObject13, arrayOfObject14, arrayOfObject15, arrayOfObject16, arrayOfObject17, arrayOfObject18, arrayOfObject19, arrayOfObject20, arrayOfObject21, arrayOfObject22, arrayOfObject23, arrayOfObject24, arrayOfObject25, arrayOfObject26, arrayOfObject27, arrayOfObject28, arrayOfObject29, arrayOfObject30, arrayOfObject31, arrayOfObject32, arrayOfObject33, arrayOfObject34, arrayOfObject35, arrayOfObject36, arrayOfObject37, arrayOfObject38, arrayOfObject39, arrayOfObject40, arrayOfObject41, arrayOfObject42, arrayOfObject43, arrayOfObject44, arrayOfObject45, arrayOfObject46, arrayOfObject47, arrayOfObject48, arrayOfObject49, arrayOfObject50, arrayOfObject51, arrayOfObject52, arrayOfObject53, arrayOfObject54, arrayOfObject55, arrayOfObject56, arrayOfObject57, arrayOfObject58, arrayOfObject59, arrayOfObject60, arrayOfObject61, arrayOfObject62, arrayOfObject63, arrayOfObject64, arrayOfObject65, arrayOfObject66, arrayOfObject67, arrayOfObject68, arrayOfObject69, arrayOfObject70, arrayOfObject71, arrayOfObject72, arrayOfObject73, arrayOfObject74, arrayOfObject75, arrayOfObject76, arrayOfObject77, arrayOfObject78, arrayOfObject79, arrayOfObject80, arrayOfObject81, { "YearPastSuffix", " ago" }, arrayOfObject82, arrayOfObject83, arrayOfObject84, arrayOfObject85, arrayOfObject86, arrayOfObject87, arrayOfObject88, arrayOfObject89, arrayOfObject90 };
  }
  
  public Object[][] getContents()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     org.ocpsoft.prettytime.i18n.Resources
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
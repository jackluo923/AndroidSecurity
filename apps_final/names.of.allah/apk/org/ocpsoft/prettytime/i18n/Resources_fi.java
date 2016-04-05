package org.ocpsoft.prettytime.i18n;

import java.util.ListResourceBundle;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;

public class Resources_fi
  extends ListResourceBundle
{
  private static Object[][] a;
  private volatile ConcurrentMap<TimeUnit, TimeFormat> b = new ConcurrentHashMap();
  
  static
  {
    Object[] arrayOfObject1 = { "JustNowPastSuffix", "sitten" };
    Object[] arrayOfObject2 = { "WeekFutureSingularName", "viikon" };
    Object[] arrayOfObject3 = { "MonthPastPluralName", "kuukautta" };
    Object[] arrayOfObject4 = { "YearPattern", "%u" };
    Object[] arrayOfObject5 = { "CenturyPluralPattern", "%n %u" };
    a = new Object[][] { { "JustNowPattern", "%u" }, { "JustNowPastSingularName", "hetki" }, { "JustNowFutureSingularName", "hetken" }, arrayOfObject1, { "JustNowFutureSuffix", "päästä" }, { "MillisecondPattern", "%u" }, { "MillisecondPluralPattern", "%n %u" }, { "MillisecondPastSingularName", "millisekunti" }, { "MillisecondPastPluralName", "millisekuntia" }, { "MillisecondFutureSingularName", "millisekunnin" }, { "MillisecondPastSuffix", "sitten" }, { "MillisecondFutureSuffix", "päästä" }, { "SecondPattern", "%u" }, { "SecondPluralPattern", "%n %u" }, { "SecondPastSingularName", "sekunti" }, { "SecondPastPluralName", "sekuntia" }, { "SecondFutureSingularName", "sekunnin" }, { "SecondPastSuffix", "sitten" }, { "SecondFutureSuffix", "päästä" }, { "MinutePattern", "%u" }, { "MinutePluralPattern", "%n %u" }, { "MinutePastSingularName", "minuutti" }, { "MinutePastPluralName", "minuuttia" }, { "MinuteFutureSingularName", "minuutin" }, { "MinutePastSuffix", "sitten" }, { "MinuteFutureSuffix", "päästä" }, { "HourPattern", "%u" }, { "HourPluralPattern", "%n %u" }, { "HourPastSingularName", "tunti" }, { "HourPastPluralName", "tuntia" }, { "HourFutureSingularName", "tunnin" }, { "HourPastSuffix", "sitten" }, { "HourFutureSuffix", "päästä" }, { "DayPattern", "%u" }, { "DayPluralPattern", "%n %u" }, { "DayPastSingularName", "eilen" }, { "DayPastPluralName", "päivää" }, { "DayFutureSingularName", "huomenna" }, { "DayFuturePluralName", "päivän" }, { "DayPastSuffix", "sitten" }, { "DayFutureSuffix", "päästä" }, { "WeekPattern", "%u" }, { "WeekPluralPattern", "%n %u" }, { "WeekPastSingularName", "viikko" }, { "WeekPastPluralName", "viikkoa" }, arrayOfObject2, { "WeekFuturePluralName", "viikon" }, { "WeekPastSuffix", "sitten" }, { "WeekFutureSuffix", "päästä" }, { "MonthPattern", "%u" }, { "MonthPluralPattern", "%n %u" }, { "MonthPastSingularName", "kuukausi" }, arrayOfObject3, { "MonthFutureSingularName", "kuukauden" }, { "MonthPastSuffix", "sitten" }, { "MonthFutureSuffix", "päästä" }, arrayOfObject4, { "YearPluralPattern", "%n %u" }, { "YearPastSingularName", "vuosi" }, { "YearPastPluralName", "vuotta" }, { "YearFutureSingularName", "vuoden" }, { "YearPastSuffix", "sitten" }, { "YearFutureSuffix", "päästä" }, { "DecadePattern", "%u" }, { "DecadePluralPattern", "%n %u" }, { "DecadePastSingularName", "vuosikymmen" }, { "DecadePastPluralName", "vuosikymmentä" }, { "DecadeFutureSingularName", "vuosikymmenen" }, { "DecadePastSuffix", "sitten" }, { "DecadeFutureSuffix", "päästä" }, { "CenturyPattern", "%u" }, arrayOfObject5, { "CenturyPastSingularName", "vuosisata" }, { "CenturyPastPluralName", "vuosisataa" }, { "CenturyFutureSingularName", "vuosisadan" }, { "CenturyPastSuffix", "sitten" }, { "CenturyFutureSuffix", "päästä" }, { "MillenniumPattern", "%u" }, { "MillenniumPluralPattern", "%n %u" }, { "MillenniumPastSingularName", "vuosituhat" }, { "MillenniumPastPluralName", "vuosituhatta" }, { "MillenniumFutureSingularName", "vuosituhannen" }, { "MillenniumPastSuffix", "sitten" }, { "MillenniumFutureSuffix", "päästä" } };
  }
  
  protected Object[][] getContents()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     org.ocpsoft.prettytime.i18n.Resources_fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.d;

import android.content.Context;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bp;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class a
{
  public static String a = "22XH9inECtciY0h";
  
  public static int a(String paramString)
  {
    try
    {
      paramString = paramString.split(":");
      int i;
      if (paramString.length == 3)
      {
        i = Integer.parseInt(paramString[0]);
        int j = Integer.parseInt(paramString[1]);
        return (Integer.parseInt(paramString[2]) + (i * 60 * 60 + j * 60)) * 1000;
      }
      if (paramString.length == 2)
      {
        i = Integer.parseInt(paramString[0]);
        return (Integer.parseInt(paramString[1]) + i * 60) * 1000;
      }
      if (paramString.length == 1)
      {
        i = Integer.parseInt(paramString[0]);
        return i * 1000;
      }
    }
    catch (Exception paramString) {}
    return 0;
  }
  
  public static String a(long paramLong)
  {
    for (;;)
    {
      long l;
      try
      {
        l = paramLong / 1000L;
        Object localObject = new long[3];
        Object tmp12_11 = localObject;
        tmp12_11[0] = 0L;
        Object tmp16_12 = tmp12_11;
        tmp16_12[1] = 0L;
        Object tmp20_16 = tmp16_12;
        tmp20_16[2] = 0L;
        tmp20_16;
        if (l >= 60L)
        {
          paramLong = l % 60L;
          localObject[2] = paramLong;
          l /= 60L;
          if (l < 60L) {
            break label238;
          }
          paramLong = l % 60L;
          localObject[1] = paramLong;
          l /= 60L;
          paramLong = l;
          if (l >= 24L) {
            paramLong = l % 24L;
          }
          localObject[0] = paramLong;
          paramLong = localObject[0];
          String str;
          if (localObject[1] >= 10L)
          {
            str = String.valueOf(localObject[1]);
            if (localObject[2] >= 10L)
            {
              localObject = String.valueOf(localObject[2]);
              return String.valueOf(paramLong) + ":" + str + ":" + (String)localObject;
            }
          }
          else
          {
            str = "0" + String.valueOf(localObject[1]);
            continue;
          }
          localObject = "0" + String.valueOf(localObject[2]);
          continue;
        }
        paramLong = l;
      }
      catch (Exception localException)
      {
        return "0:00:00";
      }
      continue;
      label238:
      paramLong = l;
    }
  }
  
  private static String a(Context paramContext, long paramLong)
  {
    for (;;)
    {
      try
      {
        l = (new Date().getTime() - paramLong) / 1000L;
        paramLong = l;
        if (l < 0L) {
          paramLong = 0L;
        }
        long[] arrayOfLong = new long[4];
        long[] tmp35_34 = arrayOfLong;
        tmp35_34[0] = 0L;
        long[] tmp39_35 = tmp35_34;
        tmp39_35[1] = 0L;
        long[] tmp43_39 = tmp39_35;
        tmp43_39[2] = 0L;
        long[] tmp47_43 = tmp43_39;
        tmp47_43[3] = 0L;
        tmp47_43;
        if (paramLong >= 60L)
        {
          tmp35_34 = paramLong % 60L;
          arrayOfLong[3] = tmp35_34;
          tmp35_34 = paramLong / 60L;
          if (tmp35_34 < 60L) {
            break label233;
          }
          paramLong = tmp35_34 % 60L;
          arrayOfLong[2] = paramLong;
          tmp35_34 /= 60L;
          if (tmp35_34 < 24L) {
            break label239;
          }
          paramLong = tmp35_34 % 24L;
          arrayOfLong[1] = paramLong;
          arrayOfLong[0] = (tmp35_34 / 24L);
          if (arrayOfLong[0] > 0L) {
            return String.format(paramContext.getString(2131230793), new Object[] { Long.valueOf(arrayOfLong[0]) });
          }
          if (arrayOfLong[1] > 0L) {
            return String.format(paramContext.getString(2131230792), new Object[] { Long.valueOf(arrayOfLong[1]) });
          }
          paramContext = String.format(paramContext.getString(2131230791), new Object[] { Long.valueOf(arrayOfLong[2]) });
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        return "";
      }
      long[] tmp35_34 = paramLong;
      continue;
      label233:
      paramLong = tmp35_34;
      continue;
      label239:
      paramLong = tmp35_34;
    }
  }
  
  public static String a(Context paramContext, Date paramDate)
  {
    if (paramDate == null) {
      return "";
    }
    return a(paramContext, paramDate.getTime());
  }
  
  public static String a(ApplicationContext paramApplicationContext, Date paramDate)
  {
    if ((paramDate == null) || (paramApplicationContext == null)) {
      return null;
    }
    try
    {
      if (d.j().equals(""))
      {
        java.text.DateFormat localDateFormat = android.text.format.DateFormat.getDateFormat(paramApplicationContext);
        paramApplicationContext = android.text.format.DateFormat.getTimeFormat(paramApplicationContext);
        return localDateFormat.format(paramDate) + " " + paramApplicationContext.format(paramDate);
      }
      paramApplicationContext = new SimpleDateFormat(d.j()).format(paramDate);
      return paramApplicationContext;
    }
    catch (Exception paramApplicationContext) {}
    return null;
  }
  
  public static boolean a(Date paramDate1, Date paramDate2)
  {
    return paramDate1.getTime() / 86400000L == paramDate2.getTime() / 86400000L;
  }
  
  private static String b(Context paramContext, long paramLong)
  {
    for (;;)
    {
      try
      {
        l = (new Date().getTime() - paramLong) / 1000L;
        paramLong = l;
        if (l < 0L) {
          paramLong = 0L;
        }
        long[] arrayOfLong = new long[4];
        long[] tmp35_34 = arrayOfLong;
        tmp35_34[0] = 0L;
        long[] tmp39_35 = tmp35_34;
        tmp39_35[1] = 0L;
        long[] tmp43_39 = tmp39_35;
        tmp43_39[2] = 0L;
        long[] tmp47_43 = tmp43_39;
        tmp47_43[3] = 0L;
        tmp47_43;
        if (paramLong >= 60L)
        {
          tmp35_34 = paramLong % 60L;
          arrayOfLong[3] = tmp35_34;
          tmp35_34 = paramLong / 60L;
          if (tmp35_34 < 60L) {
            break label233;
          }
          paramLong = tmp35_34 % 60L;
          arrayOfLong[2] = paramLong;
          tmp35_34 /= 60L;
          if (tmp35_34 < 24L) {
            break label239;
          }
          paramLong = tmp35_34 % 24L;
          arrayOfLong[1] = paramLong;
          arrayOfLong[0] = (tmp35_34 / 24L);
          if (arrayOfLong[0] > 0L) {
            return String.format(paramContext.getString(2131230796), new Object[] { Long.valueOf(arrayOfLong[0]) });
          }
          if (arrayOfLong[1] > 0L) {
            return String.format(paramContext.getString(2131230795), new Object[] { Long.valueOf(arrayOfLong[1]) });
          }
          paramContext = String.format(paramContext.getString(2131230794), new Object[] { Long.valueOf(arrayOfLong[2]) });
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        return "";
      }
      long[] tmp35_34 = paramLong;
      continue;
      label233:
      paramLong = tmp35_34;
      continue;
      label239:
      paramLong = tmp35_34;
    }
  }
  
  public static String b(Context paramContext, Date paramDate)
  {
    if (paramDate == null) {
      return "";
    }
    return b(paramContext, paramDate.getTime());
  }
  
  public static String b(ApplicationContext paramApplicationContext, Date paramDate)
  {
    if ((paramDate == null) || (paramApplicationContext == null)) {
      return null;
    }
    try
    {
      paramApplicationContext = java.text.DateFormat.getDateInstance(1).format(paramDate);
      return paramApplicationContext;
    }
    catch (Exception paramApplicationContext) {}
    return null;
  }
  
  public static String c(ApplicationContext paramApplicationContext, Date paramDate)
  {
    if ((paramDate == null) || (paramApplicationContext == null)) {
      return null;
    }
    try
    {
      paramApplicationContext = java.text.DateFormat.getDateInstance(3).format(paramDate);
      return paramApplicationContext;
    }
    catch (Exception paramApplicationContext) {}
    return null;
  }
  
  public static String d(ApplicationContext paramApplicationContext, Date paramDate)
  {
    if ((paramDate == null) || (paramApplicationContext == null)) {
      return null;
    }
    try
    {
      paramApplicationContext = java.text.DateFormat.getTimeInstance(3).format(paramDate);
      return paramApplicationContext;
    }
    catch (Exception paramApplicationContext) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
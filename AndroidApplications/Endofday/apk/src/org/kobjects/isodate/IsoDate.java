package org.kobjects.isodate;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class IsoDate
{
  public static final int DATE = 1;
  public static final int DATE_TIME = 3;
  public static final int TIME = 2;
  
  public static String dateToString(Date paramDate, int paramInt)
  {
    char c2 = ':';
    char c1 = '-';
    Calendar localCalendar = Calendar.getInstance();
    Object localObject = "GMT";
    localObject = TimeZone.getTimeZone((String)localObject);
    localCalendar.setTimeZone((TimeZone)localObject);
    localCalendar.setTime(paramDate);
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int k = paramInt & 0x1;
    if (k != 0)
    {
      k = 1;
      int j = localCalendar.get(k);
      k = j / 100;
      dd(localStringBuffer, k);
      k = j % 100;
      dd(localStringBuffer, k);
      localStringBuffer.append(c1);
      k = 2;
      k = localCalendar.get(k);
      int i2 = 0;
      k -= i2;
      k += 1;
      dd(localStringBuffer, k);
      localStringBuffer.append(c1);
      k = 5;
      k = localCalendar.get(k);
      dd(localStringBuffer, k);
      k = 3;
      if (paramInt == k)
      {
        String str1 = "T";
        localStringBuffer.append(str1);
      }
    }
    int m = paramInt & 0x2;
    if (m != 0)
    {
      m = 11;
      m = localCalendar.get(m);
      dd(localStringBuffer, m);
      localStringBuffer.append(c2);
      m = 12;
      m = localCalendar.get(m);
      dd(localStringBuffer, m);
      localStringBuffer.append(c2);
      m = 13;
      m = localCalendar.get(m);
      dd(localStringBuffer, m);
      m = 46;
      localStringBuffer.append(m);
      int n = 14;
      int i = localCalendar.get(n);
      n = i / 100;
      n += 48;
      n = (char)n;
      localStringBuffer.append(n);
      int i1 = i % 100;
      dd(localStringBuffer, i1);
      i1 = 90;
      localStringBuffer.append(i1);
    }
    String str2 = localStringBuffer.toString();
    return str2;
  }
  
  static void dd(StringBuffer paramStringBuffer, int paramInt)
  {
    int i = paramInt / 10;
    i += 48;
    i = (char)i;
    paramStringBuffer.append(i);
    int j = paramInt % 10;
    j += 48;
    j = (char)j;
    paramStringBuffer.append(j);
  }
  
  public static Date stringToDate(String paramString, int paramInt)
  {
    int i11 = 1;
    int i15 = 14;
    int i14 = 5;
    int i13 = 11;
    int i12 = 0;
    Calendar localCalendar = Calendar.getInstance();
    int n = paramInt & 0x1;
    label216:
    int m;
    int k;
    int j;
    label356:
    int i;
    label397:
    Object localObject1;
    if (n != 0)
    {
      n = 4;
      String str1 = paramString.substring(i12, n);
      int i1 = Integer.parseInt(str1);
      localCalendar.set(i11, i1);
      i1 = 2;
      int i6 = 7;
      String str4 = paramString.substring(i14, i6);
      int i7 = Integer.parseInt(str4);
      i7 -= i11;
      i7 += 0;
      localCalendar.set(i1, i7);
      i1 = 8;
      i7 = 10;
      String str2 = paramString.substring(i1, i7);
      int i2 = Integer.parseInt(str2);
      localCalendar.set(i14, i2);
      i2 = 3;
      if (paramInt == i2)
      {
        i2 = paramString.length();
        if (i2 >= i13) {}
      }
      else
      {
        localCalendar.set(i13, i12);
        i2 = 12;
        localCalendar.set(i2, i12);
        i2 = 13;
        localCalendar.set(i2, i12);
        localCalendar.set(i15, i12);
        Date localDate = localCalendar.getTime();
        return localDate;
      }
      paramString = paramString.substring(i13);
      int i3 = 2;
      String str3 = paramString.substring(i12, i3);
      int i4 = Integer.parseInt(str3);
      localCalendar.set(i13, i4);
      i4 = 12;
      i7 = 3;
      String str5 = paramString.substring(i7, i14);
      int i8 = Integer.parseInt(str5);
      localCalendar.set(i4, i8);
      i4 = 13;
      i8 = 6;
      i11 = 8;
      String str6 = paramString.substring(i8, i11);
      int i9 = Integer.parseInt(str6);
      localCalendar.set(i4, i9);
      m = 8;
      i4 = paramString.length();
      if (m >= i4) {
        break label577;
      }
      i4 = paramString.charAt(m);
      i9 = 46;
      if (i4 != i9) {
        break label577;
      }
      k = 0;
      j = 100;
      m += 1;
      i = paramString.charAt(m);
      i4 = 48;
      if (i >= i4)
      {
        i4 = 57;
        if (i <= i4) {
          break label543;
        }
      }
      localCalendar.set(i15, k);
      i4 = paramString.length();
      if (m < i4)
      {
        i4 = paramString.charAt(m);
        i9 = 43;
        if (i4 != i9)
        {
          i4 = paramString.charAt(m);
          i9 = 45;
          if (i4 != i9) {
            break label588;
          }
        }
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        String str7 = "GMT";
        localObject1 = ((StringBuilder)localObject1).append(str7);
        str7 = paramString.substring(m);
        localObject1 = ((StringBuilder)localObject1).append(str7);
        localObject1 = ((StringBuilder)localObject1).toString();
        localObject1 = TimeZone.getTimeZone((String)localObject1);
        localCalendar.setTimeZone((TimeZone)localObject1);
      }
    }
    for (;;)
    {
      localObject1 = localCalendar.getTime();
      break;
      localObject1 = new java/util/Date;
      long l = 0L;
      ((Date)localObject1).<init>(l);
      localCalendar.setTime((Date)localObject1);
      break label216;
      label543:
      int i5 = 48;
      i5 = i - i5;
      i5 *= j;
      k += i5;
      j /= 10;
      break label356;
      label577:
      localCalendar.set(i15, i12);
      break label397;
      label588:
      i5 = paramString.charAt(m);
      int i10 = 90;
      if (i5 != i10) {
        break label627;
      }
      localObject2 = "GMT";
      localObject2 = TimeZone.getTimeZone((String)localObject2);
      localCalendar.setTimeZone((TimeZone)localObject2);
    }
    label627:
    Object localObject2 = new java/lang/RuntimeException;
    String str8 = "illegal time format!";
    ((RuntimeException)localObject2).<init>(str8);
    throw ((Throwable)localObject2);
  }
}

/* Location:
 * Qualified Name:     org.kobjects.isodate.IsoDate
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
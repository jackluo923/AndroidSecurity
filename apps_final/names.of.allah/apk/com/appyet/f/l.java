package com.appyet.f;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class l
{
  private static String[] a;
  private static final String[] b = { "EEE, dd MMM yy HH:mm:ss z", "EEE, dd MMM yy HH:mm z", "dd MMM yy HH:mm:ss z", "dd MMM yy HH:mm z" };
  private static final String[] c = { "yyyy-MM-dd'T'HH:mm:ss.SSSz", "yyyy-MM-dd't'HH:mm:ss.SSSz", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "yyyy-MM-dd't'HH:mm:ss.SSS'z'", "yyyy-MM-dd'T'HH:mm:ssz", "yyyy-MM-dd't'HH:mm:ssz", "yyyy-MM-dd'T'HH:mm:ss'Z'", "yyyy-MM-dd't'HH:mm:ss'z'", "yyyy-MM-dd'T'HH:mmz", "yyyy-MM'T'HH:mmz", "yyyy'T'HH:mmz", "yyyy-MM-dd't'HH:mmz", "yyyy-MM-dd'T'HH:mm'Z'", "yyyy-MM-dd't'HH:mm'z'", "yyyy-MM-dd", "yyyy-MM", "yyyy" };
  
  public static Date a(String paramString)
  {
    int j = paramString.indexOf("T");
    if (j >= 0) {
      if (!paramString.endsWith("Z")) {
        break label279;
      }
    }
    label271:
    label279:
    for (Object localObject1 = paramString.substring(0, paramString.length() - 1) + "+00:00";; localObject1 = paramString)
    {
      int i = ((String)localObject1).indexOf("+", j);
      if (i == -1) {
        i = ((String)localObject1).indexOf("-", j);
      }
      for (;;)
      {
        Object localObject2 = localObject1;
        if (i >= 0)
        {
          String str = ((String)localObject1).substring(0, i);
          j = str.indexOf(",");
          localObject2 = str;
          if (j >= 0) {
            localObject2 = str.substring(0, j);
          }
          localObject1 = ((String)localObject1).substring(i);
          localObject2 = (String)localObject2 + "GMT" + (String)localObject1;
        }
        localObject2 = a(c, (String)localObject2);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          i = paramString.indexOf(" UT");
          if (i < 0) {
            break label271;
          }
          localObject1 = paramString.substring(0, i);
          localObject2 = paramString.substring(i + 3);
        }
        for (localObject1 = (String)localObject1 + " GMT" + (String)localObject2;; localObject1 = paramString)
        {
          localObject2 = a(b, (String)localObject1);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = localObject2;
            if (a.length > 0) {
              localObject1 = a(a, paramString);
            }
          }
          return (Date)localObject1;
          localObject2 = paramString + "T00:00GMT";
          break;
        }
      }
    }
  }
  
  private static Date a(String[] paramArrayOfString, String paramString)
  {
    if (paramString != null) {}
    Object localObject;
    for (String str = paramString.trim();; str = null)
    {
      int i = 0;
      for (localObject = null; (localObject == null) && (i < paramArrayOfString.length); localObject = paramString)
      {
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(paramArrayOfString[i], Locale.US);
        localSimpleDateFormat.setLenient(true);
        paramString = (String)localObject;
        try
        {
          ParsePosition localParsePosition = new ParsePosition(0);
          paramString = (String)localObject;
          localObject = localSimpleDateFormat.parse(str, localParsePosition);
          paramString = (String)localObject;
          int j = localParsePosition.getIndex();
          paramString = (String)localObject;
          int k = str.length();
          paramString = (String)localObject;
          if (j != k) {
            paramString = null;
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
        i += 1;
      }
    }
    return (Date)localObject;
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
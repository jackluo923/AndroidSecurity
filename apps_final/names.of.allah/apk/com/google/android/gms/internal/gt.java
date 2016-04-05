package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class gt
{
  private static final go BD = new go("MetadataUtils");
  private static final String[] CL = { "Z", "+hh", "+hhmm", "+hh:mm" };
  private static final String CM = "yyyyMMdd'T'HHmmss" + CL[0];
  
  public static String a(Calendar paramCalendar)
  {
    if (paramCalendar == null)
    {
      BD.b("Calendar object cannot be null", new Object[0]);
      paramCalendar = null;
    }
    Object localObject;
    do
    {
      return paramCalendar;
      String str = CM;
      localObject = str;
      if (paramCalendar.get(11) == 0)
      {
        localObject = str;
        if (paramCalendar.get(12) == 0)
        {
          localObject = str;
          if (paramCalendar.get(13) == 0) {
            localObject = "yyyyMMdd";
          }
        }
      }
      localObject = new SimpleDateFormat((String)localObject);
      ((SimpleDateFormat)localObject).setTimeZone(paramCalendar.getTimeZone());
      localObject = ((SimpleDateFormat)localObject).format(paramCalendar.getTime());
      paramCalendar = (Calendar)localObject;
    } while (!((String)localObject).endsWith("+0000"));
    return ((String)localObject).replace("+0000", CL[0]);
  }
  
  /* Error */
  public static void a(List<WebImage> paramList, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 105 1 0
    //   6: aload_1
    //   7: ldc 107
    //   9: invokevirtual 113	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   12: astore_1
    //   13: aload_1
    //   14: invokevirtual 119	org/json/JSONArray:length	()I
    //   17: istore 4
    //   19: iconst_0
    //   20: istore_3
    //   21: iload_3
    //   22: iload 4
    //   24: if_icmpge +32 -> 56
    //   27: aload_1
    //   28: iload_3
    //   29: invokevirtual 123	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   32: astore_2
    //   33: aload_0
    //   34: new 125	com/google/android/gms/common/images/WebImage
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 128	com/google/android/gms/common/images/WebImage:<init>	(Lorg/json/JSONObject;)V
    //   42: invokeinterface 132 2 0
    //   47: pop
    //   48: iload_3
    //   49: iconst_1
    //   50: iadd
    //   51: istore_3
    //   52: goto -31 -> 21
    //   55: astore_0
    //   56: return
    //   57: astore_2
    //   58: goto -10 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	paramList	List<WebImage>
    //   0	61	1	paramJSONObject	JSONObject
    //   32	7	2	localJSONObject	JSONObject
    //   57	1	2	localIllegalArgumentException	IllegalArgumentException
    //   20	32	3	i	int
    //   17	8	4	j	int
    // Exception table:
    //   from	to	target	type
    //   0	19	55	org/json/JSONException
    //   27	33	55	org/json/JSONException
    //   33	48	55	org/json/JSONException
    //   33	48	57	java/lang/IllegalArgumentException
  }
  
  public static void a(JSONObject paramJSONObject, List<WebImage> paramList)
  {
    JSONArray localJSONArray;
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      localJSONArray = new JSONArray();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localJSONArray.put(((WebImage)paramList.next()).dU());
      }
    }
    try
    {
      paramJSONObject.put("images", localJSONArray);
      return;
    }
    catch (JSONException paramJSONObject) {}
  }
  
  public static Calendar aq(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      BD.b("Input string is empty or null", new Object[0]);
      return null;
    }
    Object localObject2 = ar(paramString);
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      BD.b("Invalid date format", new Object[0]);
      return null;
    }
    String str = as(paramString);
    paramString = "yyyyMMdd";
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty(str))
    {
      localObject1 = (String)localObject2 + "T" + str;
      if (str.length() != 6) {
        break label124;
      }
    }
    for (paramString = "yyyyMMdd'T'HHmmss";; paramString = CM)
    {
      localObject2 = GregorianCalendar.getInstance();
      try
      {
        paramString = new SimpleDateFormat(paramString).parse((String)localObject1);
        ((Calendar)localObject2).setTime(paramString);
        return (Calendar)localObject2;
      }
      catch (ParseException paramString)
      {
        label124:
        BD.b("Error parsing string: %s", new Object[] { paramString.getMessage() });
      }
    }
    return null;
  }
  
  private static String ar(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      BD.b("Input string is empty or null", new Object[0]);
      return null;
    }
    try
    {
      paramString = paramString.substring(0, 8);
      return paramString;
    }
    catch (IndexOutOfBoundsException paramString)
    {
      BD.c("Error extracting the date: %s", new Object[] { paramString.getMessage() });
    }
    return null;
  }
  
  private static String as(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      BD.b("string is empty or null", new Object[0]);
    }
    do
    {
      do
      {
        return null;
        int i = paramString.indexOf('T');
        if (i != 8)
        {
          BD.b("T delimeter is not found", new Object[0]);
          return null;
        }
        try
        {
          paramString = paramString.substring(i + 1);
          if (paramString.length() == 6) {
            return paramString;
          }
        }
        catch (IndexOutOfBoundsException paramString)
        {
          BD.b("Error extracting the time substring: %s", new Object[] { paramString.getMessage() });
          return null;
        }
        switch (paramString.charAt(6))
        {
        default: 
          return null;
        }
      } while (!at(paramString));
      return paramString.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
    } while (paramString.length() != CL[0].length() + 6);
    return paramString.substring(0, paramString.length() - 1) + "+0000";
  }
  
  private static boolean at(String paramString)
  {
    int i = paramString.length();
    return (i == CL[1].length() + 6) || (i == CL[2].length() + 6) || (i == CL[3].length() + 6);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
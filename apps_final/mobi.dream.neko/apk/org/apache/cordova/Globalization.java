package org.apache.cordova;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.text.format.Time;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Globalization
  extends CordovaPlugin
{
  public static final String CURRENCY = "currency";
  public static final String CURRENCYCODE = "currencyCode";
  public static final String DATE = "date";
  public static final String DATESTRING = "dateString";
  public static final String DATETOSTRING = "dateToString";
  public static final String DAYS = "days";
  public static final String FORMATLENGTH = "formatLength";
  public static final String FULL = "full";
  public static final String GETCURRENCYPATTERN = "getCurrencyPattern";
  public static final String GETDATENAMES = "getDateNames";
  public static final String GETDATEPATTERN = "getDatePattern";
  public static final String GETFIRSTDAYOFWEEK = "getFirstDayOfWeek";
  public static final String GETLOCALENAME = "getLocaleName";
  public static final String GETNUMBERPATTERN = "getNumberPattern";
  public static final String GETPREFERREDLANGUAGE = "getPreferredLanguage";
  public static final String ISDAYLIGHTSAVINGSTIME = "isDayLightSavingsTime";
  public static final String ITEM = "item";
  public static final String LONG = "long";
  public static final String MEDIUM = "medium";
  public static final String MONTHS = "months";
  public static final String NARROW = "narrow";
  public static final String NUMBER = "number";
  public static final String NUMBERSTRING = "numberString";
  public static final String NUMBERTOSTRING = "numberToString";
  public static final String OPTIONS = "options";
  public static final String PERCENT = "percent";
  public static final String SELECTOR = "selector";
  public static final String STRINGTODATE = "stringToDate";
  public static final String STRINGTONUMBER = "stringToNumber";
  public static final String TIME = "time";
  public static final String TYPE = "type";
  public static final String WIDE = "wide";
  
  private JSONObject getCurrencyPattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Object localObject = paramJSONArray.getJSONObject(0).getString("currencyCode");
      paramJSONArray = (DecimalFormat)DecimalFormat.getCurrencyInstance(Locale.getDefault());
      localObject = Currency.getInstance((String)localObject);
      paramJSONArray.setCurrency((Currency)localObject);
      localJSONObject.put("pattern", paramJSONArray.toPattern());
      localJSONObject.put("code", ((Currency)localObject).getCurrencyCode());
      localJSONObject.put("fraction", paramJSONArray.getMinimumFractionDigits());
      localJSONObject.put("rounding", new Integer(0));
      localJSONObject.put("decimal", String.valueOf(paramJSONArray.getDecimalFormatSymbols().getDecimalSeparator()));
      localJSONObject.put("grouping", String.valueOf(paramJSONArray.getDecimalFormatSymbols().getGroupingSeparator()));
      return localJSONObject;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  @TargetApi(9)
  private JSONObject getDateNames(final JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    int n = 0;
    int m = 0;
    int j = m;
    for (;;)
    {
      try
      {
        if (paramJSONArray.getJSONObject(0).length() > 0)
        {
          i = n;
          if (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("type"))
          {
            i = n;
            if (((String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("type")).equalsIgnoreCase("narrow")) {
              i = 0 + 1;
            }
          }
          j = m;
          k = i;
          if (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("item"))
          {
            j = m;
            k = i;
            if (((String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("item")).equalsIgnoreCase("days"))
            {
              j = 0 + 10;
              k = i;
            }
          }
        }
        i = j + k;
        if (i == 1)
        {
          paramJSONArray = Calendar.getInstance().getDisplayNames(2, 1, Locale.getDefault());
          Iterator localIterator = paramJSONArray.keySet().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localArrayList.add((String)localIterator.next());
          continue;
        }
        if (i != 10) {
          break label292;
        }
      }
      catch (Exception paramJSONArray)
      {
        throw new GlobalizationError("UNKNOWN_ERROR");
      }
      paramJSONArray = Calendar.getInstance().getDisplayNames(7, 2, Locale.getDefault());
      continue;
      label292:
      if (i == 11) {
        paramJSONArray = Calendar.getInstance().getDisplayNames(7, 1, Locale.getDefault());
      } else {
        paramJSONArray = Calendar.getInstance().getDisplayNames(2, 2, Locale.getDefault());
      }
    }
    Collections.sort(localArrayList, new Comparator()
    {
      public int compare(String paramAnonymousString1, String paramAnonymousString2)
      {
        return ((Integer)paramJSONArray.get(paramAnonymousString1)).compareTo((Integer)paramJSONArray.get(paramAnonymousString2));
      }
    });
    int i = 0;
    while (i < localArrayList.size())
    {
      localJSONArray.put(localArrayList.get(i));
      i += 1;
    }
    paramJSONArray = localJSONObject.put("value", localJSONArray);
    return paramJSONArray;
  }
  
  /* Error */
  private JSONObject getDatePattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    // Byte code:
    //   0: new 115	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 116	org/json/JSONObject:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   13: invokeinterface 298 1 0
    //   18: invokestatic 304	android/text/format/DateFormat:getDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   21: checkcast 306	java/text/SimpleDateFormat
    //   24: astore_3
    //   25: aload_0
    //   26: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   29: invokeinterface 298 1 0
    //   34: invokestatic 309	android/text/format/DateFormat:getTimeFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   37: checkcast 306	java/text/SimpleDateFormat
    //   40: astore 5
    //   42: new 311	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   49: aload_3
    //   50: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   53: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc_w 321
    //   59: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload 5
    //   64: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   67: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: astore_2
    //   74: aload_1
    //   75: iconst_0
    //   76: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   79: ldc 82
    //   81: invokevirtual 327	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   84: pop
    //   85: aload_1
    //   86: iconst_0
    //   87: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   90: ldc 82
    //   92: invokevirtual 327	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   95: ifeq +128 -> 223
    //   98: aload_1
    //   99: iconst_0
    //   100: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   103: ldc 82
    //   105: invokevirtual 330	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   108: astore 6
    //   110: aload_3
    //   111: astore_1
    //   112: aload 6
    //   114: ldc 28
    //   116: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   119: ifne +36 -> 155
    //   122: aload 6
    //   124: ldc 28
    //   126: invokevirtual 126	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   129: astore_2
    //   130: aload_2
    //   131: ldc 64
    //   133: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   136: ifeq +164 -> 300
    //   139: aload_0
    //   140: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   143: invokeinterface 298 1 0
    //   148: invokestatic 333	android/text/format/DateFormat:getMediumDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   151: checkcast 306	java/text/SimpleDateFormat
    //   154: astore_1
    //   155: new 311	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   162: aload_1
    //   163: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   166: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: ldc_w 321
    //   172: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload 5
    //   177: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   180: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: astore_3
    //   187: aload_3
    //   188: astore_2
    //   189: aload 6
    //   191: ldc 88
    //   193: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   196: ifne +27 -> 223
    //   199: aload 6
    //   201: ldc 88
    //   203: invokevirtual 126	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   206: astore 6
    //   208: aload 6
    //   210: ldc 16
    //   212: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   215: ifeq +124 -> 339
    //   218: aload_1
    //   219: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   222: astore_2
    //   223: invokestatic 338	android/text/format/Time:getCurrentTimezone	()Ljava/lang/String;
    //   226: invokestatic 344	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   229: astore_1
    //   230: aload 4
    //   232: ldc -106
    //   234: aload_2
    //   235: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   238: pop
    //   239: aload 4
    //   241: ldc_w 346
    //   244: aload_1
    //   245: aload_1
    //   246: invokestatic 234	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   249: invokevirtual 350	java/util/Calendar:getTime	()Ljava/util/Date;
    //   252: invokevirtual 354	java/util/TimeZone:inDaylightTime	(Ljava/util/Date;)Z
    //   255: iconst_0
    //   256: invokevirtual 358	java/util/TimeZone:getDisplayName	(ZI)Ljava/lang/String;
    //   259: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   262: pop
    //   263: aload 4
    //   265: ldc_w 360
    //   268: aload_1
    //   269: invokevirtual 363	java/util/TimeZone:getRawOffset	()I
    //   272: sipush 1000
    //   275: idiv
    //   276: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   279: pop
    //   280: aload 4
    //   282: ldc_w 365
    //   285: aload_1
    //   286: invokevirtual 368	java/util/TimeZone:getDSTSavings	()I
    //   289: sipush 1000
    //   292: idiv
    //   293: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   296: pop
    //   297: aload 4
    //   299: areturn
    //   300: aload_2
    //   301: ldc 61
    //   303: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   306: ifne +14 -> 320
    //   309: aload_3
    //   310: astore_1
    //   311: aload_2
    //   312: ldc 31
    //   314: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   317: ifeq -162 -> 155
    //   320: aload_0
    //   321: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   324: invokeinterface 298 1 0
    //   329: invokestatic 371	android/text/format/DateFormat:getLongDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   332: checkcast 306	java/text/SimpleDateFormat
    //   335: astore_1
    //   336: goto -181 -> 155
    //   339: aload_3
    //   340: astore_2
    //   341: aload 6
    //   343: ldc 97
    //   345: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   348: ifeq -125 -> 223
    //   351: aload 5
    //   353: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   356: astore_2
    //   357: goto -134 -> 223
    //   360: astore_1
    //   361: new 111	org/apache/cordova/GlobalizationError
    //   364: dup
    //   365: ldc_w 373
    //   368: invokespecial 207	org/apache/cordova/GlobalizationError:<init>	(Ljava/lang/String;)V
    //   371: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	372	0	this	Globalization
    //   0	372	1	paramJSONArray	JSONArray
    //   73	284	2	localObject1	Object
    //   24	316	3	localObject2	Object
    //   7	291	4	localJSONObject	JSONObject
    //   40	312	5	localSimpleDateFormat	SimpleDateFormat
    //   108	234	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	85	360	java/lang/Exception
    //   85	110	360	java/lang/Exception
    //   112	155	360	java/lang/Exception
    //   155	187	360	java/lang/Exception
    //   189	223	360	java/lang/Exception
    //   223	297	360	java/lang/Exception
    //   300	309	360	java/lang/Exception
    //   311	320	360	java/lang/Exception
    //   320	336	360	java/lang/Exception
    //   341	357	360	java/lang/Exception
  }
  
  private JSONObject getDateToString(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Date localDate = new Date(((Long)paramJSONArray.getJSONObject(0).get("date")).longValue());
      paramJSONArray = localJSONObject.put("value", new SimpleDateFormat(getDatePattern(paramJSONArray).getString("pattern")).format(localDate));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  private JSONObject getFirstDayOfWeek(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    paramJSONArray = new JSONObject();
    try
    {
      paramJSONArray = paramJSONArray.put("value", Calendar.getInstance(Locale.getDefault()).getFirstDayOfWeek());
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getIsDayLightSavingsTime(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = new Date(((Long)paramJSONArray.getJSONObject(0).get("date")).longValue());
      paramJSONArray = localJSONObject.put("dst", TimeZone.getTimeZone(Time.getCurrentTimezone()).inDaylightTime(paramJSONArray));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getLocaleName()
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("value", Locale.getDefault().toString());
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private DecimalFormat getNumberFormatInstance(JSONArray paramJSONArray)
    throws JSONException
  {
    DecimalFormat localDecimalFormat = (DecimalFormat)DecimalFormat.getInstance(Locale.getDefault());
    try
    {
      if ((paramJSONArray.getJSONObject(0).length() > 1) && (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("type")))
      {
        paramJSONArray = (String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("type");
        if (paramJSONArray.equalsIgnoreCase("currency")) {
          return (DecimalFormat)DecimalFormat.getCurrencyInstance(Locale.getDefault());
        }
        if (paramJSONArray.equalsIgnoreCase("percent"))
        {
          paramJSONArray = (DecimalFormat)DecimalFormat.getPercentInstance(Locale.getDefault());
          return paramJSONArray;
        }
      }
    }
    catch (JSONException paramJSONArray) {}
    return localDecimalFormat;
  }
  
  /* Error */
  private JSONObject getNumberPattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    // Byte code:
    //   0: new 115	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 116	org/json/JSONObject:<init>	()V
    //   7: astore 7
    //   9: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   12: invokestatic 411	java/text/DecimalFormat:getInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   15: checkcast 134	java/text/DecimalFormat
    //   18: astore 5
    //   20: aload 5
    //   22: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   25: invokevirtual 191	java/text/DecimalFormatSymbols:getDecimalSeparator	()C
    //   28: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   31: astore 6
    //   33: aload 5
    //   35: astore_3
    //   36: aload 6
    //   38: astore 4
    //   40: aload_1
    //   41: iconst_0
    //   42: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   45: invokevirtual 218	org/json/JSONObject:length	()I
    //   48: ifle +81 -> 129
    //   51: aload 5
    //   53: astore_3
    //   54: aload 6
    //   56: astore 4
    //   58: aload_1
    //   59: iconst_0
    //   60: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   63: ldc 82
    //   65: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   68: checkcast 115	org/json/JSONObject
    //   71: ldc 100
    //   73: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   76: ifne +53 -> 129
    //   79: aload_1
    //   80: iconst_0
    //   81: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   84: ldc 82
    //   86: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   89: checkcast 115	org/json/JSONObject
    //   92: ldc 100
    //   94: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   97: checkcast 193	java/lang/String
    //   100: astore_1
    //   101: aload_1
    //   102: ldc 10
    //   104: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   107: ifeq +138 -> 245
    //   110: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   113: invokestatic 138	java/text/DecimalFormat:getCurrencyInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   116: checkcast 134	java/text/DecimalFormat
    //   119: astore_3
    //   120: aload_3
    //   121: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   124: invokevirtual 417	java/text/DecimalFormatSymbols:getCurrencySymbol	()Ljava/lang/String;
    //   127: astore 4
    //   129: aload 7
    //   131: ldc -106
    //   133: aload_3
    //   134: invokevirtual 154	java/text/DecimalFormat:toPattern	()Ljava/lang/String;
    //   137: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   140: pop
    //   141: aload 7
    //   143: ldc_w 419
    //   146: aload 4
    //   148: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   151: pop
    //   152: aload 7
    //   154: ldc -91
    //   156: aload_3
    //   157: invokevirtual 169	java/text/DecimalFormat:getMinimumFractionDigits	()I
    //   160: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   163: pop
    //   164: aload 7
    //   166: ldc -82
    //   168: new 176	java/lang/Integer
    //   171: dup
    //   172: iconst_0
    //   173: invokespecial 179	java/lang/Integer:<init>	(I)V
    //   176: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   179: pop
    //   180: aload 7
    //   182: ldc_w 421
    //   185: aload_3
    //   186: invokevirtual 424	java/text/DecimalFormat:getPositivePrefix	()Ljava/lang/String;
    //   189: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   192: pop
    //   193: aload 7
    //   195: ldc_w 426
    //   198: aload_3
    //   199: invokevirtual 429	java/text/DecimalFormat:getNegativePrefix	()Ljava/lang/String;
    //   202: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   205: pop
    //   206: aload 7
    //   208: ldc -75
    //   210: aload_3
    //   211: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   214: invokevirtual 191	java/text/DecimalFormatSymbols:getDecimalSeparator	()C
    //   217: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   220: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   223: pop
    //   224: aload 7
    //   226: ldc -57
    //   228: aload_3
    //   229: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   232: invokevirtual 202	java/text/DecimalFormatSymbols:getGroupingSeparator	()C
    //   235: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   238: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   241: pop
    //   242: aload 7
    //   244: areturn
    //   245: aload 5
    //   247: astore_3
    //   248: aload 6
    //   250: astore 4
    //   252: aload_1
    //   253: ldc 85
    //   255: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   258: ifeq -129 -> 129
    //   261: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   264: invokestatic 414	java/text/DecimalFormat:getPercentInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   267: checkcast 134	java/text/DecimalFormat
    //   270: astore_3
    //   271: aload_3
    //   272: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   275: invokevirtual 432	java/text/DecimalFormatSymbols:getPercent	()C
    //   278: istore_2
    //   279: iload_2
    //   280: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   283: astore 4
    //   285: goto -156 -> 129
    //   288: astore_1
    //   289: new 111	org/apache/cordova/GlobalizationError
    //   292: dup
    //   293: ldc_w 373
    //   296: invokespecial 207	org/apache/cordova/GlobalizationError:<init>	(Ljava/lang/String;)V
    //   299: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	this	Globalization
    //   0	300	1	paramJSONArray	JSONArray
    //   278	2	2	c	char
    //   35	237	3	localDecimalFormat1	DecimalFormat
    //   38	246	4	str1	String
    //   18	228	5	localDecimalFormat2	DecimalFormat
    //   31	218	6	str2	String
    //   7	236	7	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   9	33	288	java/lang/Exception
    //   40	51	288	java/lang/Exception
    //   58	129	288	java/lang/Exception
    //   129	242	288	java/lang/Exception
    //   252	279	288	java/lang/Exception
  }
  
  private JSONObject getNumberToString(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = localJSONObject.put("value", getNumberFormatInstance(paramJSONArray).format(paramJSONArray.getJSONObject(0).get("number")));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  private JSONObject getPreferredLanguage()
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("value", Locale.getDefault().getDisplayLanguage().toString());
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getStringToNumber(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = localJSONObject.put("value", getNumberFormatInstance(paramJSONArray).parse((String)paramJSONArray.getJSONObject(0).get("numberString")));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("PARSING_ERROR");
    }
  }
  
  private JSONObject getStringtoDate(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = new SimpleDateFormat(getDatePattern(paramJSONArray).getString("pattern")).parse(paramJSONArray.getJSONObject(0).get("dateString").toString());
      Time localTime = new Time();
      localTime.set(paramJSONArray.getTime());
      localJSONObject.put("year", year);
      localJSONObject.put("month", month);
      localJSONObject.put("day", monthDay);
      localJSONObject.put("hour", hour);
      localJSONObject.put("minute", minute);
      localJSONObject.put("second", second);
      localJSONObject.put("millisecond", new Long(0L));
      return localJSONObject;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("PARSING_ERROR");
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    new JSONObject();
    try
    {
      if (paramString.equals("getLocaleName")) {
        paramString = getLocaleName();
      }
      for (;;)
      {
        paramCallbackContext.success(paramString);
        break label285;
        if (paramString.equals("getPreferredLanguage"))
        {
          paramString = getPreferredLanguage();
        }
        else if (paramString.equalsIgnoreCase("dateToString"))
        {
          paramString = getDateToString(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("stringToDate"))
        {
          paramString = getStringtoDate(paramJSONArray);
        }
        else
        {
          if (!paramString.equalsIgnoreCase("getDatePattern")) {
            break;
          }
          paramString = getDatePattern(paramJSONArray);
        }
      }
      if (paramString.equalsIgnoreCase("getDateNames")) {
        if (Build.VERSION.SDK_INT < 9) {
          throw new GlobalizationError("UNKNOWN_ERROR");
        }
      }
    }
    catch (GlobalizationError paramString)
    {
      for (;;)
      {
        paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramString.toJson()));
        break label285;
        paramString = getDateNames(paramJSONArray);
        continue;
        if (paramString.equalsIgnoreCase("isDayLightSavingsTime"))
        {
          paramString = getIsDayLightSavingsTime(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("getFirstDayOfWeek"))
        {
          paramString = getFirstDayOfWeek(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("numberToString"))
        {
          paramString = getNumberToString(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("stringToNumber"))
        {
          paramString = getStringToNumber(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("getNumberPattern"))
        {
          paramString = getNumberPattern(paramJSONArray);
        }
        else
        {
          if (!paramString.equalsIgnoreCase("getCurrencyPattern")) {
            break;
          }
          paramString = getCurrencyPattern(paramJSONArray);
        }
      }
      return false;
    }
    catch (Exception paramString)
    {
      paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.JSON_EXCEPTION));
    }
    label285:
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Globalization
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
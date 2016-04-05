package com.inmobi.androidsdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

@SuppressLint({"UseSparseArrays"})
public class IMBrowserActivity
  extends Activity
{
  public static final String ANIMATED = "isAnimationEnabledOnDimiss";
  public static final int BROWSER_ACTIVITY = 100;
  public static final String EXPANDDATA = "data";
  public static final int EXPAND_ACTIVITY = 102;
  public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
  public static final String EXTRA_URL = "extra_url";
  public static final int GET_IMAGE = 101;
  public static final int INTERSTITIAL_ACTIVITY = 101;
  private static IMWebView b;
  private static IMWebView.IMWebViewListener c;
  private static IMWebView d;
  private static FrameLayout e;
  private static Message f;
  private static Map<Integer, StartActivityForResultCallback> l = new HashMap();
  private static int m = 0;
  private static Activity o;
  private IMWebView a;
  private RelativeLayout g;
  private float h;
  private Boolean i;
  private CustomView j;
  private long k = 0L;
  private int n;
  private WebViewClient p = new a(this);
  
  /* Error */
  private String a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_3
    //   6: astore_2
    //   7: aload_1
    //   8: ifnull +89 -> 97
    //   11: aload_3
    //   12: astore_2
    //   13: ldc 90
    //   15: aload_1
    //   16: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   19: ifne +78 -> 97
    //   22: getstatic 102	com/inmobi/re/controller/JSUtilityController:formats	[Ljava/text/SimpleDateFormat;
    //   25: astore 4
    //   27: aload 4
    //   29: arraylength
    //   30: istore 7
    //   32: iconst_0
    //   33: istore 5
    //   35: iload 5
    //   37: iload 7
    //   39: if_icmpge +80 -> 119
    //   42: aload 4
    //   44: iload 5
    //   46: aaload
    //   47: astore_2
    //   48: aload_2
    //   49: aload_1
    //   50: invokevirtual 108	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: getstatic 111	com/inmobi/re/controller/JSUtilityController:calendarUntiFormats	[Ljava/text/SimpleDateFormat;
    //   59: astore 4
    //   61: aload 4
    //   63: arraylength
    //   64: istore 7
    //   66: iload 6
    //   68: istore 5
    //   70: aload_3
    //   71: astore_2
    //   72: iload 5
    //   74: iload 7
    //   76: if_icmpge +21 -> 97
    //   79: aload 4
    //   81: iload 5
    //   83: aaload
    //   84: astore_2
    //   85: aload_2
    //   86: aload_1
    //   87: invokevirtual 117	java/util/Date:getTime	()J
    //   90: invokestatic 123	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   93: invokevirtual 127	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   96: astore_2
    //   97: aload_2
    //   98: areturn
    //   99: astore_2
    //   100: iload 5
    //   102: iconst_1
    //   103: iadd
    //   104: istore 5
    //   106: goto -71 -> 35
    //   109: astore_2
    //   110: iload 5
    //   112: iconst_1
    //   113: iadd
    //   114: istore 5
    //   116: goto -46 -> 70
    //   119: aconst_null
    //   120: astore_1
    //   121: goto -65 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	IMBrowserActivity
    //   0	124	1	paramString	String
    //   6	92	2	localObject1	Object
    //   99	1	2	localException1	Exception
    //   109	1	2	localException2	Exception
    //   4	67	3	localObject2	Object
    //   25	55	4	arrayOfSimpleDateFormat	java.text.SimpleDateFormat[]
    //   33	82	5	i1	int
    //   1	66	6	i2	int
    //   30	47	7	i3	int
    // Exception table:
    //   from	to	target	type
    //   48	54	99	java/lang/Exception
    //   85	97	109	java/lang/Exception
  }
  
  private String a(JSONArray paramJSONArray)
  {
    int i1 = 0;
    if (paramJSONArray != null) {
      try
      {
        if (paramJSONArray.length() != 0)
        {
          Object localObject1 = new StringBuilder();
          while (i1 < paramJSONArray.length())
          {
            Object localObject2 = paramJSONArray.get(i1);
            ((StringBuilder)localObject1).append(localObject2 + ",");
            i1 += 1;
          }
          localObject1 = ((StringBuilder)localObject1).toString();
          i1 = ((String)localObject1).length();
          if (i1 == 0) {
            paramJSONArray = null;
          }
          for (;;)
          {
            return paramJSONArray;
            paramJSONArray = (JSONArray)localObject1;
            try
            {
              if (((String)localObject1).charAt(i1 - 1) == ',')
              {
                paramJSONArray = ((String)localObject1).substring(0, i1 - 1);
                return paramJSONArray;
              }
            }
            catch (Exception paramJSONArray)
            {
              Log.internal("[InMobi]-4.4.1", "Couldn't parse json in create calendar event", paramJSONArray);
              return (String)localObject1;
            }
          }
        }
        return null;
      }
      catch (Exception paramJSONArray)
      {
        paramJSONArray.printStackTrace();
        Log.internal("[InMobi]-[RE]-4.4.1", "Exception parsing recurrence rule", paramJSONArray);
      }
    }
  }
  
  private String a(JSONArray paramJSONArray, int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (paramJSONArray != null) {}
    for (;;)
    {
      try
      {
        if (paramJSONArray.length() != 0)
        {
          Object localObject = new StringBuilder();
          if (i1 < paramJSONArray.length())
          {
            int i2 = paramJSONArray.getInt(i1);
            if ((i2 >= paramInt1) && (i2 <= paramInt2)) {
              ((StringBuilder)localObject).append(i2 + ",");
            }
          }
          else
          {
            localObject = ((StringBuilder)localObject).toString();
            paramInt1 = ((String)localObject).length();
            if (paramInt1 == 0)
            {
              paramJSONArray = null;
              return paramJSONArray;
            }
            paramJSONArray = (JSONArray)localObject;
            try
            {
              if (((String)localObject).charAt(paramInt1 - 1) != ',') {
                continue;
              }
              paramJSONArray = ((String)localObject).substring(0, paramInt1 - 1);
              return paramJSONArray;
            }
            catch (Exception paramJSONArray)
            {
              Log.internal("[InMobi]-4.4.1", "Couldn't parse json in create calendar event", paramJSONArray);
              return (String)localObject;
            }
          }
        }
        else
        {
          return null;
        }
      }
      catch (Exception paramJSONArray)
      {
        paramJSONArray.printStackTrace();
        Log.internal("[InMobi]-[RE]-4.4.1", "Exception parsing recurrence rule", paramJSONArray);
      }
      i1 += 1;
    }
  }
  
  private void a(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    String str1;
    switch (paramInt1)
    {
    default: 
      str1 = null;
    }
    String str2;
    for (;;)
    {
      str2 = paramString1 + " " + paramString2 + " " + paramString3;
      Intent localIntent = new Intent();
      localIntent.setType("text/plain");
      localIntent.setPackage(str1);
      localIntent.putExtra("android.intent.extra.TEXT", str2);
      try
      {
        startActivityForResult(localIntent, paramInt2);
        return;
      }
      catch (Exception localException)
      {
        switch (paramInt1)
        {
        }
        for (;;)
        {
          paramString1 = null;
          while (paramString1 != null)
          {
            paramString2 = new Intent("android.intent.action.VIEW");
            paramString2.setData(Uri.parse(paramString1));
            try
            {
              startActivityForResult(paramString2, paramInt2);
              return;
            }
            catch (Exception paramString1)
            {
              onActivityResult(paramInt2, 0, null);
              return;
            }
            try
            {
              paramString1 = "https://www.facebook.com/dialog/feed?app_id=181821551957328&link=" + URLEncoder.encode(paramString2, "UTF-8") + "&picture=" + URLEncoder.encode(paramString3, "UTF-8") + "&name=&description=" + URLEncoder.encode(paramString1, "UTF-8") + "&redirect_uri=" + URLEncoder.encode(paramString2, "UTF-8");
            }
            catch (UnsupportedEncodingException paramString1)
            {
              Log.internal("[InMobi]-[RE]-4.4.1", "UTF-8 encoding not supported? What sorcery is this?", paramString1);
            }
            paramString1 = "https://m.google.com/app/plus/x/?v=compose&content=" + URLEncoder.encode(str2, "UTF-8");
            continue;
            paramString1 = "http://twitter.com/home?status=" + URLEncoder.encode(str2, "UTF-8");
          }
        }
        paramString1 = new Intent();
        paramString1.setType("text/plain");
        paramString1.putExtra("android.intent.extra.TEXT", str2);
        try
        {
          startActivityForResult(paramString1, paramInt2);
          return;
        }
        catch (Exception paramString1)
        {
          onActivityResult(paramInt2, 0, null);
        }
      }
      str1 = "";
      continue;
      str1 = "com.google.android.apps.plus";
      continue;
      str1 = "com.twitter.android";
    }
  }
  
  /* Error */
  private void a(long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    // Byte code:
    //   0: new 195	android/content/Intent
    //   3: dup
    //   4: ldc_w 263
    //   7: invokespecial 224	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   10: astore 11
    //   12: aload 11
    //   14: ldc_w 265
    //   17: invokevirtual 202	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   20: pop
    //   21: aload 11
    //   23: ldc_w 267
    //   26: lload_1
    //   27: invokevirtual 270	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   30: pop
    //   31: aload 11
    //   33: ldc_w 272
    //   36: iconst_0
    //   37: invokevirtual 275	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   40: pop
    //   41: aload 11
    //   43: ldc_w 277
    //   46: lload_3
    //   47: invokevirtual 270	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   50: pop
    //   51: aload 11
    //   53: ldc_w 279
    //   56: aload 6
    //   58: invokevirtual 211	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   61: pop
    //   62: aload 11
    //   64: ldc_w 281
    //   67: aload 5
    //   69: invokevirtual 211	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   72: pop
    //   73: aload 11
    //   75: ldc_w 283
    //   78: aload 7
    //   80: invokevirtual 211	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   83: pop
    //   84: aload 8
    //   86: ldc_w 285
    //   89: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   92: ifeq +598 -> 690
    //   95: aload 11
    //   97: ldc_w 287
    //   100: iconst_1
    //   101: invokevirtual 290	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   104: pop
    //   105: ldc 90
    //   107: aload 9
    //   109: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   112: ifne +569 -> 681
    //   115: getstatic 295	android/os/Build$VERSION:SDK_INT	I
    //   118: bipush 8
    //   120: if_icmple +561 -> 681
    //   123: new 136	java/lang/StringBuilder
    //   126: dup
    //   127: invokespecial 137	java/lang/StringBuilder:<init>	()V
    //   130: astore 5
    //   132: new 297	org/json/JSONObject
    //   135: dup
    //   136: aload 9
    //   138: invokespecial 298	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   141: astore 6
    //   143: aload 6
    //   145: ldc_w 300
    //   148: invokevirtual 303	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   151: astore 7
    //   153: aload 7
    //   155: ifnull +570 -> 725
    //   158: ldc 90
    //   160: aload 7
    //   162: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   165: ifne +560 -> 725
    //   168: ldc_w 305
    //   171: aload 7
    //   173: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   176: ifne +36 -> 212
    //   179: ldc_w 307
    //   182: aload 7
    //   184: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   187: ifne +25 -> 212
    //   190: ldc_w 309
    //   193: aload 7
    //   195: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   198: ifne +14 -> 212
    //   201: ldc_w 311
    //   204: aload 7
    //   206: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   209: ifeq +33 -> 242
    //   212: aload 5
    //   214: new 136	java/lang/StringBuilder
    //   217: dup
    //   218: ldc_w 313
    //   221: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   224: aload 7
    //   226: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: ldc_w 315
    //   232: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: pop
    //   242: aload 6
    //   244: ldc_w 317
    //   247: invokevirtual 303	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   250: astore 7
    //   252: aload 7
    //   254: ifnull +46 -> 300
    //   257: ldc 90
    //   259: aload 7
    //   261: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   264: ifne +36 -> 300
    //   267: aload 5
    //   269: new 136	java/lang/StringBuilder
    //   272: dup
    //   273: ldc_w 319
    //   276: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   279: aload 7
    //   281: invokestatic 325	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   284: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   287: ldc_w 315
    //   290: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: pop
    //   300: aload_0
    //   301: aload 6
    //   303: ldc_w 327
    //   306: invokevirtual 303	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   309: invokespecial 329	com/inmobi/androidsdk/IMBrowserActivity:a	(Ljava/lang/String;)Ljava/lang/String;
    //   312: astore 7
    //   314: aload 7
    //   316: ifnull +487 -> 803
    //   319: aload 5
    //   321: new 136	java/lang/StringBuilder
    //   324: dup
    //   325: ldc_w 331
    //   328: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   331: aload 7
    //   333: ldc_w 333
    //   336: ldc_w 335
    //   339: invokevirtual 339	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   342: ldc_w 341
    //   345: ldc_w 343
    //   348: invokevirtual 339	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   351: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: ldc_w 315
    //   357: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: pop
    //   367: aload_0
    //   368: aload 6
    //   370: ldc_w 345
    //   373: invokevirtual 349	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   376: invokespecial 351	com/inmobi/androidsdk/IMBrowserActivity:a	(Lorg/json/JSONArray;)Ljava/lang/String;
    //   379: astore 7
    //   381: aload 7
    //   383: ifnull +33 -> 416
    //   386: aload 5
    //   388: new 136	java/lang/StringBuilder
    //   391: dup
    //   392: ldc_w 353
    //   395: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   398: aload 7
    //   400: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: ldc_w 315
    //   406: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   412: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: pop
    //   416: aload_0
    //   417: aload 6
    //   419: ldc_w 355
    //   422: invokevirtual 349	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   425: bipush -30
    //   427: bipush 31
    //   429: invokespecial 357	com/inmobi/androidsdk/IMBrowserActivity:a	(Lorg/json/JSONArray;II)Ljava/lang/String;
    //   432: astore 7
    //   434: aload 7
    //   436: ifnull +33 -> 469
    //   439: aload 5
    //   441: new 136	java/lang/StringBuilder
    //   444: dup
    //   445: ldc_w 359
    //   448: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload 7
    //   453: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: ldc_w 315
    //   459: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: pop
    //   469: aload_0
    //   470: aload 6
    //   472: ldc_w 361
    //   475: invokevirtual 349	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   478: sipush 65172
    //   481: sipush 365
    //   484: invokespecial 357	com/inmobi/androidsdk/IMBrowserActivity:a	(Lorg/json/JSONArray;II)Ljava/lang/String;
    //   487: astore 7
    //   489: aload 7
    //   491: ifnull +33 -> 524
    //   494: aload 5
    //   496: new 136	java/lang/StringBuilder
    //   499: dup
    //   500: ldc_w 363
    //   503: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   506: aload 7
    //   508: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   511: ldc_w 315
    //   514: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   520: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   523: pop
    //   524: aload_0
    //   525: aload 6
    //   527: ldc_w 365
    //   530: invokevirtual 349	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   533: bipush -3
    //   535: iconst_4
    //   536: invokespecial 357	com/inmobi/androidsdk/IMBrowserActivity:a	(Lorg/json/JSONArray;II)Ljava/lang/String;
    //   539: astore 7
    //   541: aload 7
    //   543: ifnull +33 -> 576
    //   546: aload 5
    //   548: new 136	java/lang/StringBuilder
    //   551: dup
    //   552: ldc_w 367
    //   555: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   558: aload 7
    //   560: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: ldc_w 315
    //   566: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   572: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: pop
    //   576: aload_0
    //   577: aload 6
    //   579: ldc_w 369
    //   582: invokevirtual 349	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   585: iconst_1
    //   586: bipush 12
    //   588: invokespecial 357	com/inmobi/androidsdk/IMBrowserActivity:a	(Lorg/json/JSONArray;II)Ljava/lang/String;
    //   591: astore 6
    //   593: aload 6
    //   595: ifnull +33 -> 628
    //   598: aload 5
    //   600: new 136	java/lang/StringBuilder
    //   603: dup
    //   604: ldc_w 371
    //   607: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   610: aload 6
    //   612: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: ldc_w 315
    //   618: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   621: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   624: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   627: pop
    //   628: ldc -78
    //   630: new 136	java/lang/StringBuilder
    //   633: dup
    //   634: ldc_w 373
    //   637: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   640: aload 5
    //   642: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   645: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   651: invokestatic 376	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   654: ldc 90
    //   656: aload 5
    //   658: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   664: ifne +17 -> 681
    //   667: aload 11
    //   669: ldc_w 378
    //   672: aload 5
    //   674: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   677: invokevirtual 211	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   680: pop
    //   681: aload_0
    //   682: aload 11
    //   684: iload 10
    //   686: invokevirtual 215	com/inmobi/androidsdk/IMBrowserActivity:startActivityForResult	(Landroid/content/Intent;I)V
    //   689: return
    //   690: aload 8
    //   692: ldc_w 380
    //   695: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   698: ifeq -593 -> 105
    //   701: aload 11
    //   703: ldc_w 287
    //   706: iconst_0
    //   707: invokevirtual 290	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   710: pop
    //   711: goto -606 -> 105
    //   714: astore 5
    //   716: aload_0
    //   717: iload 10
    //   719: iconst_0
    //   720: aconst_null
    //   721: invokevirtual 237	com/inmobi/androidsdk/IMBrowserActivity:onActivityResult	(IILandroid/content/Intent;)V
    //   724: return
    //   725: aload_0
    //   726: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   729: ifnull +16 -> 745
    //   732: aload_0
    //   733: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   736: ldc_w 382
    //   739: ldc_w 384
    //   742: invokevirtual 389	com/inmobi/re/container/IMWebView:raiseError	(Ljava/lang/String;Ljava/lang/String;)V
    //   745: aload_0
    //   746: aload 11
    //   748: iload 10
    //   750: invokevirtual 215	com/inmobi/androidsdk/IMBrowserActivity:startActivityForResult	(Landroid/content/Intent;I)V
    //   753: return
    //   754: astore 6
    //   756: ldc -78
    //   758: ldc -76
    //   760: aload 6
    //   762: invokestatic 173	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   765: goto -111 -> 654
    //   768: astore 7
    //   770: aload_0
    //   771: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   774: ifnull +16 -> 790
    //   777: aload_0
    //   778: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   781: ldc_w 391
    //   784: ldc_w 384
    //   787: invokevirtual 389	com/inmobi/re/container/IMWebView:raiseError	(Ljava/lang/String;Ljava/lang/String;)V
    //   790: ldc -78
    //   792: ldc_w 393
    //   795: aload 7
    //   797: invokestatic 173	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   800: goto -500 -> 300
    //   803: aload_0
    //   804: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   807: ifnull -440 -> 367
    //   810: aload_0
    //   811: getfield 85	com/inmobi/androidsdk/IMBrowserActivity:a	Lcom/inmobi/re/container/IMWebView;
    //   814: ldc_w 395
    //   817: ldc_w 384
    //   820: invokevirtual 389	com/inmobi/re/container/IMWebView:raiseError	(Ljava/lang/String;Ljava/lang/String;)V
    //   823: goto -456 -> 367
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	826	0	this	IMBrowserActivity
    //   0	826	1	paramLong1	long
    //   0	826	3	paramLong2	long
    //   0	826	5	paramString1	String
    //   0	826	6	paramString2	String
    //   0	826	7	paramString3	String
    //   0	826	8	paramString4	String
    //   0	826	9	paramString5	String
    //   0	826	10	paramInt	int
    //   10	737	11	localIntent	Intent
    // Exception table:
    //   from	to	target	type
    //   0	105	714	java/lang/Exception
    //   105	132	714	java/lang/Exception
    //   654	681	714	java/lang/Exception
    //   681	689	714	java/lang/Exception
    //   690	711	714	java/lang/Exception
    //   756	765	714	java/lang/Exception
    //   132	153	754	java/lang/Exception
    //   158	212	754	java/lang/Exception
    //   212	242	754	java/lang/Exception
    //   242	252	754	java/lang/Exception
    //   300	314	754	java/lang/Exception
    //   319	367	754	java/lang/Exception
    //   367	381	754	java/lang/Exception
    //   386	416	754	java/lang/Exception
    //   416	434	754	java/lang/Exception
    //   439	469	754	java/lang/Exception
    //   469	489	754	java/lang/Exception
    //   494	524	754	java/lang/Exception
    //   524	541	754	java/lang/Exception
    //   546	576	754	java/lang/Exception
    //   576	593	754	java/lang/Exception
    //   598	628	754	java/lang/Exception
    //   628	654	754	java/lang/Exception
    //   725	745	754	java/lang/Exception
    //   745	753	754	java/lang/Exception
    //   770	790	754	java/lang/Exception
    //   790	800	754	java/lang/Exception
    //   803	823	754	java/lang/Exception
    //   257	300	768	java/lang/Exception
  }
  
  private void a(Intent paramIntent)
  {
    Object localObject = paramIntent.getStringExtra("action");
    int i1 = paramIntent.getIntExtra("id", 0);
    if (((String)localObject).equals("takeCameraPicture"))
    {
      paramIntent = (Uri)paramIntent.getExtras().get("URI");
      localObject = new Intent("android.media.action.IMAGE_CAPTURE");
      ((Intent)localObject).putExtra("output", paramIntent);
    }
    do
    {
      try
      {
        startActivityForResult((Intent)localObject, i1);
        return;
      }
      catch (Exception paramIntent)
      {
        onActivityResult(i1, 0, null);
        return;
      }
      if (((String)localObject).equals("getGalleryImage"))
      {
        paramIntent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        try
        {
          startActivityForResult(paramIntent, i1);
          return;
        }
        catch (Exception paramIntent)
        {
          onActivityResult(i1, 0, null);
          return;
        }
      }
      if (((String)localObject).equals("postToSocial"))
      {
        a(paramIntent.getIntExtra("socialType", 0), paramIntent.getStringExtra("text"), paramIntent.getStringExtra("link"), paramIntent.getStringExtra("image"), i1);
        return;
      }
    } while (!((String)localObject).equals("createCalendarEvent"));
    a(paramIntent.getLongExtra("start", 0L), paramIntent.getLongExtra("end", 0L), paramIntent.getStringExtra("location"), paramIntent.getStringExtra("description"), paramIntent.getStringExtra("summary"), paramIntent.getStringExtra("transparency"), paramIntent.getStringExtra("recurrence"), i1);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setId(100);
    localLinearLayout.setWeightSum(100.0F);
    localLinearLayout.setOnTouchListener(new IMBrowserActivity.b(this));
    localLinearLayout.setBackgroundResource(17301658);
    localLinearLayout.setBackgroundColor(-7829368);
    Object localObject = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), (int)(44.0F * h));
    ((RelativeLayout.LayoutParams)localObject).addRule(12);
    paramViewGroup.addView(localLinearLayout, (ViewGroup.LayoutParams)localObject);
    paramViewGroup = new LinearLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
    weight = 25.0F;
    localObject = new CustomView(this, h, CustomView.SwitchIconType.CLOSE_ICON);
    localLinearLayout.addView((View)localObject, paramViewGroup);
    ((CustomView)localObject).setOnTouchListener(new IMBrowserActivity.g(this));
    localObject = new CustomView(this, h, CustomView.SwitchIconType.REFRESH);
    localLinearLayout.addView((View)localObject, paramViewGroup);
    ((CustomView)localObject).setOnTouchListener(new IMBrowserActivity.h(this));
    localObject = new CustomView(this, h, CustomView.SwitchIconType.BACK);
    localLinearLayout.addView((View)localObject, paramViewGroup);
    ((CustomView)localObject).setOnTouchListener(new IMBrowserActivity.e(this));
    j = new CustomView(this, h, CustomView.SwitchIconType.FORWARD_INACTIVE);
    localLinearLayout.addView(j, paramViewGroup);
    j.setOnTouchListener(new IMBrowserActivity.f(this));
  }
  
  public static int generateId(StartActivityForResultCallback paramStartActivityForResultCallback)
  {
    m += 1;
    l.put(Integer.valueOf(m), paramStartActivityForResultCallback);
    return m;
  }
  
  public static void requestOnAdDismiss(Message paramMessage)
  {
    f = paramMessage;
  }
  
  public static void setExpandedLayout(FrameLayout paramFrameLayout)
  {
    if (paramFrameLayout != null) {
      e = paramFrameLayout;
    }
  }
  
  public static void setExpandedWebview(IMWebView paramIMWebView)
  {
    if (paramIMWebView != null) {
      d = paramIMWebView;
    }
  }
  
  public static void setOriginalActivity(Activity paramActivity)
  {
    if (paramActivity != null) {
      o = paramActivity;
    }
  }
  
  public static void setWebViewListener(IMWebView.IMWebViewListener paramIMWebViewListener)
  {
    c = paramIMWebViewListener;
  }
  
  public static void setWebview(IMWebView paramIMWebView)
  {
    if (paramIMWebView != null) {
      b = paramIMWebView;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    try
    {
      ((StartActivityForResultCallback)l.get(Integer.valueOf(paramInt1))).onActivityResult(paramInt2, paramIntent);
      l.remove(Integer.valueOf(paramInt2));
      if (a == null) {
        finish();
      }
      return;
    }
    catch (Exception paramIntent)
    {
      for (;;)
      {
        Log.internal("[InMobi]-[RE]-4.4.1", "onActivityResult failed", paramIntent);
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (orientation == 2) {
      Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
    }
    for (;;)
    {
      if (a != null) {
        a.onOrientationEventChange();
      }
      super.onConfigurationChanged(paramConfiguration);
      return;
      Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_PORTRAIT");
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    n = paramBundle.getIntExtra("extra_browser_type", 100);
    k = paramBundle.getLongExtra("isAnimationEnabledOnDimiss", 0L);
    Object localObject;
    if (n == 100)
    {
      requestWindowFeature(1);
      if ((Build.VERSION.SDK_INT < 9) || (Build.VERSION.SDK_INT >= 11)) {
        getWindow().setFlags(1024, 1024);
      }
      localObject = (WindowManager)getSystemService("window");
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)localObject).getDefaultDisplay().getMetrics(localDisplayMetrics);
      if (paramBundle.getStringExtra("action") != null) {
        a(paramBundle);
      }
      h = getResourcesgetDisplayMetricsdensity;
      localObject = paramBundle.getStringExtra("extra_url");
      i = Boolean.valueOf(paramBundle.getBooleanExtra("FIRST_INSTANCE", false));
      Log.debug("[InMobi]-[RE]-4.4.1", "IMBrowserActivity-> onCreate");
      CookieSyncManager.createInstance(this);
      CookieSyncManager.getInstance().startSync();
      g = new RelativeLayout(this);
      if (localObject != null)
      {
        boolean bool = paramBundle.getBooleanExtra("QAMODE", false);
        a = new IMWebView(this, c, true, true);
        paramBundle = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        paramBundle.addRule(10);
        paramBundle.addRule(2, 100);
        g.setBackgroundColor(-1);
        g.addView(a, paramBundle);
        a(g);
        a.getSettings().setJavaScriptEnabled(true);
        a.setExternalWebViewClient(p);
        a.getSettings().setLoadWithOverviewMode(true);
        a.getSettings().setUseWideViewPort(true);
        if (Build.VERSION.SDK_INT < 8) {
          break label379;
        }
        a.loadUrl((String)localObject, null);
        if (bool)
        {
          paramBundle = new HashMap();
          paramBundle.put("mk-carrier", "117.97.87.6");
          paramBundle.put("x-real-ip", "117.97.87.6");
        }
        setContentView(g);
      }
    }
    label379:
    do
    {
      return;
      a.loadUrl((String)localObject);
      break;
      if (n == 101)
      {
        b.setActivity(this);
        bmInterstitialController.setActivity(this);
        bmInterstitialController.changeContentAreaForInterstitials(k);
        paramBundle = findViewById(225);
        if (paramBundle != null) {
          paramBundle.setOnClickListener(new IMBrowserActivity.i(this));
        }
        b.setOnKeyListener(new IMBrowserActivity.c(this));
        return;
      }
    } while (n != 102);
    if ((e != null) && (e.getParent() != null)) {
      ((ViewGroup)e.getParent()).removeView(e);
    }
    setContentView(e);
    d.setState(IMWebView.ViewState.EXPANDED);
    dmIsViewable = true;
    dmExpandController.setActivity(this);
    d.setBrowserActivity(this);
    dmExpandController.handleOrientationForExpand();
    paramBundle = findViewById(MRAIDExpandController.EXP_CLOSE_BUTTON);
    if (paramBundle != null) {
      paramBundle.setOnClickListener(new IMBrowserActivity.d(this));
    }
    d.setOnKeyListener(new IMBrowserActivity.a(this));
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    try
    {
      c = null;
      if (a != null) {
        a.mAudioVideoController.releaseAllPlayers();
      }
      if ((f != null) && (i.booleanValue()))
      {
        f.sendToTarget();
        f = null;
      }
      if (b != null)
      {
        bmAudioVideoController.releaseAllPlayers();
        b = null;
      }
      if (e != null) {
        e = null;
      }
      if (d != null) {
        d = null;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in onDestroy ", localException);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    CookieSyncManager.getInstance().stopSync();
  }
  
  protected void onResume()
  {
    super.onResume();
    CookieSyncManager.getInstance().startSync();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.IMBrowserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
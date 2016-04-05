package com.admob.android.ads;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class AdRequester
{
  private static final String ADMOB_ENDPOINT = "http://r.admob.com/ad_source.php";
  private static int REQUEST_TIMEOUT = 0;
  
  static
  {
    int i = 3000;
    REQUEST_TIMEOUT = i;
  }
  
  private static void appendParams(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      int i = paramString2.length();
      if (i <= 0) {}
    }
    try
    {
      Object localObject = "&";
      localObject = paramStringBuilder.append((String)localObject);
      str2 = "UTF-8";
      str2 = URLEncoder.encode(paramString1, str2);
      localObject = ((StringBuilder)localObject).append(str2);
      str2 = "=";
      localObject = ((StringBuilder)localObject).append(str2);
      str2 = "UTF-8";
      str2 = URLEncoder.encode(paramString2, str2);
      ((StringBuilder)localObject).append(str2);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException2)
    {
      for (;;)
      {
        UnsupportedEncodingException localUnsupportedEncodingException1 = localUnsupportedEncodingException2;
        String str1 = "AdMob SDK";
        String str2 = "UTF-8 encoding is not supported on this device.  Ad requests are impossible.";
        Log.e(str1, str2, localUnsupportedEncodingException1);
      }
    }
  }
  
  static String buildParamString(Context paramContext, String paramString1, String paramString2)
  {
    long l4 = 1000L;
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    long l1 = System.currentTimeMillis();
    Object localObject = "z";
    localObject = localStringBuilder.append((String)localObject);
    String str3 = "=";
    localObject = ((StringBuilder)localObject).append(str3);
    long l2 = l1 / l4;
    localObject = ((StringBuilder)localObject).append(l2);
    String str4 = ".";
    localObject = ((StringBuilder)localObject).append(str4);
    long l3 = l1 % l4;
    ((StringBuilder)localObject).append(l3);
    localObject = "rt";
    String str5 = "0";
    appendParams(localStringBuilder, (String)localObject, str5);
    String str1 = AdManager.getPublisherId(paramContext);
    if (str1 == null)
    {
      localObject = new java/lang/IllegalStateException;
      str5 = "Publisher ID is not set!  To serve ads you must set your publisher ID assigned from www.admob.com.  Either add it to AndroidManifest.xml under the <application> tag or call AdManager.setPublisherId().";
      ((IllegalStateException)localObject).<init>(str5);
      throw ((Throwable)localObject);
    }
    localObject = "s";
    appendParams(localStringBuilder, (String)localObject, str1);
    localObject = "f";
    str5 = "html_no_js";
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "y";
    str5 = "text";
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "client_sdk";
    str5 = "1";
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "ex";
    str5 = "1";
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "v";
    str5 = "20091123-ANDROID-3312276cc1406347";
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "t";
    str5 = AdManager.getUserId(paramContext);
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "d[coord]";
    str5 = AdManager.getCoordinatesAsString(paramContext);
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "d[dob]";
    str5 = AdManager.getBirthdayAsString();
    appendParams(localStringBuilder, (String)localObject, str5);
    localObject = "k";
    appendParams(localStringBuilder, (String)localObject, paramString1);
    localObject = "search";
    appendParams(localStringBuilder, (String)localObject, paramString2);
    boolean bool = AdManager.isInTestMode();
    if (bool)
    {
      str2 = "m";
      str5 = "test";
      appendParams(localStringBuilder, str2, str5);
    }
    String str2 = localStringBuilder.toString();
    return str2;
  }
  
  /* Error */
  public static Ad requestAd(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: nop
    //   1: ldc -91
    //   3: astore_3
    //   4: aload_0
    //   5: aload_3
    //   6: invokevirtual 53	android/content/Context:checkCallingOrSelfPermission	(Ljava/lang/String;)I
    //   9: istore_3
    //   10: iconst_m1
    //   11: istore 4
    //   13: iload_3
    //   14: iload 4
    //   16: if_icmpne +10 -> 26
    //   19: ldc 36
    //   21: astore_3
    //   22: aload_3
    //   23: invokestatic 48	com/admob/android/ads/AdManager:clientError	(Ljava/lang/String;)V
    //   26: aload_0
    //   27: invokestatic 57	com/admob/android/ads/AdMobLocalizer:init	(Landroid/content/Context;)V
    //   30: aconst_null
    //   31: astore_3
    //   32: invokestatic 133	java/lang/System:currentTimeMillis	()J
    //   35: lstore 8
    //   37: new 244	java/lang/StringBuilder
    //   40: astore 4
    //   42: aload 4
    //   44: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   47: aconst_null
    //   48: astore 5
    //   50: aload_0
    //   51: aload_1
    //   52: aload_2
    //   53: invokestatic 50	com/admob/android/ads/AdRequester:buildParamString	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   56: astore 6
    //   58: aconst_null
    //   59: astore 10
    //   61: aconst_null
    //   62: astore 7
    //   64: new 201	java/net/URL
    //   67: astore_1
    //   68: ldc -59
    //   70: astore_2
    //   71: aload_1
    //   72: aload_2
    //   73: invokespecial 20	java/net/URL:<init>	(Ljava/lang/String;)V
    //   76: aload_1
    //   77: invokevirtual 83	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   80: astore_2
    //   81: aload_2
    //   82: checkcast 243	java/net/HttpURLConnection
    //   85: astore_2
    //   86: ldc_w 275
    //   89: astore_1
    //   90: aload_2
    //   91: aload_1
    //   92: invokevirtual 262	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   95: iconst_1
    //   96: istore_1
    //   97: aload_2
    //   98: iload_1
    //   99: invokevirtual 64	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   102: ldc -68
    //   104: astore_1
    //   105: invokestatic 191	com/admob/android/ads/AdManager:getUserAgent	()Ljava/lang/String;
    //   108: astore 11
    //   110: aload_2
    //   111: aload_1
    //   112: aload 11
    //   114: invokevirtual 199	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   117: ldc_w 293
    //   120: astore_1
    //   121: ldc_w 278
    //   124: astore 11
    //   126: aload_2
    //   127: aload_1
    //   128: aload 11
    //   130: invokevirtual 199	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: ldc 16
    //   135: astore_1
    //   136: aload 6
    //   138: invokevirtual 190	java/lang/String:length	()I
    //   141: istore 11
    //   143: iload 11
    //   145: invokestatic 185	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   148: astore 11
    //   150: aload_2
    //   151: aload_1
    //   152: aload 11
    //   154: invokevirtual 199	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: getstatic 276	com/admob/android/ads/AdRequester:REQUEST_TIMEOUT	I
    //   160: istore_1
    //   161: aload_2
    //   162: iload_1
    //   163: invokevirtual 221	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   166: getstatic 276	com/admob/android/ads/AdRequester:REQUEST_TIMEOUT	I
    //   169: istore_1
    //   170: aload_2
    //   171: iload_1
    //   172: invokevirtual 172	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   175: aload 6
    //   177: astore_1
    //   178: ldc -79
    //   180: astore 6
    //   182: iconst_3
    //   183: istore 11
    //   185: aload 6
    //   187: iload 11
    //   189: invokestatic 184	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   192: istore 6
    //   194: iload 6
    //   196: ifeq +53 -> 249
    //   199: ldc -79
    //   201: astore 6
    //   203: new 244	java/lang/StringBuilder
    //   206: astore 11
    //   208: aload 11
    //   210: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   213: ldc -122
    //   215: astore 12
    //   217: aload 11
    //   219: aload 12
    //   221: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: astore 11
    //   226: aload 11
    //   228: aload_1
    //   229: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: astore 11
    //   234: aload 11
    //   236: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: astore 11
    //   241: aload 6
    //   243: aload 11
    //   245: invokestatic 61	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   248: pop
    //   249: aload_2
    //   250: invokevirtual 42	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   253: astore 6
    //   255: new 181	java/io/BufferedWriter
    //   258: astore 11
    //   260: new 87	java/io/OutputStreamWriter
    //   263: astore 12
    //   265: aload 12
    //   267: aload 6
    //   269: invokespecial 69	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   272: aload 11
    //   274: aload 12
    //   276: invokespecial 138	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   279: aload 11
    //   281: aload_1
    //   282: invokevirtual 284	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   285: aload 11
    //   287: invokevirtual 58	java/io/BufferedWriter:close	()V
    //   290: new 3	java/io/BufferedReader
    //   293: astore 6
    //   295: new 19	java/io/InputStreamReader
    //   298: astore_1
    //   299: aload_2
    //   300: invokevirtual 86	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   303: astore 10
    //   305: aload_1
    //   306: aload 10
    //   308: invokespecial 98	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   311: aload 6
    //   313: aload_1
    //   314: invokespecial 294	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   317: aload 6
    //   319: invokevirtual 72	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   322: astore_1
    //   323: aload_1
    //   324: ifnull +174 -> 498
    //   327: aload 4
    //   329: aload_1
    //   330: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: pop
    //   334: goto -17 -> 317
    //   337: astore_1
    //   338: aload 6
    //   340: astore_2
    //   341: aload_1
    //   342: astore 6
    //   344: aload 5
    //   346: astore_1
    //   347: aload 11
    //   349: astore 5
    //   351: aload 5
    //   353: ifnull +8 -> 361
    //   356: aload 5
    //   358: invokevirtual 58	java/io/BufferedWriter:close	()V
    //   361: aload_2
    //   362: ifnull +7 -> 369
    //   365: aload_2
    //   366: invokevirtual 295	java/io/BufferedReader:close	()V
    //   369: aload 6
    //   371: athrow
    //   372: astore_2
    //   373: aload_2
    //   374: astore 13
    //   376: aload_1
    //   377: astore_2
    //   378: aload 13
    //   380: astore_1
    //   381: ldc -79
    //   383: astore 5
    //   385: ldc 112
    //   387: astore 6
    //   389: aload 5
    //   391: aload 6
    //   393: aload_1
    //   394: invokestatic 170	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   397: pop
    //   398: aload 4
    //   400: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: astore_1
    //   404: aload_1
    //   405: ifnull +264 -> 669
    //   408: aload_0
    //   409: aload_1
    //   410: aload_2
    //   411: invokestatic 66	com/admob/android/ads/Ad:createAd	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;
    //   414: astore_0
    //   415: ldc -79
    //   417: astore_1
    //   418: iconst_4
    //   419: istore_2
    //   420: aload_1
    //   421: iload_2
    //   422: invokestatic 184	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   425: istore_1
    //   426: iload_1
    //   427: ifeq +69 -> 496
    //   430: invokestatic 133	java/lang/System:currentTimeMillis	()J
    //   433: lstore_1
    //   434: lload_1
    //   435: lload 8
    //   437: lsub
    //   438: lstore_1
    //   439: aload_0
    //   440: ifnonnull +99 -> 539
    //   443: ldc -79
    //   445: astore_3
    //   446: new 244	java/lang/StringBuilder
    //   449: astore 4
    //   451: aload 4
    //   453: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   456: ldc 77
    //   458: astore 5
    //   460: aload 4
    //   462: aload 5
    //   464: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: astore 4
    //   469: aload 4
    //   471: lload_1
    //   472: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   475: astore_1
    //   476: ldc 56
    //   478: astore_2
    //   479: aload_1
    //   480: aload_2
    //   481: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: astore_1
    //   485: aload_1
    //   486: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   489: astore_1
    //   490: aload_3
    //   491: aload_1
    //   492: invokestatic 297	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   495: pop
    //   496: aload_0
    //   497: areturn
    //   498: ldc -111
    //   500: astore_1
    //   501: aload_2
    //   502: aload_1
    //   503: invokevirtual 132	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   506: astore_1
    //   507: aload_1
    //   508: ifnonnull +6 -> 514
    //   511: ldc -67
    //   513: astore_1
    //   514: aload 11
    //   516: ifnull +8 -> 524
    //   519: aload 11
    //   521: invokevirtual 58	java/io/BufferedWriter:close	()V
    //   524: aload 6
    //   526: ifnull +8 -> 534
    //   529: aload 6
    //   531: invokevirtual 295	java/io/BufferedReader:close	()V
    //   534: aload_1
    //   535: astore_2
    //   536: goto -138 -> 398
    //   539: ldc -79
    //   541: astore_3
    //   542: new 244	java/lang/StringBuilder
    //   545: astore 4
    //   547: aload 4
    //   549: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   552: ldc -105
    //   554: astore 5
    //   556: aload 4
    //   558: aload 5
    //   560: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: astore 4
    //   565: aload 4
    //   567: lload_1
    //   568: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   571: astore_1
    //   572: ldc_w 286
    //   575: astore_2
    //   576: aload_1
    //   577: aload_2
    //   578: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   581: astore_1
    //   582: aload_1
    //   583: aload_0
    //   584: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   587: astore_1
    //   588: aload_1
    //   589: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   592: astore_1
    //   593: aload_3
    //   594: aload_1
    //   595: invokestatic 297	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   598: pop
    //   599: goto -103 -> 496
    //   602: astore_1
    //   603: aload 5
    //   605: astore_2
    //   606: goto -225 -> 381
    //   609: astore_2
    //   610: goto -241 -> 369
    //   613: astore_1
    //   614: aload_1
    //   615: astore 6
    //   617: aload 7
    //   619: astore_2
    //   620: aload 5
    //   622: astore_1
    //   623: aload 10
    //   625: astore 5
    //   627: goto -276 -> 351
    //   630: astore_1
    //   631: aload_1
    //   632: astore 6
    //   634: aload 7
    //   636: astore_2
    //   637: aload 5
    //   639: astore_1
    //   640: aload 11
    //   642: astore 5
    //   644: goto -293 -> 351
    //   647: astore_2
    //   648: aload 11
    //   650: astore 5
    //   652: aload 6
    //   654: astore 13
    //   656: aload_2
    //   657: astore 6
    //   659: aload 13
    //   661: astore_2
    //   662: goto -311 -> 351
    //   665: astore_2
    //   666: goto -132 -> 534
    //   669: aload_3
    //   670: astore_0
    //   671: goto -256 -> 415
    //   674: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	675	0	paramContext	Context
    //   0	675	1	paramString1	String
    //   0	675	2	paramString2	String
    //   3	3	3	str1	String
    //   9	8	3	i	int
    //   21	649	3	str2	String
    //   11	6	4	j	int
    //   40	526	4	localStringBuilder	StringBuilder
    //   48	603	5	localObject1	Object
    //   56	130	6	str3	String
    //   192	3	6	bool	boolean
    //   201	457	6	localObject2	Object
    //   62	573	7	localObject3	Object
    //   35	401	8	l	long
    //   59	565	10	localInputStream	java.io.InputStream
    //   108	21	11	str4	String
    //   141	3	11	k	int
    //   148	5	11	str5	String
    //   183	5	11	m	int
    //   206	443	11	localObject4	Object
    //   215	60	12	localObject5	Object
    //   374	286	13	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   317	322	337	finally
    //   327	334	337	finally
    //   498	501	337	finally
    //   369	372	372	java/lang/Exception
    //   50	56	602	java/lang/Exception
    //   356	361	609	java/lang/Exception
    //   365	369	609	java/lang/Exception
    //   64	68	613	finally
    //   71	76	613	finally
    //   81	86	613	finally
    //   90	95	613	finally
    //   97	102	613	finally
    //   105	108	613	finally
    //   110	117	613	finally
    //   121	126	613	finally
    //   133	136	613	finally
    //   143	148	613	finally
    //   150	157	613	finally
    //   161	166	613	finally
    //   170	175	613	finally
    //   178	182	613	finally
    //   185	192	613	finally
    //   199	203	613	finally
    //   208	213	613	finally
    //   217	224	613	finally
    //   226	232	613	finally
    //   234	239	613	finally
    //   241	249	613	finally
    //   255	260	613	finally
    //   265	272	613	finally
    //   279	285	630	finally
    //   290	295	630	finally
    //   299	303	630	finally
    //   305	311	630	finally
    //   511	514	647	finally
    //   519	524	665	java/lang/Exception
    //   529	534	665	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdRequester
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
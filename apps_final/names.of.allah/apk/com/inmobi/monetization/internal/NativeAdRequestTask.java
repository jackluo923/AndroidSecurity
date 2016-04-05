package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.bootstrapper.PkParams;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;

public class NativeAdRequestTask
  implements Runnable
{
  byte[] a;
  String b = "";
  String c = "";
  String d = "";
  private NativeAdRequest e;
  private INativeAdController f;
  private HttpURLConnection g;
  private final int h = 8;
  private final int i = 16;
  private byte[] j;
  private byte[] k;
  
  NativeAdRequestTask(NativeAdRequest paramNativeAdRequest, INativeAdController paramINativeAdController)
  {
    e = paramNativeAdRequest;
    f = paramINativeAdController;
  }
  
  private String a(String paramString, INativeAdController paramINativeAdController)
  {
    a();
    j = InternalSDKUtil.keag();
    b = PkInitilaizer.getConfigParams().getExponent();
    c = PkInitilaizer.getConfigParams().getModulus();
    d = PkInitilaizer.getConfigParams().getVersion();
    if ((b.equals("")) || (c.equals("")) || (d.equals("")))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception retreiving Ad due to key problem");
      return null;
    }
    paramString = InternalSDKUtil.SeMeGe(paramString, j, k, a, c, b);
    paramINativeAdController = new StringBuilder();
    paramINativeAdController.append("sm=");
    paramINativeAdController.append(paramString);
    paramINativeAdController.append("&sn=");
    paramINativeAdController.append(d);
    paramString = paramINativeAdController.toString();
    Log.debug("[InMobi]-[Network]-4.4.1", paramString);
    return paramString;
  }
  
  private HttpURLConnection a(String paramString)
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    a(paramString);
    return paramString;
  }
  
  private void a()
  {
    try
    {
      a = new byte[8];
      SecureRandom localSecureRandom = new SecureRandom();
      localSecureRandom.nextBytes(a);
      k = new byte[16];
      localSecureRandom.nextBytes(k);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception closing resource: " + paramCloseable, localIOException);
    }
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection)
  {
    int m = Initializer.getConfigParams().getFetchTimeOut();
    paramHttpURLConnection.setConnectTimeout(m);
    paramHttpURLConnection.setReadTimeout(m);
    paramHttpURLConnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
    paramHttpURLConnection.setUseCaches(false);
    paramHttpURLConnection.setDoOutput(true);
    paramHttpURLConnection.setDoInput(true);
    paramHttpURLConnection.setRequestMethod("POST");
    paramHttpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: ldc 82
    //   5: new 100	java/lang/StringBuilder
    //   8: dup
    //   9: ldc -49
    //   11: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   18: invokevirtual 212	java/net/HttpURLConnection:getResponseCode	()I
    //   21: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   24: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   30: aload_0
    //   31: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   34: invokevirtual 212	java/net/HttpURLConnection:getResponseCode	()I
    //   37: istore 7
    //   39: aload_0
    //   40: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   43: ldc -39
    //   45: invokevirtual 221	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   48: astore_1
    //   49: ldc 82
    //   51: new 100	java/lang/StringBuilder
    //   54: dup
    //   55: ldc -33
    //   57: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_1
    //   61: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   74: ldc -31
    //   76: invokevirtual 221	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   79: astore_1
    //   80: aload_1
    //   81: ifnull +24 -> 105
    //   84: ldc 82
    //   86: new 100	java/lang/StringBuilder
    //   89: dup
    //   90: ldc -29
    //   92: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   95: aload_1
    //   96: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: iload 7
    //   107: sipush 200
    //   110: if_icmpne +507 -> 617
    //   113: new 229	java/io/BufferedReader
    //   116: dup
    //   117: new 231	java/io/InputStreamReader
    //   120: dup
    //   121: aload_0
    //   122: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   125: invokevirtual 235	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   128: ldc -19
    //   130: invokespecial 240	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   133: invokespecial 243	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   136: astore_1
    //   137: new 100	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   144: astore_2
    //   145: aload_1
    //   146: invokevirtual 246	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   149: astore_3
    //   150: aload_3
    //   151: ifnull +60 -> 211
    //   154: aload_2
    //   155: aload_3
    //   156: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: goto -15 -> 145
    //   163: astore_1
    //   164: aload_0
    //   165: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   168: invokevirtual 249	java/net/HttpURLConnection:disconnect	()V
    //   171: aload_0
    //   172: aconst_null
    //   173: invokespecial 251	com/inmobi/monetization/internal/NativeAdRequestTask:a	(Ljava/io/Closeable;)V
    //   176: aload_1
    //   177: athrow
    //   178: astore_1
    //   179: ldc -3
    //   181: ldc -1
    //   183: aload_1
    //   184: invokestatic 258	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   187: aload_0
    //   188: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   191: ifnull +19 -> 210
    //   194: aload_0
    //   195: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   198: aload_0
    //   199: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   202: getstatic 264	com/inmobi/monetization/IMErrorCode:INTERNAL_ERROR	Lcom/inmobi/monetization/IMErrorCode;
    //   205: invokeinterface 270 3 0
    //   210: return
    //   211: aload_2
    //   212: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: new 76	java/lang/String
    //   219: dup
    //   220: aload_2
    //   221: invokevirtual 273	java/lang/String:getBytes	()[B
    //   224: iconst_0
    //   225: invokestatic 279	com/inmobi/commons/internal/Base64:decode	([BI)[B
    //   228: aload_0
    //   229: getfield 56	com/inmobi/monetization/internal/NativeAdRequestTask:j	[B
    //   232: aload_0
    //   233: getfield 92	com/inmobi/monetization/internal/NativeAdRequestTask:k	[B
    //   236: invokestatic 283	com/inmobi/commons/internal/InternalSDKUtil:DeAe	([B[B[B)[B
    //   239: invokespecial 285	java/lang/String:<init>	([B)V
    //   242: astore_1
    //   243: aload_1
    //   244: ifnull +117 -> 361
    //   247: new 287	org/json/JSONObject
    //   250: dup
    //   251: aload_1
    //   252: invokespecial 288	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   255: ldc_w 290
    //   258: invokevirtual 294	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   261: astore_1
    //   262: aload_1
    //   263: ifnull +41 -> 304
    //   266: aload_1
    //   267: invokevirtual 299	org/json/JSONArray:length	()I
    //   270: ifne +127 -> 397
    //   273: ldc 82
    //   275: ldc_w 301
    //   278: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   281: aload_0
    //   282: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   285: ifnull +19 -> 304
    //   288: aload_0
    //   289: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   292: aload_0
    //   293: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   296: getstatic 304	com/inmobi/monetization/IMErrorCode:NO_FILL	Lcom/inmobi/monetization/IMErrorCode;
    //   299: invokeinterface 270 3 0
    //   304: aload_0
    //   305: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   308: invokevirtual 249	java/net/HttpURLConnection:disconnect	()V
    //   311: aload_0
    //   312: aconst_null
    //   313: invokespecial 251	com/inmobi/monetization/internal/NativeAdRequestTask:a	(Ljava/io/Closeable;)V
    //   316: return
    //   317: astore_1
    //   318: ldc -3
    //   320: ldc_w 306
    //   323: aload_1
    //   324: invokestatic 258	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   327: aload_0
    //   328: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   331: ifnull -121 -> 210
    //   334: aload_0
    //   335: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   338: aload_0
    //   339: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   342: getstatic 264	com/inmobi/monetization/IMErrorCode:INTERNAL_ERROR	Lcom/inmobi/monetization/IMErrorCode;
    //   345: invokeinterface 270 3 0
    //   350: return
    //   351: astore_1
    //   352: aload_1
    //   353: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   356: aconst_null
    //   357: astore_1
    //   358: goto -115 -> 243
    //   361: aload_0
    //   362: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   365: ifnull +335 -> 700
    //   368: aload_0
    //   369: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   372: aload_0
    //   373: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   376: getstatic 264	com/inmobi/monetization/IMErrorCode:INTERNAL_ERROR	Lcom/inmobi/monetization/IMErrorCode;
    //   379: invokeinterface 270 3 0
    //   384: aload_0
    //   385: getfield 209	com/inmobi/monetization/internal/NativeAdRequestTask:g	Ljava/net/HttpURLConnection;
    //   388: invokevirtual 249	java/net/HttpURLConnection:disconnect	()V
    //   391: aload_0
    //   392: aconst_null
    //   393: invokespecial 251	com/inmobi/monetization/internal/NativeAdRequestTask:a	(Ljava/io/Closeable;)V
    //   396: return
    //   397: new 308	java/util/ArrayList
    //   400: dup
    //   401: invokespecial 309	java/util/ArrayList:<init>	()V
    //   404: astore_2
    //   405: aload_1
    //   406: invokevirtual 299	org/json/JSONArray:length	()I
    //   409: istore 9
    //   411: invokestatic 161	com/inmobi/androidsdk/bootstrapper/Initializer:getConfigParams	()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;
    //   414: invokevirtual 313	com/inmobi/androidsdk/bootstrapper/ConfigParams:getNativeSdkConfigParams	()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;
    //   417: invokevirtual 318	com/inmobi/androidsdk/bootstrapper/NativeConfigParams:getmFetchLimit	()I
    //   420: istore 7
    //   422: iload 9
    //   424: iload 7
    //   426: if_icmple +267 -> 693
    //   429: iload 8
    //   431: iload 7
    //   433: if_icmpge +119 -> 552
    //   436: aload_1
    //   437: iload 8
    //   439: invokevirtual 322	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   442: astore_3
    //   443: aload_3
    //   444: ldc_w 324
    //   447: invokevirtual 327	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   450: astore 4
    //   452: aload_3
    //   453: ldc_w 329
    //   456: invokevirtual 327	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   459: astore 5
    //   461: aload_3
    //   462: ldc_w 331
    //   465: invokevirtual 327	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   468: astore 6
    //   470: aload 4
    //   472: ifnull +233 -> 705
    //   475: ldc 34
    //   477: aload 4
    //   479: invokevirtual 334	java/lang/String:trim	()Ljava/lang/String;
    //   482: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   485: ifeq +6 -> 491
    //   488: goto +217 -> 705
    //   491: aload 5
    //   493: ifnull +212 -> 705
    //   496: ldc 34
    //   498: aload 5
    //   500: invokevirtual 334	java/lang/String:trim	()Ljava/lang/String;
    //   503: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   506: ifne +199 -> 705
    //   509: aload 6
    //   511: ifnull +194 -> 705
    //   514: ldc 34
    //   516: aload 6
    //   518: invokevirtual 334	java/lang/String:trim	()Ljava/lang/String;
    //   521: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   524: ifne +181 -> 705
    //   527: aload_2
    //   528: aload_3
    //   529: invokevirtual 335	org/json/JSONObject:toString	()Ljava/lang/String;
    //   532: invokevirtual 338	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   535: pop
    //   536: goto +169 -> 705
    //   539: astore_3
    //   540: ldc -3
    //   542: ldc_w 340
    //   545: aload_3
    //   546: invokestatic 258	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   549: goto +156 -> 705
    //   552: aload_0
    //   553: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   556: ifnull -252 -> 304
    //   559: aload_2
    //   560: invokevirtual 343	java/util/ArrayList:size	()I
    //   563: ifle +27 -> 590
    //   566: aload_0
    //   567: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   570: aload_0
    //   571: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   574: new 345	com/inmobi/monetization/internal/NativeAdResponse
    //   577: dup
    //   578: aload_2
    //   579: invokespecial 348	com/inmobi/monetization/internal/NativeAdResponse:<init>	(Ljava/util/List;)V
    //   582: invokeinterface 352 3 0
    //   587: goto -283 -> 304
    //   590: ldc 82
    //   592: ldc_w 354
    //   595: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   598: aload_0
    //   599: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   602: aload_0
    //   603: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   606: getstatic 264	com/inmobi/monetization/IMErrorCode:INTERNAL_ERROR	Lcom/inmobi/monetization/IMErrorCode;
    //   609: invokeinterface 270 3 0
    //   614: goto -310 -> 304
    //   617: iload 7
    //   619: sipush 400
    //   622: if_icmpne +37 -> 659
    //   625: ldc 82
    //   627: ldc_w 356
    //   630: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   633: aload_0
    //   634: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   637: ifnull -333 -> 304
    //   640: aload_0
    //   641: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   644: aload_0
    //   645: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   648: getstatic 359	com/inmobi/monetization/IMErrorCode:INVALID_REQUEST	Lcom/inmobi/monetization/IMErrorCode;
    //   651: invokeinterface 270 3 0
    //   656: goto -352 -> 304
    //   659: ldc 82
    //   661: ldc_w 354
    //   664: invokestatic 90	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   667: aload_0
    //   668: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   671: ifnull -367 -> 304
    //   674: aload_0
    //   675: getfield 44	com/inmobi/monetization/internal/NativeAdRequestTask:f	Lcom/inmobi/monetization/internal/abstraction/INativeAdController;
    //   678: aload_0
    //   679: getfield 42	com/inmobi/monetization/internal/NativeAdRequestTask:e	Lcom/inmobi/monetization/internal/NativeAdRequest;
    //   682: getstatic 264	com/inmobi/monetization/IMErrorCode:INTERNAL_ERROR	Lcom/inmobi/monetization/IMErrorCode;
    //   685: invokeinterface 270 3 0
    //   690: goto -386 -> 304
    //   693: iload 9
    //   695: istore 7
    //   697: goto -268 -> 429
    //   700: aload_2
    //   701: astore_1
    //   702: goto -455 -> 247
    //   705: iload 8
    //   707: iconst_1
    //   708: iadd
    //   709: istore 8
    //   711: goto -282 -> 429
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	714	0	this	NativeAdRequestTask
    //   48	98	1	localObject1	Object
    //   163	14	1	localObject2	Object
    //   178	6	1	localException1	Exception
    //   242	25	1	localObject3	Object
    //   317	7	1	localOutOfMemoryError	OutOfMemoryError
    //   351	2	1	localException2	Exception
    //   357	345	1	localObject4	Object
    //   144	557	2	localObject5	Object
    //   149	380	3	localObject6	Object
    //   539	7	3	localException3	Exception
    //   450	28	4	str1	String
    //   459	40	5	str2	String
    //   468	49	6	str3	String
    //   37	659	7	m	int
    //   1	709	8	n	int
    //   409	285	9	i1	int
    // Exception table:
    //   from	to	target	type
    //   113	145	163	finally
    //   145	150	163	finally
    //   154	160	163	finally
    //   211	216	163	finally
    //   216	243	163	finally
    //   247	262	163	finally
    //   266	304	163	finally
    //   352	356	163	finally
    //   361	384	163	finally
    //   397	422	163	finally
    //   436	470	163	finally
    //   475	488	163	finally
    //   496	509	163	finally
    //   514	536	163	finally
    //   540	549	163	finally
    //   552	587	163	finally
    //   590	614	163	finally
    //   625	656	163	finally
    //   659	690	163	finally
    //   3	80	178	java/lang/Exception
    //   84	105	178	java/lang/Exception
    //   164	178	178	java/lang/Exception
    //   304	316	178	java/lang/Exception
    //   384	396	178	java/lang/Exception
    //   3	80	317	java/lang/OutOfMemoryError
    //   84	105	317	java/lang/OutOfMemoryError
    //   164	178	317	java/lang/OutOfMemoryError
    //   304	316	317	java/lang/OutOfMemoryError
    //   384	396	317	java/lang/OutOfMemoryError
    //   216	243	351	java/lang/Exception
    //   436	470	539	java/lang/Exception
    //   475	488	539	java/lang/Exception
    //   496	509	539	java/lang/Exception
    //   514	536	539	java/lang/Exception
  }
  
  private void b(String paramString)
  {
    g.setRequestProperty("Content-Length", Integer.toString(paramString.length()));
    try
    {
      BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(g.getOutputStream()));
      a(localBufferedWriter);
    }
    finally
    {
      try
      {
        localBufferedWriter.write(paramString);
        a(localBufferedWriter);
        return;
      }
      finally {}
      paramString = finally;
      localBufferedWriter = null;
    }
    throw paramString;
  }
  
  public void run()
  {
    try
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Ad Serving URL: http://i.w.inmobi.com/showad.asm");
      String str = e.buildPostBody();
      Log.internal("[InMobi]-[Network]-4.4.1", "Native Unencrypted Postbody" + str);
      str = a(str, f);
      g = a("http://i.w.inmobi.com/showad.asm");
      if (str != null)
      {
        b(str);
        b();
        return;
      }
      if (f != null)
      {
        f.onAdRequestFailed(e, IMErrorCode.INTERNAL_ERROR);
        return;
      }
    }
    catch (Exception localException)
    {
      if (f != null) {
        f.onAdRequestFailed(e, IMErrorCode.NETWORK_ERROR);
      }
      Log.debug("[InMobi]-[Monetization]", "Failed to get native ads", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.NativeAdRequestTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
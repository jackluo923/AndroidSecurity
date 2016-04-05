package com.appyet.manager;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.appyet.a.f;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.x;
import java.net.URL;
import java.security.KeyStore;
import org.apache.http.HttpVersion;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public final class bl
{
  public static String a = "esaza6apret";
  private ApplicationContext b;
  private int c;
  private int d;
  
  public bl(ApplicationContext paramApplicationContext)
  {
    b = paramApplicationContext;
    c = 46000;
    d = 46000;
  }
  
  public static String a(String paramString)
  {
    try
    {
      String str = new URL(paramString).getHost();
      paramString = str;
      if (str.indexOf('.') != str.lastIndexOf('.')) {
        paramString = str.substring(str.indexOf('.') + 1);
      }
      return paramString;
    }
    catch (Exception paramString)
    {
      d.a(paramString);
    }
    return null;
  }
  
  private static void a(DefaultHttpClient paramDefaultHttpClient)
  {
    if (paramDefaultHttpClient != null) {}
    try
    {
      if (paramDefaultHttpClient.getConnectionManager() != null) {
        paramDefaultHttpClient.getConnectionManager().shutdown();
      }
      return;
    }
    catch (Exception paramDefaultHttpClient)
    {
      d.a(paramDefaultHttpClient);
    }
  }
  
  public static boolean a(f paramf)
  {
    return (paramf != null) && (b != null) && (f == 200);
  }
  
  private DefaultHttpClient b()
  {
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new x((KeyStore)localObject);
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, c);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, d);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      localObject = new DefaultHttpClient(new SingleClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      ((DefaultHttpClient)localObject).setHttpRequestRetryHandler(new bm(this));
      ((DefaultHttpClient)localObject).setRedirectHandler(new bn(this));
      return (DefaultHttpClient)localObject;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return new DefaultHttpClient();
  }
  
  public static void b(f paramf)
  {
    if (paramf != null) {
      a(a);
    }
  }
  
  /* Error */
  public final f a(com.appyet.a.d paramd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 74	com/appyet/a/f
    //   6: dup
    //   7: invokespecial 198	com/appyet/a/f:<init>	()V
    //   10: astore 7
    //   12: aload_1
    //   13: getfield 201	com/appyet/a/d:a	Ljava/lang/String;
    //   16: ifnonnull +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: new 203	java/net/URI
    //   24: dup
    //   25: aload_1
    //   26: getfield 201	com/appyet/a/d:a	Ljava/lang/String;
    //   29: ldc -51
    //   31: ldc -49
    //   33: invokevirtual 211	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   36: invokespecial 212	java/net/URI:<init>	(Ljava/lang/String;)V
    //   39: astore_2
    //   40: aload_1
    //   41: getfield 215	com/appyet/a/d:f	Lcom/appyet/a/e;
    //   44: getstatic 219	com/appyet/a/e:a	Lcom/appyet/a/e;
    //   47: if_acmpne +828 -> 875
    //   50: new 221	org/apache/http/client/methods/HttpGet
    //   53: dup
    //   54: aload_2
    //   55: invokespecial 224	org/apache/http/client/methods/HttpGet:<init>	(Ljava/net/URI;)V
    //   58: astore 5
    //   60: aload_1
    //   61: getfield 226	com/appyet/a/d:b	Ljava/lang/String;
    //   64: ifnull +76 -> 140
    //   67: aload_1
    //   68: getfield 226	com/appyet/a/d:b	Ljava/lang/String;
    //   71: invokevirtual 230	java/lang/String:length	()I
    //   74: ifle +66 -> 140
    //   77: aload_1
    //   78: getfield 232	com/appyet/a/d:c	Ljava/lang/String;
    //   81: ifnull +59 -> 140
    //   84: new 234	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   91: aload_1
    //   92: getfield 226	com/appyet/a/d:b	Ljava/lang/String;
    //   95: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: ldc -15
    //   100: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_1
    //   104: getfield 232	com/appyet/a/d:c	Ljava/lang/String;
    //   107: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 248	com/appyet/f/j:b	(Ljava/lang/String;)Ljava/lang/String;
    //   116: astore_2
    //   117: aload 5
    //   119: ldc -6
    //   121: new 234	java/lang/StringBuilder
    //   124: dup
    //   125: ldc -4
    //   127: invokespecial 253	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_2
    //   131: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokevirtual 257	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   140: aload 5
    //   142: ldc_w 259
    //   145: ldc_w 261
    //   148: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: aload 5
    //   153: ldc_w 266
    //   156: ldc_w 268
    //   159: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload 5
    //   164: ldc_w 270
    //   167: ldc_w 272
    //   170: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: aload 5
    //   175: ldc_w 274
    //   178: ldc_w 276
    //   181: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   184: aload 5
    //   186: ldc_w 278
    //   189: aload_0
    //   190: getfield 24	com/appyet/manager/bl:b	Lcom/appyet/context/ApplicationContext;
    //   193: getfield 283	com/appyet/context/ApplicationContext:v	Ljava/lang/String;
    //   196: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   199: aload 5
    //   201: ldc_w 285
    //   204: aload_0
    //   205: getfield 24	com/appyet/manager/bl:b	Lcom/appyet/context/ApplicationContext;
    //   208: invokestatic 290	com/appyet/manager/ar:c	(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;
    //   211: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   214: aload_1
    //   215: getfield 293	com/appyet/a/d:e	Ljava/lang/String;
    //   218: ifnull +121 -> 339
    //   221: aload_1
    //   222: getfield 293	com/appyet/a/d:e	Ljava/lang/String;
    //   225: ldc_w 295
    //   228: invokevirtual 299	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   231: ifne +108 -> 339
    //   234: aload 5
    //   236: ldc_w 301
    //   239: aload_1
    //   240: getfield 293	com/appyet/a/d:e	Ljava/lang/String;
    //   243: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   246: aload_1
    //   247: getfield 305	com/appyet/a/d:g	Ljava/util/List;
    //   250: invokeinterface 311 1 0
    //   255: astore_2
    //   256: aload_2
    //   257: invokeinterface 317 1 0
    //   262: ifeq +149 -> 411
    //   265: aload_2
    //   266: invokeinterface 321 1 0
    //   271: checkcast 323	org/apache/http/NameValuePair
    //   274: astore_3
    //   275: aload 5
    //   277: aload_3
    //   278: invokeinterface 326 1 0
    //   283: aload_3
    //   284: invokeinterface 329 1 0
    //   289: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: goto -36 -> 256
    //   295: astore_1
    //   296: aconst_null
    //   297: astore_2
    //   298: aconst_null
    //   299: astore_3
    //   300: aload 7
    //   302: sipush 504
    //   305: putfield 80	com/appyet/a/f:f	I
    //   308: aload_3
    //   309: ifnull +7 -> 316
    //   312: aload_3
    //   313: invokevirtual 334	java/io/InputStream:close	()V
    //   316: aload 4
    //   318: ifnull +10 -> 328
    //   321: aload 4
    //   323: invokeinterface 339 1 0
    //   328: aload_2
    //   329: invokestatic 192	com/appyet/manager/bl:a	(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    //   332: aload_1
    //   333: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   336: aload 7
    //   338: areturn
    //   339: aload_1
    //   340: getfield 341	com/appyet/a/d:d	Ljava/lang/String;
    //   343: ifnull -97 -> 246
    //   346: aload_1
    //   347: getfield 341	com/appyet/a/d:d	Ljava/lang/String;
    //   350: ldc_w 295
    //   353: invokevirtual 299	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   356: ifne -110 -> 246
    //   359: aload 5
    //   361: ldc_w 343
    //   364: aload_1
    //   365: getfield 341	com/appyet/a/d:d	Ljava/lang/String;
    //   368: invokevirtual 264	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   371: goto -125 -> 246
    //   374: astore_3
    //   375: aconst_null
    //   376: astore_2
    //   377: aconst_null
    //   378: astore 4
    //   380: aconst_null
    //   381: astore_1
    //   382: aload_1
    //   383: ifnull +7 -> 390
    //   386: aload_1
    //   387: invokevirtual 334	java/io/InputStream:close	()V
    //   390: aload_2
    //   391: ifnull +9 -> 400
    //   394: aload_2
    //   395: invokeinterface 339 1 0
    //   400: aload 4
    //   402: invokestatic 192	com/appyet/manager/bl:a	(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    //   405: aload_3
    //   406: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   409: aconst_null
    //   410: areturn
    //   411: aload_1
    //   412: getfield 346	com/appyet/a/d:h	Ljava/util/List;
    //   415: invokeinterface 349 1 0
    //   420: ifle +87 -> 507
    //   423: aload_1
    //   424: getfield 346	com/appyet/a/d:h	Ljava/util/List;
    //   427: invokeinterface 311 1 0
    //   432: astore_2
    //   433: ldc_w 295
    //   436: astore_1
    //   437: aload_2
    //   438: invokeinterface 317 1 0
    //   443: ifeq +55 -> 498
    //   446: aload_2
    //   447: invokeinterface 321 1 0
    //   452: checkcast 323	org/apache/http/NameValuePair
    //   455: astore_3
    //   456: new 234	java/lang/StringBuilder
    //   459: dup
    //   460: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   463: aload_1
    //   464: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: aload_3
    //   468: invokeinterface 326 1 0
    //   473: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: ldc_w 351
    //   479: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: aload_3
    //   483: invokeinterface 329 1 0
    //   488: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: astore_1
    //   495: goto -58 -> 437
    //   498: aload 5
    //   500: ldc_w 353
    //   503: aload_1
    //   504: invokevirtual 257	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   507: aload_0
    //   508: invokespecial 355	com/appyet/manager/bl:b	()Lorg/apache/http/impl/client/DefaultHttpClient;
    //   511: astore_1
    //   512: aload_1
    //   513: astore_3
    //   514: aload_1
    //   515: astore_2
    //   516: aload_1
    //   517: aload 5
    //   519: invokevirtual 359	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   522: astore 5
    //   524: aload 5
    //   526: astore_2
    //   527: aload_2
    //   528: ldc_w 361
    //   531: invokeinterface 367 2 0
    //   536: astore 6
    //   538: aload_2
    //   539: ldc_w 369
    //   542: invokeinterface 367 2 0
    //   547: astore_3
    //   548: aload_3
    //   549: ifnull +584 -> 1133
    //   552: aload 7
    //   554: aload_3
    //   555: invokeinterface 372 1 0
    //   560: invokestatic 378	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   563: putfield 381	com/appyet/a/f:e	J
    //   566: aload_2
    //   567: ldc_w 383
    //   570: invokeinterface 367 2 0
    //   575: astore_3
    //   576: aload_3
    //   577: ifnull +567 -> 1144
    //   580: aload_3
    //   581: invokeinterface 372 1 0
    //   586: ifnull +558 -> 1144
    //   589: aload_3
    //   590: invokeinterface 372 1 0
    //   595: invokevirtual 386	java/lang/String:trim	()Ljava/lang/String;
    //   598: ldc_w 295
    //   601: invokevirtual 299	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   604: istore 8
    //   606: iload 8
    //   608: ifne +536 -> 1144
    //   611: aload 7
    //   613: new 34	java/net/URL
    //   616: dup
    //   617: aload_3
    //   618: invokeinterface 372 1 0
    //   623: invokevirtual 386	java/lang/String:trim	()Ljava/lang/String;
    //   626: invokespecial 37	java/net/URL:<init>	(Ljava/lang/String;)V
    //   629: invokevirtual 387	java/net/URL:toString	()Ljava/lang/String;
    //   632: putfield 390	com/appyet/a/f:i	Ljava/lang/String;
    //   635: aload_2
    //   636: ldc_w 392
    //   639: invokeinterface 367 2 0
    //   644: astore 5
    //   646: aload 5
    //   648: ifnull +668 -> 1316
    //   651: aload 5
    //   653: invokeinterface 396 1 0
    //   658: astore_3
    //   659: aload_3
    //   660: arraylength
    //   661: iconst_1
    //   662: if_icmpne +654 -> 1316
    //   665: aload_3
    //   666: iconst_0
    //   667: aaload
    //   668: ldc_w 398
    //   671: invokeinterface 404 2 0
    //   676: astore_3
    //   677: aload_3
    //   678: ifnull +638 -> 1316
    //   681: aload_3
    //   682: invokeinterface 329 1 0
    //   687: astore_3
    //   688: aload_3
    //   689: ifnull +464 -> 1153
    //   692: aload 7
    //   694: aload_3
    //   695: putfield 405	com/appyet/a/f:d	Ljava/lang/String;
    //   698: aload 5
    //   700: ifnull +462 -> 1162
    //   703: aload 7
    //   705: aload 5
    //   707: invokeinterface 372 1 0
    //   712: putfield 406	com/appyet/a/f:c	Ljava/lang/String;
    //   715: aload_2
    //   716: invokeinterface 410 1 0
    //   721: ifnull +19 -> 740
    //   724: aload 7
    //   726: aload_2
    //   727: invokeinterface 410 1 0
    //   732: invokeinterface 415 1 0
    //   737: putfield 80	com/appyet/a/f:f	I
    //   740: aload_2
    //   741: ldc_w 417
    //   744: invokeinterface 367 2 0
    //   749: astore_3
    //   750: aload_3
    //   751: ifnull +14 -> 765
    //   754: aload 7
    //   756: aload_3
    //   757: invokeinterface 372 1 0
    //   762: putfield 419	com/appyet/a/f:g	Ljava/lang/String;
    //   765: aload_2
    //   766: ldc_w 421
    //   769: invokeinterface 367 2 0
    //   774: astore_3
    //   775: aload_3
    //   776: ifnull +14 -> 790
    //   779: aload 7
    //   781: aload_3
    //   782: invokeinterface 372 1 0
    //   787: putfield 423	com/appyet/a/f:h	Ljava/lang/String;
    //   790: aload_2
    //   791: invokeinterface 427 1 0
    //   796: astore_2
    //   797: aload_2
    //   798: ifnull +513 -> 1311
    //   801: aload_2
    //   802: invokeinterface 431 1 0
    //   807: astore_3
    //   808: aload_3
    //   809: astore 4
    //   811: aload 6
    //   813: ifnull +38 -> 851
    //   816: aload_3
    //   817: astore 4
    //   819: aload_3
    //   820: astore 5
    //   822: aload 6
    //   824: invokeinterface 372 1 0
    //   829: ldc_w 268
    //   832: invokevirtual 435	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   835: ifeq +16 -> 851
    //   838: aload_3
    //   839: astore 5
    //   841: new 437	java/util/zip/GZIPInputStream
    //   844: dup
    //   845: aload_3
    //   846: invokespecial 440	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   849: astore 4
    //   851: aload 4
    //   853: astore 5
    //   855: aload 7
    //   857: aload 4
    //   859: putfield 77	com/appyet/a/f:b	Ljava/io/InputStream;
    //   862: aload 4
    //   864: astore 5
    //   866: aload 7
    //   868: aload_1
    //   869: putfield 190	com/appyet/a/f:a	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   872: aload 7
    //   874: areturn
    //   875: new 442	org/apache/http/client/methods/HttpPost
    //   878: dup
    //   879: aload_1
    //   880: getfield 201	com/appyet/a/d:a	Ljava/lang/String;
    //   883: invokespecial 443	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   886: astore_3
    //   887: aload_3
    //   888: ldc_w 259
    //   891: ldc_w 261
    //   894: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   897: aload_3
    //   898: ldc_w 266
    //   901: ldc_w 268
    //   904: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   907: aload_3
    //   908: ldc_w 270
    //   911: ldc_w 446
    //   914: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   917: aload_3
    //   918: ldc_w 274
    //   921: ldc_w 276
    //   924: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   927: aload_3
    //   928: ldc_w 278
    //   931: aload_0
    //   932: getfield 24	com/appyet/manager/bl:b	Lcom/appyet/context/ApplicationContext;
    //   935: getfield 283	com/appyet/context/ApplicationContext:v	Ljava/lang/String;
    //   938: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   941: aload_1
    //   942: getfield 305	com/appyet/a/d:g	Ljava/util/List;
    //   945: invokeinterface 311 1 0
    //   950: astore_2
    //   951: aload_2
    //   952: invokeinterface 317 1 0
    //   957: ifeq +35 -> 992
    //   960: aload_2
    //   961: invokeinterface 321 1 0
    //   966: checkcast 323	org/apache/http/NameValuePair
    //   969: astore 5
    //   971: aload_3
    //   972: aload 5
    //   974: invokeinterface 326 1 0
    //   979: aload 5
    //   981: invokeinterface 329 1 0
    //   986: invokevirtual 444	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   989: goto -38 -> 951
    //   992: aload_1
    //   993: getfield 346	com/appyet/a/d:h	Ljava/util/List;
    //   996: invokeinterface 349 1 0
    //   1001: ifle +92 -> 1093
    //   1004: aload_1
    //   1005: getfield 346	com/appyet/a/d:h	Ljava/util/List;
    //   1008: invokeinterface 311 1 0
    //   1013: astore 5
    //   1015: ldc_w 295
    //   1018: astore_2
    //   1019: aload 5
    //   1021: invokeinterface 317 1 0
    //   1026: ifeq +59 -> 1085
    //   1029: aload 5
    //   1031: invokeinterface 321 1 0
    //   1036: checkcast 323	org/apache/http/NameValuePair
    //   1039: astore 6
    //   1041: new 234	java/lang/StringBuilder
    //   1044: dup
    //   1045: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   1048: aload_2
    //   1049: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1052: aload 6
    //   1054: invokeinterface 326 1 0
    //   1059: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1062: ldc_w 351
    //   1065: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1068: aload 6
    //   1070: invokeinterface 329 1 0
    //   1075: invokevirtual 239	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1078: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1081: astore_2
    //   1082: goto -63 -> 1019
    //   1085: aload_3
    //   1086: ldc_w 353
    //   1089: aload_2
    //   1090: invokevirtual 447	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   1093: aload_3
    //   1094: new 449	org/apache/http/client/entity/UrlEncodedFormEntity
    //   1097: dup
    //   1098: aload_1
    //   1099: getfield 451	com/appyet/a/d:i	Ljava/util/List;
    //   1102: ldc 126
    //   1104: invokespecial 454	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   1107: invokevirtual 458	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   1110: aload_0
    //   1111: invokespecial 355	com/appyet/manager/bl:b	()Lorg/apache/http/impl/client/DefaultHttpClient;
    //   1114: astore_1
    //   1115: aload_1
    //   1116: astore_3
    //   1117: aload_1
    //   1118: astore_2
    //   1119: aload_1
    //   1120: aconst_null
    //   1121: invokevirtual 359	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   1124: astore 5
    //   1126: aload 5
    //   1128: astore_2
    //   1129: goto -602 -> 527
    //   1132: astore_3
    //   1133: aload 7
    //   1135: ldc2_w 459
    //   1138: putfield 381	com/appyet/a/f:e	J
    //   1141: goto -575 -> 566
    //   1144: aload 7
    //   1146: aconst_null
    //   1147: putfield 390	com/appyet/a/f:i	Ljava/lang/String;
    //   1150: goto -515 -> 635
    //   1153: aload 7
    //   1155: aconst_null
    //   1156: putfield 405	com/appyet/a/f:d	Ljava/lang/String;
    //   1159: goto -461 -> 698
    //   1162: aload 7
    //   1164: ldc_w 462
    //   1167: putfield 406	com/appyet/a/f:c	Ljava/lang/String;
    //   1170: goto -455 -> 715
    //   1173: astore_3
    //   1174: aload_3
    //   1175: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1178: goto -862 -> 316
    //   1181: astore_3
    //   1182: aload_3
    //   1183: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1186: goto -858 -> 328
    //   1189: astore_1
    //   1190: aload_1
    //   1191: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1194: goto -804 -> 390
    //   1197: astore_1
    //   1198: aload_1
    //   1199: invokestatic 59	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1202: goto -802 -> 400
    //   1205: astore_2
    //   1206: aload_3
    //   1207: astore 4
    //   1209: aconst_null
    //   1210: astore_1
    //   1211: aconst_null
    //   1212: astore 5
    //   1214: aload_2
    //   1215: astore_3
    //   1216: aload 5
    //   1218: astore_2
    //   1219: goto -837 -> 382
    //   1222: astore_3
    //   1223: aconst_null
    //   1224: astore 5
    //   1226: aload_1
    //   1227: astore 4
    //   1229: aload 5
    //   1231: astore_1
    //   1232: goto -850 -> 382
    //   1235: astore_3
    //   1236: aload_1
    //   1237: astore 4
    //   1239: aload 5
    //   1241: astore_1
    //   1242: goto -860 -> 382
    //   1245: astore_1
    //   1246: aconst_null
    //   1247: astore_3
    //   1248: goto -948 -> 300
    //   1251: astore 4
    //   1253: aload_1
    //   1254: astore_3
    //   1255: aconst_null
    //   1256: astore 5
    //   1258: aload 4
    //   1260: astore_1
    //   1261: aload_2
    //   1262: astore 4
    //   1264: aload_3
    //   1265: astore_2
    //   1266: aload 5
    //   1268: astore_3
    //   1269: goto -969 -> 300
    //   1272: astore 4
    //   1274: aload_1
    //   1275: astore 5
    //   1277: aload 4
    //   1279: astore_1
    //   1280: aload_2
    //   1281: astore 4
    //   1283: aload 5
    //   1285: astore_2
    //   1286: goto -986 -> 300
    //   1289: astore 6
    //   1291: aload_1
    //   1292: astore_3
    //   1293: aload 4
    //   1295: astore 5
    //   1297: aload 6
    //   1299: astore_1
    //   1300: aload_2
    //   1301: astore 4
    //   1303: aload_3
    //   1304: astore_2
    //   1305: aload 5
    //   1307: astore_3
    //   1308: goto -1008 -> 300
    //   1311: aconst_null
    //   1312: astore_3
    //   1313: goto -505 -> 808
    //   1316: aconst_null
    //   1317: astore_3
    //   1318: goto -630 -> 688
    //   1321: astore 5
    //   1323: aload_1
    //   1324: astore_2
    //   1325: aconst_null
    //   1326: astore_3
    //   1327: aload 5
    //   1329: astore_1
    //   1330: goto -1030 -> 300
    //   1333: astore_3
    //   1334: goto -190 -> 1144
    //   1337: astore_3
    //   1338: aconst_null
    //   1339: astore_2
    //   1340: aconst_null
    //   1341: astore 5
    //   1343: aload_1
    //   1344: astore 4
    //   1346: aload 5
    //   1348: astore_1
    //   1349: goto -967 -> 382
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1352	0	this	bl
    //   0	1352	1	paramd	com.appyet.a.d
    //   39	1090	2	localObject1	Object
    //   1205	10	2	localException1	Exception
    //   1218	122	2	localObject2	Object
    //   274	39	3	localNameValuePair	org.apache.http.NameValuePair
    //   374	32	3	localException2	Exception
    //   455	662	3	localObject3	Object
    //   1132	1	3	localNumberFormatException1	NumberFormatException
    //   1173	2	3	localException3	Exception
    //   1181	26	3	localException4	Exception
    //   1215	1	3	localException5	Exception
    //   1222	1	3	localException6	Exception
    //   1235	1	3	localException7	Exception
    //   1247	80	3	localObject4	Object
    //   1333	1	3	localNumberFormatException2	NumberFormatException
    //   1337	1	3	localException8	Exception
    //   1	1237	4	localObject5	Object
    //   1251	8	4	localNoHttpResponseException1	org.apache.http.NoHttpResponseException
    //   1262	1	4	localObject6	Object
    //   1272	6	4	localNoHttpResponseException2	org.apache.http.NoHttpResponseException
    //   1281	64	4	localObject7	Object
    //   58	1248	5	localObject8	Object
    //   1321	7	5	localNoHttpResponseException3	org.apache.http.NoHttpResponseException
    //   1341	6	5	localObject9	Object
    //   536	533	6	localObject10	Object
    //   1289	9	6	localNoHttpResponseException4	org.apache.http.NoHttpResponseException
    //   10	1153	7	localf	f
    //   604	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   12	19	295	org/apache/http/NoHttpResponseException
    //   21	140	295	org/apache/http/NoHttpResponseException
    //   140	246	295	org/apache/http/NoHttpResponseException
    //   246	256	295	org/apache/http/NoHttpResponseException
    //   256	292	295	org/apache/http/NoHttpResponseException
    //   339	371	295	org/apache/http/NoHttpResponseException
    //   411	433	295	org/apache/http/NoHttpResponseException
    //   437	495	295	org/apache/http/NoHttpResponseException
    //   498	507	295	org/apache/http/NoHttpResponseException
    //   507	512	295	org/apache/http/NoHttpResponseException
    //   875	951	295	org/apache/http/NoHttpResponseException
    //   951	989	295	org/apache/http/NoHttpResponseException
    //   992	1015	295	org/apache/http/NoHttpResponseException
    //   1019	1082	295	org/apache/http/NoHttpResponseException
    //   1085	1093	295	org/apache/http/NoHttpResponseException
    //   1093	1115	295	org/apache/http/NoHttpResponseException
    //   12	19	374	java/lang/Exception
    //   21	140	374	java/lang/Exception
    //   140	246	374	java/lang/Exception
    //   246	256	374	java/lang/Exception
    //   256	292	374	java/lang/Exception
    //   339	371	374	java/lang/Exception
    //   411	433	374	java/lang/Exception
    //   437	495	374	java/lang/Exception
    //   498	507	374	java/lang/Exception
    //   507	512	374	java/lang/Exception
    //   875	951	374	java/lang/Exception
    //   951	989	374	java/lang/Exception
    //   992	1015	374	java/lang/Exception
    //   1019	1082	374	java/lang/Exception
    //   1085	1093	374	java/lang/Exception
    //   1093	1115	374	java/lang/Exception
    //   552	566	1132	java/lang/NumberFormatException
    //   312	316	1173	java/lang/Exception
    //   321	328	1181	java/lang/Exception
    //   386	390	1189	java/lang/Exception
    //   394	400	1197	java/lang/Exception
    //   516	524	1205	java/lang/Exception
    //   1119	1126	1205	java/lang/Exception
    //   801	808	1222	java/lang/Exception
    //   822	838	1235	java/lang/Exception
    //   841	851	1235	java/lang/Exception
    //   855	862	1235	java/lang/Exception
    //   866	872	1235	java/lang/Exception
    //   516	524	1245	org/apache/http/NoHttpResponseException
    //   1119	1126	1245	org/apache/http/NoHttpResponseException
    //   801	808	1251	org/apache/http/NoHttpResponseException
    //   822	838	1272	org/apache/http/NoHttpResponseException
    //   841	851	1272	org/apache/http/NoHttpResponseException
    //   855	862	1289	org/apache/http/NoHttpResponseException
    //   866	872	1289	org/apache/http/NoHttpResponseException
    //   527	548	1321	org/apache/http/NoHttpResponseException
    //   552	566	1321	org/apache/http/NoHttpResponseException
    //   566	576	1321	org/apache/http/NoHttpResponseException
    //   580	606	1321	org/apache/http/NoHttpResponseException
    //   611	635	1321	org/apache/http/NoHttpResponseException
    //   635	646	1321	org/apache/http/NoHttpResponseException
    //   651	677	1321	org/apache/http/NoHttpResponseException
    //   681	688	1321	org/apache/http/NoHttpResponseException
    //   692	698	1321	org/apache/http/NoHttpResponseException
    //   703	715	1321	org/apache/http/NoHttpResponseException
    //   715	740	1321	org/apache/http/NoHttpResponseException
    //   740	750	1321	org/apache/http/NoHttpResponseException
    //   754	765	1321	org/apache/http/NoHttpResponseException
    //   765	775	1321	org/apache/http/NoHttpResponseException
    //   779	790	1321	org/apache/http/NoHttpResponseException
    //   790	797	1321	org/apache/http/NoHttpResponseException
    //   1133	1141	1321	org/apache/http/NoHttpResponseException
    //   1144	1150	1321	org/apache/http/NoHttpResponseException
    //   1153	1159	1321	org/apache/http/NoHttpResponseException
    //   1162	1170	1321	org/apache/http/NoHttpResponseException
    //   611	635	1333	java/lang/NumberFormatException
    //   527	548	1337	java/lang/Exception
    //   552	566	1337	java/lang/Exception
    //   566	576	1337	java/lang/Exception
    //   580	606	1337	java/lang/Exception
    //   611	635	1337	java/lang/Exception
    //   635	646	1337	java/lang/Exception
    //   651	677	1337	java/lang/Exception
    //   681	688	1337	java/lang/Exception
    //   692	698	1337	java/lang/Exception
    //   703	715	1337	java/lang/Exception
    //   715	740	1337	java/lang/Exception
    //   740	750	1337	java/lang/Exception
    //   754	765	1337	java/lang/Exception
    //   765	775	1337	java/lang/Exception
    //   779	790	1337	java/lang/Exception
    //   790	797	1337	java/lang/Exception
    //   1133	1141	1337	java/lang/Exception
    //   1144	1150	1337	java/lang/Exception
    //   1153	1159	1337	java/lang/Exception
    //   1162	1170	1337	java/lang/Exception
  }
  
  public final bo a()
  {
    Object localObject2 = (ConnectivityManager)b.getSystemService("connectivity");
    try
    {
      if ((((ConnectivityManager)localObject2).getActiveNetworkInfo() == null) || (!((ConnectivityManager)localObject2).getActiveNetworkInfo().isConnectedOrConnecting())) {
        return bo.a;
      }
      Object localObject1 = ((ConnectivityManager)localObject2).getNetworkInfo(1);
      localObject2 = ((ConnectivityManager)localObject2).getNetworkInfo(0);
      if (((NetworkInfo)localObject1).isConnected()) {
        return bo.b;
      }
      if (((NetworkInfo)localObject2).isConnectedOrConnecting()) {
        return bo.c;
      }
      localObject1 = bo.d;
      return (bo)localObject1;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return bo.a;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
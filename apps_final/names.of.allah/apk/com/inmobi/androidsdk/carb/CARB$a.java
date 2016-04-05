package com.inmobi.androidsdk.carb;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.bootstrapper.PkParams;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;

class CARB$a
  implements Runnable
{
  int a = 1;
  
  CARB$a(CARB paramCARB, ArrayList paramArrayList, String paramString, int paramInt) {}
  
  /* Error */
  private int a(String paramString)
  {
    // Byte code:
    //   0: invokestatic 44	com/inmobi/commons/internal/InternalSDKUtil:getContext	()Landroid/content/Context;
    //   3: invokestatic 48	com/inmobi/commons/internal/InternalSDKUtil:checkNetworkAvailibility	(Landroid/content/Context;)Z
    //   6: ifne +5 -> 11
    //   9: iconst_m1
    //   10: ireturn
    //   11: new 50	java/net/URL
    //   14: dup
    //   15: invokestatic 56	com/inmobi/androidsdk/carb/CarbInitializer:getConfigParams	()Lcom/inmobi/androidsdk/carb/CarbConfigParams;
    //   18: invokevirtual 62	com/inmobi/androidsdk/carb/CarbConfigParams:getCarbPostpoint	()Ljava/lang/String;
    //   21: invokespecial 65	java/net/URL:<init>	(Ljava/lang/String;)V
    //   24: astore_2
    //   25: aload_2
    //   26: invokevirtual 69	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   29: checkcast 71	java/net/HttpURLConnection
    //   32: astore_3
    //   33: aload_3
    //   34: invokestatic 75	com/inmobi/commons/internal/InternalSDKUtil:addCommonPropertiesToConnection	(Ljava/net/HttpURLConnection;)V
    //   37: invokestatic 56	com/inmobi/androidsdk/carb/CarbInitializer:getConfigParams	()Lcom/inmobi/androidsdk/carb/CarbConfigParams;
    //   40: invokevirtual 79	com/inmobi/androidsdk/carb/CarbConfigParams:getTimeoutInterval	()J
    //   43: ldc2_w 80
    //   46: lmul
    //   47: lstore 5
    //   49: aload_3
    //   50: lload 5
    //   52: l2i
    //   53: invokevirtual 85	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   56: aload_3
    //   57: lload 5
    //   59: l2i
    //   60: invokevirtual 88	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   63: aload_3
    //   64: ldc 90
    //   66: invokestatic 95	com/inmobi/commons/data/DeviceInfo:getPhoneDefaultUserAgent	()Ljava/lang/String;
    //   69: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload_3
    //   73: iconst_0
    //   74: invokevirtual 103	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   77: aload_3
    //   78: iconst_1
    //   79: invokevirtual 106	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   82: aload_3
    //   83: iconst_1
    //   84: invokevirtual 109	java/net/HttpURLConnection:setDoInput	(Z)V
    //   87: aload_3
    //   88: ldc 111
    //   90: invokevirtual 114	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   93: aload_3
    //   94: ldc 116
    //   96: ldc 118
    //   98: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   101: aload_3
    //   102: ldc 120
    //   104: aload_1
    //   105: invokevirtual 126	java/lang/String:length	()I
    //   108: invokestatic 132	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   111: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload_2
    //   115: invokevirtual 135	java/net/URL:getHost	()Ljava/lang/String;
    //   118: invokestatic 141	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   121: pop
    //   122: new 143	java/io/BufferedWriter
    //   125: dup
    //   126: new 145	java/io/OutputStreamWriter
    //   129: dup
    //   130: aload_3
    //   131: invokevirtual 149	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   134: invokespecial 152	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   137: invokespecial 155	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   140: astore_2
    //   141: aload_2
    //   142: aload_1
    //   143: invokevirtual 158	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   146: aload_2
    //   147: invokevirtual 161	java/io/BufferedWriter:close	()V
    //   150: aload_3
    //   151: invokevirtual 164	java/net/HttpURLConnection:getResponseCode	()I
    //   154: sipush 200
    //   157: if_icmpne +114 -> 271
    //   160: sipush 200
    //   163: ireturn
    //   164: astore_1
    //   165: new 34	java/net/MalformedURLException
    //   168: dup
    //   169: new 166	java/lang/StringBuilder
    //   172: dup
    //   173: ldc -88
    //   175: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: aload_2
    //   179: invokevirtual 171	java/net/URL:toString	()Ljava/lang/String;
    //   182: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokespecial 177	java/net/MalformedURLException:<init>	(Ljava/lang/String;)V
    //   191: athrow
    //   192: astore_1
    //   193: ldc -77
    //   195: ldc -75
    //   197: invokestatic 186	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   200: iconst_m1
    //   201: ireturn
    //   202: astore_1
    //   203: ldc -68
    //   205: new 166	java/lang/StringBuilder
    //   208: dup
    //   209: ldc -66
    //   211: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_2
    //   215: invokevirtual 193	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   218: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: aload_1
    //   222: invokestatic 196	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   225: goto -75 -> 150
    //   228: astore_1
    //   229: goto -29 -> 200
    //   232: astore_1
    //   233: aconst_null
    //   234: astore_2
    //   235: aload_2
    //   236: ifnull +7 -> 243
    //   239: aload_2
    //   240: invokevirtual 161	java/io/BufferedWriter:close	()V
    //   243: aload_1
    //   244: athrow
    //   245: astore_3
    //   246: ldc -68
    //   248: new 166	java/lang/StringBuilder
    //   251: dup
    //   252: ldc -66
    //   254: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: aload_2
    //   258: invokevirtual 193	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: aload_3
    //   265: invokestatic 196	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   268: goto -25 -> 243
    //   271: aload_3
    //   272: invokevirtual 164	java/net/HttpURLConnection:getResponseCode	()I
    //   275: istore 4
    //   277: iload 4
    //   279: ireturn
    //   280: astore_1
    //   281: goto -46 -> 235
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	284	0	this	a
    //   0	284	1	paramString	String
    //   24	234	2	localObject	Object
    //   32	119	3	localHttpURLConnection	java.net.HttpURLConnection
    //   245	27	3	localIOException	java.io.IOException
    //   275	3	4	i	int
    //   47	11	5	l	long
    // Exception table:
    //   from	to	target	type
    //   114	122	164	java/net/UnknownHostException
    //   11	114	192	java/net/MalformedURLException
    //   114	122	192	java/net/MalformedURLException
    //   146	150	192	java/net/MalformedURLException
    //   150	160	192	java/net/MalformedURLException
    //   165	192	192	java/net/MalformedURLException
    //   203	225	192	java/net/MalformedURLException
    //   239	243	192	java/net/MalformedURLException
    //   243	245	192	java/net/MalformedURLException
    //   246	268	192	java/net/MalformedURLException
    //   271	277	192	java/net/MalformedURLException
    //   146	150	202	java/io/IOException
    //   11	114	228	java/io/IOException
    //   114	122	228	java/io/IOException
    //   150	160	228	java/io/IOException
    //   165	192	228	java/io/IOException
    //   203	225	228	java/io/IOException
    //   243	245	228	java/io/IOException
    //   246	268	228	java/io/IOException
    //   271	277	228	java/io/IOException
    //   122	141	232	finally
    //   239	243	245	java/io/IOException
    //   141	146	280	finally
  }
  
  private String a(ArrayList<CarbInfo> paramArrayList, String paramString, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("req_id=");
    localStringBuffer.append(CARB.getURLEncoded(paramString));
    paramString = new JSONArray();
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      paramString.put(((CarbInfo)paramArrayList.get(i)).getInmId());
      i += 1;
    }
    localStringBuffer.append("&p_a_apps=");
    localStringBuffer.append(CARB.getURLEncoded(paramString.toString()));
    localStringBuffer.append("&i_till=");
    localStringBuffer.append(paramInt);
    paramArrayList = Integer.toString(new Random().nextInt());
    paramArrayList = CarbInitializer.getConfigParams().getUID().getUidMapWitoutXOR(1, paramArrayList, null);
    localStringBuffer.append("&u-id-map=");
    localStringBuffer.append(CARB.getURLEncoded(paramArrayList));
    return localStringBuffer.toString();
  }
  
  public void run()
  {
    CARB.g(e);
    CARB.b(e, InternalSDKUtil.keag());
    e.c = PkInitilaizer.getConfigParams().getExponent();
    e.d = PkInitilaizer.getConfigParams().getModulus();
    e.e = PkInitilaizer.getConfigParams().getVersion();
    if ((e.c.equals("")) || (e.d.equals("")) || (e.e.equals("")))
    {
      Log.internal("[InMobi]-[CARB]-4.4.1", "Exception retreiving Ad due to key problem");
      CARB.h(e);
      return;
    }
    String str = a(b, c, d);
    Log.internal("[InMobi]-[CARB]-4.4.1", "PostBody Before encryption: " + str);
    str = CARB.a(e, str, CARB.i(e), CARB.j(e), e.b, e.d, e.c);
    if (str == null)
    {
      Log.internal("[InMobi]-[CARB]-4.4.1", "POST message cannot be encrypted");
      CARB.b(e);
      return;
    }
    int i = a(str);
    Log.internal("[InMobi]-[CARB]-4.4.1", "Post Response to CARB server: " + i);
    if (200 == i)
    {
      if (e.f != null) {
        e.f.postSuccess();
      }
      CARB.h(e);
      return;
    }
    if (e.f != null) {
      e.f.postFailed();
    }
    i = CarbInitializer.getConfigParams().getRetryCount();
    long l = CarbInitializer.getConfigParams().getRetryInterval();
    if (a <= i) {}
    try
    {
      Thread.sleep(l * 1000L * a);
      Log.internal("[InMobi]-[CARB]-4.4.1", "POSt to carb failed. Retrying count: " + a);
      a += 1;
      if (Looper.myLooper() == null) {
        Looper.prepare();
      }
      new Handler().postDelayed(this, 0L);
      Looper.loop();
      Looper.myLooper().quit();
      return;
      a = 0;
      CARB.h(e);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.carb.CARB.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.androidsdk.impl.net;

import android.content.Context;
import android.os.Handler;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.bootstrapper.PkParams;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public final class RequestResponseManager
{
  static Thread a;
  static Handler b = new Handler();
  static AtomicBoolean c = null;
  public static AtomicBoolean isSynced;
  private static AtomicBoolean j;
  private static AtomicBoolean l = null;
  public static IMAIClickEventList mDBWriterQueue;
  public static IMAIClickEventList mNetworkQueue = null;
  byte[] d;
  String e = "";
  String f = "";
  String g = "";
  private AtomicBoolean h = new AtomicBoolean();
  private HttpURLConnection i;
  private WebviewLoader k = null;
  private final int m = 8;
  private final int n = 16;
  private byte[] o;
  private byte[] p;
  
  static
  {
    mDBWriterQueue = new IMAIClickEventList();
    j = null;
  }
  
  private Response a(UserInfo paramUserInfo)
  {
    paramUserInfo = null;
    Log.debug("[InMobi]-[Network]-4.4.1", "Http Status Code: " + i.getResponseCode());
    int i1 = i.getResponseCode();
    String str1 = i.getHeaderField("im-id");
    Log.debug("[InMobi]-[Network]-4.4.1", "Im Id: " + str1);
    localObject1 = i.getHeaderField("im-ec");
    if (localObject1 != null) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Sandbox error Id: " + (String)localObject1);
    }
    if (i1 == 200) {}
    try
    {
      localObject1 = new BufferedReader(new InputStreamReader(i.getInputStream(), "UTF-8"));
      try
      {
        localObject2 = new StringBuilder();
        for (;;)
        {
          String str2 = ((BufferedReader)localObject1).readLine();
          if (str2 == null) {
            break;
          }
          ((StringBuilder)localObject2).append(str2).append("\n");
        }
        i.disconnect();
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        Object localObject2;
        localObject1 = null;
      }
    }
    a((Closeable)localObject1);
    throw paramUserInfo;
    localObject2 = ((StringBuilder)localObject2).toString();
    Log.debug("[InMobi]-[Network]-4.4.1", "Ad Response: " + (String)localObject2);
    try
    {
      localObject2 = new String(InternalSDKUtil.DeAe(Base64.decode(((String)localObject2).getBytes(), 0), o, p));
      paramUserInfo = (UserInfo)localObject2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    Log.internal("[InMobi]-[Network]-4.4.1", "Decrypted Ad Response: " + paramUserInfo);
    if (paramUserInfo != null)
    {
      paramUserInfo = new Response(str1, paramUserInfo);
      i.disconnect();
      a((Closeable)localObject1);
      return paramUserInfo;
    }
    throw new AdException("Some error in response.", 200, str1, -1);
    if (i1 == 204)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Server returned No fill");
      throw new AdException("Server did not return 200.", 100, str1, i1);
    }
    if (i1 == 400)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Invalid App Id.Please check the app Id in the adrequest is valid and in active state");
      throw new AdException("Server did not return 200.", 400, str1, i1);
    }
    Log.debug("[InMobi]-[Network]-4.4.1", "Server Error");
    throw new AdException("Server did not return 200.", 200, str1, i1);
  }
  
  private String a(String paramString, HttpRequestCallback paramHttpRequestCallback)
  {
    b();
    o = InternalSDKUtil.keag();
    e = PkInitilaizer.getConfigParams().getExponent();
    f = PkInitilaizer.getConfigParams().getModulus();
    g = PkInitilaizer.getConfigParams().getVersion();
    if ((e.equals("")) || (f.equals("")) || (g.equals("")))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception retreiving Ad due to key problem");
      return null;
    }
    paramString = InternalSDKUtil.SeMeGe(paramString, o, p, d, f, e);
    paramHttpRequestCallback = new StringBuilder();
    paramHttpRequestCallback.append("sm=");
    paramHttpRequestCallback.append(paramString);
    paramHttpRequestCallback.append("&sn=");
    paramHttpRequestCallback.append(g);
    paramString = paramHttpRequestCallback.toString();
    Log.debug("[InMobi]-[Network]-4.4.1", paramString);
    return paramString;
  }
  
  private HttpURLConnection a(String paramString, UserInfo paramUserInfo)
  {
    i = ((HttpURLConnection)new URL(paramString).openConnection());
    InternalSDKUtil.addCommonPropertiesToConnection(i);
    a(i, paramUserInfo);
    return i;
  }
  
  private void a(int paramInt, Object paramObject, HttpRequestCallback paramHttpRequestCallback)
  {
    if (h.get()) {}
    while (paramHttpRequestCallback == null) {
      return;
    }
    paramHttpRequestCallback.notifyResult(paramInt, paramObject);
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
  
  private void a(String paramString)
  {
    i.setRequestProperty("Content-Length", Integer.toString(paramString.length()));
    try
    {
      BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(i.getOutputStream()));
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
  
  private static void a(HttpURLConnection paramHttpURLConnection, UserInfo paramUserInfo)
  {
    int i1 = Initializer.getConfigParams().getFetchTimeOut();
    paramHttpURLConnection.setConnectTimeout(i1);
    paramHttpURLConnection.setReadTimeout(i1);
    paramHttpURLConnection.setRequestProperty("user-agent", paramUserInfo.getPhoneDefaultUserAgent());
    paramHttpURLConnection.setUseCaches(false);
    paramHttpURLConnection.setDoOutput(true);
    paramHttpURLConnection.setDoInput(true);
    paramHttpURLConnection.setRequestMethod("POST");
    paramHttpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
  }
  
  private void b()
  {
    try
    {
      d = new byte[8];
      SecureRandom localSecureRandom = new SecureRandom();
      localSecureRandom.nextBytes(d);
      p = new byte[16];
      localSecureRandom.nextBytes(p);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void asyncRequestAd(UserInfo paramUserInfo, RequestResponseManager.ActionType paramActionType, String paramString, HttpRequestCallback paramHttpRequestCallback)
  {
    new RequestResponseManager.b(this, paramUserInfo, paramString, paramActionType, paramHttpRequestCallback).start();
  }
  
  public final void asyncRequestSecuredAd(UserInfo paramUserInfo, RequestResponseManager.ActionType paramActionType, String paramString, HttpRequestCallback paramHttpRequestCallback)
  {
    new RequestResponseManager.c(this, paramUserInfo, paramString, paramActionType, paramHttpRequestCallback).start();
  }
  
  public final void deinit()
  {
    try
    {
      if (j != null) {
        j.set(false);
      }
      if (mDBWriterQueue != null)
      {
        mDBWriterQueue.saveClickEvents();
        mDBWriterQueue.clear();
      }
      isSynced.set(false);
      if (mNetworkQueue != null) {
        mNetworkQueue.clear();
      }
      mNetworkQueue = null;
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Request Response Manager deinit failed", localException);
    }
  }
  
  public final void doCancel()
  {
    h.set(true);
    if (i != null) {
      new RequestResponseManager.a(this).start();
    }
  }
  
  public final void init()
  {
    try
    {
      if (mNetworkQueue == null) {
        mNetworkQueue = IMAIClickEventList.getLoggedClickEvents();
      }
      if (j == null) {
        j = new AtomicBoolean(false);
      }
      l = new AtomicBoolean(true);
      isSynced = new AtomicBoolean(false);
      c = new AtomicBoolean(false);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Request Response Manager init failed", localException);
    }
  }
  
  public final void processClick(Context paramContext, HttpRequestCallback paramHttpRequestCallback)
  {
    try
    {
      if (j.compareAndSet(false, true))
      {
        paramContext = new Thread(new RequestResponseManager.d(this, paramContext, paramHttpRequestCallback));
        a = paramContext;
        paramContext.setPriority(1);
        a.start();
      }
      return;
    }
    catch (Exception paramContext)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception ping ", paramContext);
    }
  }
  
  /* Error */
  public final boolean processClickHttpClient(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: ldc 80
    //   4: new 82	java/lang/StringBuilder
    //   7: dup
    //   8: ldc_w 458
    //   11: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokestatic 184	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: invokestatic 339	com/inmobi/androidsdk/bootstrapper/Initializer:getConfigParams	()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;
    //   27: invokevirtual 462	com/inmobi/androidsdk/bootstrapper/ConfigParams:getImai	()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;
    //   30: invokevirtual 467	com/inmobi/androidsdk/bootstrapper/IMAIConfigParams:getPingTimeOut	()I
    //   33: istore 5
    //   35: new 259	java/net/URL
    //   38: dup
    //   39: aload_1
    //   40: invokespecial 260	java/net/URL:<init>	(Ljava/lang/String;)V
    //   43: invokevirtual 264	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   46: checkcast 91	java/net/HttpURLConnection
    //   49: astore_1
    //   50: aload_1
    //   51: iload_2
    //   52: invokevirtual 470	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   55: aload_1
    //   56: invokestatic 268	com/inmobi/commons/internal/InternalSDKUtil:addCommonPropertiesToConnection	(Ljava/net/HttpURLConnection;)V
    //   59: aload_1
    //   60: iload 5
    //   62: invokevirtual 348	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   65: aload_1
    //   66: iload 5
    //   68: invokevirtual 351	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   71: aload_1
    //   72: iconst_0
    //   73: invokevirtual 362	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   76: aload_1
    //   77: ldc_w 353
    //   80: invokestatic 473	com/inmobi/commons/internal/InternalSDKUtil:getSavedUserAgent	()Ljava/lang/String;
    //   83: invokevirtual 317	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload_1
    //   87: ldc_w 475
    //   90: invokevirtual 373	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   93: invokestatic 480	com/inmobi/androidsdk/impl/SDKUtil:getQAMode	()Z
    //   96: ifeq +23 -> 119
    //   99: aload_1
    //   100: ldc_w 482
    //   103: ldc_w 484
    //   106: invokevirtual 317	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   109: aload_1
    //   110: ldc_w 486
    //   113: ldc_w 484
    //   116: invokevirtual 317	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_1
    //   120: invokevirtual 95	java/net/HttpURLConnection:getResponseCode	()I
    //   123: istore 5
    //   125: iload 5
    //   127: sipush 400
    //   130: if_icmpge +118 -> 248
    //   133: iconst_1
    //   134: istore_2
    //   135: iconst_1
    //   136: iload_2
    //   137: if_icmpne +24 -> 161
    //   140: getstatic 54	com/inmobi/androidsdk/impl/net/RequestResponseManager:l	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   143: iconst_1
    //   144: invokevirtual 402	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   147: aload_1
    //   148: ifnull +98 -> 246
    //   151: aload_1
    //   152: invokevirtual 149	java/net/HttpURLConnection:disconnect	()V
    //   155: iload_2
    //   156: istore 6
    //   158: iload 6
    //   160: ireturn
    //   161: getstatic 54	com/inmobi/androidsdk/impl/net/RequestResponseManager:l	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   164: iconst_0
    //   165: invokevirtual 402	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   168: goto -21 -> 147
    //   171: astore_3
    //   172: getstatic 54	com/inmobi/androidsdk/impl/net/RequestResponseManager:l	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   175: iconst_0
    //   176: invokevirtual 402	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   179: ldc 80
    //   181: ldc_w 488
    //   184: aload_3
    //   185: invokestatic 414	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: iload_2
    //   189: istore 6
    //   191: aload_1
    //   192: ifnull -34 -> 158
    //   195: aload_1
    //   196: invokevirtual 149	java/net/HttpURLConnection:disconnect	()V
    //   199: iload_2
    //   200: ireturn
    //   201: astore_1
    //   202: aload_3
    //   203: ifnull +7 -> 210
    //   206: aload_3
    //   207: invokevirtual 149	java/net/HttpURLConnection:disconnect	()V
    //   210: aload_1
    //   211: athrow
    //   212: astore 4
    //   214: aload_1
    //   215: astore_3
    //   216: aload 4
    //   218: astore_1
    //   219: goto -17 -> 202
    //   222: astore 4
    //   224: aload_1
    //   225: astore_3
    //   226: aload 4
    //   228: astore_1
    //   229: goto -27 -> 202
    //   232: astore_3
    //   233: iconst_0
    //   234: istore_2
    //   235: aconst_null
    //   236: astore_1
    //   237: goto -65 -> 172
    //   240: astore_3
    //   241: iconst_0
    //   242: istore_2
    //   243: goto -71 -> 172
    //   246: iload_2
    //   247: ireturn
    //   248: iconst_0
    //   249: istore_2
    //   250: goto -115 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	253	0	this	RequestResponseManager
    //   0	253	1	paramString	String
    //   0	253	2	paramBoolean	boolean
    //   1	1	3	localObject1	Object
    //   171	36	3	localException1	Exception
    //   215	11	3	str	String
    //   232	1	3	localException2	Exception
    //   240	1	3	localException3	Exception
    //   212	5	4	localObject2	Object
    //   222	5	4	localObject3	Object
    //   33	98	5	i1	int
    //   156	34	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   140	147	171	java/lang/Exception
    //   161	168	171	java/lang/Exception
    //   2	50	201	finally
    //   50	119	212	finally
    //   119	125	212	finally
    //   140	147	212	finally
    //   161	168	212	finally
    //   172	188	222	finally
    //   2	50	232	java/lang/Exception
    //   50	119	240	java/lang/Exception
    //   119	125	240	java/lang/Exception
  }
  
  public final boolean processClickUrlInWebview(String arg1)
  {
    for (;;)
    {
      try
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "Processing click in webview " + ???);
        k = new WebviewLoader(InternalSDKUtil.getContext());
        int i1 = Initializer.getConfigParams().getImai().getPingTimeOut();
        HashMap localHashMap = null;
        if (SDKUtil.getQAMode())
        {
          localHashMap = new HashMap();
          localHashMap.put("mk-carrier", "117.97.87.6");
          localHashMap.put("x-real-ip", "117.97.87.6");
        }
        k.loadInWebview(???, localHashMap);
        synchronized (a)
        {
          try
          {
            a.wait(i1);
            if (true == c.get())
            {
              l.set(true);
              k.deinit(i1);
              boolean bool = c.get();
              return bool;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Network thread wait failure", localInterruptedException);
            continue;
          }
        }
        l.set(false);
      }
      catch (Exception ???)
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "ping in webview exception", ???);
        return c.get();
      }
      WebviewLoader.b.set(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.RequestResponseManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
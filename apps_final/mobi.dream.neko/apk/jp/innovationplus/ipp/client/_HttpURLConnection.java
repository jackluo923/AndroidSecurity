package jp.innovationplus.ipp.client;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import jp.innovationplus.ipp.core.IPPException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

class _HttpURLConnection
{
  private static final String IPP_BASE_URL = "https://iddata-commons.org/IPP_ClientAPIServer";
  private static final String IPP_KIT_VERSION_NUMBER = "0.8.0a";
  static final String TAG = "IPPKit";
  private boolean debugMessage = false;
  protected List<NameValuePair> httpHeader;
  protected Context mContext;
  protected String resourcePath;
  protected int timeout;
  
  protected _HttpURLConnection()
  {
    httpHeader = new ArrayList();
    timeout = 5000;
  }
  
  protected _HttpURLConnection(Context paramContext, String paramString)
  {
    mContext = paramContext;
    resourcePath = paramString;
    httpHeader = new ArrayList();
    timeout = 5000;
  }
  
  private HttpURLConnection setupHTTPURLConnection(String paramString)
    throws IPPException
  {
    return setupHTTPURLConnection(paramString, null);
  }
  
  /* Error */
  private HttpURLConnection setupHTTPURLConnection(String paramString, List<NameValuePair> paramList)
    throws IPPException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 61	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 8
    //   9: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: astore_3
    //   13: aload_3
    //   14: aload_0
    //   15: getfield 43	jp/innovationplus/ipp/client/_HttpURLConnection:resourcePath	Ljava/lang/String;
    //   18: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: pop
    //   22: aload_3
    //   23: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_2
    //   28: ifnull +344 -> 372
    //   31: aload_2
    //   32: invokeinterface 78 1 0
    //   37: ifne +335 -> 372
    //   40: aload_2
    //   41: ldc 80
    //   43: invokestatic 86	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   46: astore_2
    //   47: new 88	java/net/URL
    //   50: dup
    //   51: new 61	java/lang/StringBuilder
    //   54: dup
    //   55: aload_3
    //   56: invokestatic 94	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   59: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: ldc 96
    //   64: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokespecial 97	java/net/URL:<init>	(Ljava/lang/String;)V
    //   77: astore_3
    //   78: aload_0
    //   79: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   82: ifeq +47 -> 129
    //   85: aload_3
    //   86: invokevirtual 98	java/net/URL:toString	()Ljava/lang/String;
    //   89: astore_2
    //   90: aload_2
    //   91: ldc 8
    //   93: invokevirtual 102	java/lang/String:length	()I
    //   96: aload_2
    //   97: invokevirtual 102	java/lang/String:length	()I
    //   100: invokevirtual 106	java/lang/String:substring	(II)Ljava/lang/String;
    //   103: astore_2
    //   104: ldc 14
    //   106: new 61	java/lang/StringBuilder
    //   109: dup
    //   110: ldc 108
    //   112: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: aload_2
    //   116: invokevirtual 109	java/lang/String:toString	()Ljava/lang/String;
    //   119: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   128: pop
    //   129: aload 4
    //   131: astore_2
    //   132: aload_3
    //   133: invokevirtual 118	java/net/URL:getProtocol	()Ljava/lang/String;
    //   136: ldc 120
    //   138: invokevirtual 124	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   141: ifeq +11 -> 152
    //   144: aload_3
    //   145: invokevirtual 128	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   148: checkcast 130	java/net/HttpURLConnection
    //   151: astore_2
    //   152: aload_3
    //   153: invokevirtual 118	java/net/URL:getProtocol	()Ljava/lang/String;
    //   156: ldc -124
    //   158: invokevirtual 124	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   161: ifeq +20 -> 181
    //   164: invokestatic 138	javax/net/ssl/SSLSocketFactory:getDefault	()Ljavax/net/SocketFactory;
    //   167: checkcast 134	javax/net/ssl/SSLSocketFactory
    //   170: invokestatic 144	javax/net/ssl/HttpsURLConnection:setDefaultSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   173: aload_3
    //   174: invokevirtual 128	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   177: checkcast 140	javax/net/ssl/HttpsURLConnection
    //   180: astore_2
    //   181: aload_0
    //   182: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   185: ifeq +11 -> 196
    //   188: ldc 14
    //   190: ldc -110
    //   192: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   195: pop
    //   196: aload_2
    //   197: aload_0
    //   198: getfield 37	jp/innovationplus/ipp/client/_HttpURLConnection:timeout	I
    //   201: invokevirtual 150	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   204: aload_2
    //   205: aload_1
    //   206: invokevirtual 153	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   209: aload_2
    //   210: iconst_0
    //   211: invokevirtual 157	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   214: aload_1
    //   215: ldc -97
    //   217: invokevirtual 124	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   220: ifne +12 -> 232
    //   223: aload_1
    //   224: ldc -95
    //   226: invokevirtual 124	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   229: ifeq +8 -> 237
    //   232: aload_2
    //   233: iconst_1
    //   234: invokevirtual 164	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   237: iconst_0
    //   238: istore 5
    //   240: iconst_0
    //   241: istore 7
    //   243: aload_0
    //   244: getfield 35	jp/innovationplus/ipp/client/_HttpURLConnection:httpHeader	Ljava/util/List;
    //   247: invokeinterface 78 1 0
    //   252: ifne +24 -> 276
    //   255: iconst_0
    //   256: istore 6
    //   258: iload 7
    //   260: istore 5
    //   262: iload 6
    //   264: aload_0
    //   265: getfield 35	jp/innovationplus/ipp/client/_HttpURLConnection:httpHeader	Ljava/util/List;
    //   268: invokeinterface 167 1 0
    //   273: if_icmplt +208 -> 481
    //   276: aload_2
    //   277: ldc -87
    //   279: ldc -85
    //   281: invokevirtual 175	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload_2
    //   285: ldc -79
    //   287: ldc -85
    //   289: invokevirtual 175	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: iload 5
    //   294: ifne +76 -> 370
    //   297: aload_0
    //   298: getfield 41	jp/innovationplus/ipp/client/_HttpURLConnection:mContext	Landroid/content/Context;
    //   301: invokevirtual 183	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   304: aload_0
    //   305: getfield 41	jp/innovationplus/ipp/client/_HttpURLConnection:mContext	Landroid/content/Context;
    //   308: invokevirtual 186	android/content/Context:getPackageName	()Ljava/lang/String;
    //   311: sipush 128
    //   314: invokevirtual 192	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   317: astore_1
    //   318: aload_2
    //   319: ldc -62
    //   321: aload_1
    //   322: getfield 200	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   325: ldc -54
    //   327: invokevirtual 208	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   330: invokevirtual 175	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   333: aload_0
    //   334: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   337: ifeq +33 -> 370
    //   340: ldc 14
    //   342: new 61	java/lang/StringBuilder
    //   345: dup
    //   346: ldc -46
    //   348: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   351: aload_1
    //   352: getfield 200	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   355: ldc -54
    //   357: invokevirtual 208	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   360: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   366: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   369: pop
    //   370: aload_2
    //   371: areturn
    //   372: new 88	java/net/URL
    //   375: dup
    //   376: aload_3
    //   377: invokespecial 97	java/net/URL:<init>	(Ljava/lang/String;)V
    //   380: astore_3
    //   381: goto -303 -> 78
    //   384: astore_1
    //   385: aload_0
    //   386: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   389: ifeq +15 -> 404
    //   392: ldc 14
    //   394: ldc -44
    //   396: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   399: pop
    //   400: aload_1
    //   401: invokevirtual 215	java/net/MalformedURLException:printStackTrace	()V
    //   404: new 47	jp/innovationplus/ipp/core/IPPException
    //   407: dup
    //   408: sipush 64536
    //   411: invokespecial 217	jp/innovationplus/ipp/core/IPPException:<init>	(I)V
    //   414: athrow
    //   415: astore_1
    //   416: aload_0
    //   417: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   420: ifeq +15 -> 435
    //   423: ldc 14
    //   425: ldc -37
    //   427: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   430: pop
    //   431: aload_1
    //   432: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   435: aload_1
    //   436: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   439: new 47	jp/innovationplus/ipp/core/IPPException
    //   442: dup
    //   443: sipush 64535
    //   446: invokespecial 217	jp/innovationplus/ipp/core/IPPException:<init>	(I)V
    //   449: athrow
    //   450: astore_1
    //   451: aload_0
    //   452: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   455: ifeq +15 -> 470
    //   458: ldc 14
    //   460: ldc -34
    //   462: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   465: pop
    //   466: aload_1
    //   467: invokevirtual 223	java/net/ProtocolException:printStackTrace	()V
    //   470: new 47	jp/innovationplus/ipp/core/IPPException
    //   473: dup
    //   474: sipush 64534
    //   477: invokespecial 217	jp/innovationplus/ipp/core/IPPException:<init>	(I)V
    //   480: athrow
    //   481: aload_0
    //   482: getfield 35	jp/innovationplus/ipp/client/_HttpURLConnection:httpHeader	Ljava/util/List;
    //   485: iload 6
    //   487: invokeinterface 227 2 0
    //   492: checkcast 229	org/apache/http/NameValuePair
    //   495: invokeinterface 232 1 0
    //   500: ldc -62
    //   502: invokevirtual 124	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   505: ifeq +6 -> 511
    //   508: iconst_1
    //   509: istore 5
    //   511: aload_2
    //   512: aload_0
    //   513: getfield 35	jp/innovationplus/ipp/client/_HttpURLConnection:httpHeader	Ljava/util/List;
    //   516: iload 6
    //   518: invokeinterface 227 2 0
    //   523: checkcast 229	org/apache/http/NameValuePair
    //   526: invokeinterface 232 1 0
    //   531: aload_0
    //   532: getfield 35	jp/innovationplus/ipp/client/_HttpURLConnection:httpHeader	Ljava/util/List;
    //   535: iload 6
    //   537: invokeinterface 227 2 0
    //   542: checkcast 229	org/apache/http/NameValuePair
    //   545: invokeinterface 235 1 0
    //   550: invokevirtual 175	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   553: iload 6
    //   555: iconst_1
    //   556: iadd
    //   557: istore 6
    //   559: goto -297 -> 262
    //   562: astore_1
    //   563: aload_0
    //   564: getfield 30	jp/innovationplus/ipp/client/_HttpURLConnection:debugMessage	Z
    //   567: ifeq +15 -> 582
    //   570: ldc 14
    //   572: ldc -19
    //   574: invokestatic 115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   577: pop
    //   578: aload_1
    //   579: invokevirtual 238	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   582: new 47	jp/innovationplus/ipp/core/IPPException
    //   585: dup
    //   586: sipush 64533
    //   589: invokespecial 217	jp/innovationplus/ipp/core/IPPException:<init>	(I)V
    //   592: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	593	0	this	_HttpURLConnection
    //   0	593	1	paramString	String
    //   0	593	2	paramList	List<NameValuePair>
    //   12	369	3	localObject1	Object
    //   1	129	4	localObject2	Object
    //   238	272	5	i	int
    //   256	302	6	j	int
    //   241	18	7	k	int
    // Exception table:
    //   from	to	target	type
    //   31	78	384	java/net/MalformedURLException
    //   372	381	384	java/net/MalformedURLException
    //   132	152	415	java/io/IOException
    //   152	181	415	java/io/IOException
    //   181	196	415	java/io/IOException
    //   204	209	450	java/net/ProtocolException
    //   297	318	562	android/content/pm/PackageManager$NameNotFoundException
  }
  
  protected void addHTTPHeader(String paramString1, String paramString2)
  {
    httpHeader.add(new BasicNameValuePair(paramString1, paramString2));
  }
  
  public String getVersionNumber()
  {
    return "0.8.0a";
  }
  
  @TargetApi(11)
  protected <T> void ippDeleteRequest(Class<T> paramClass, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      _HttpURLConnectionParam local_HttpURLConnectionParam;
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("DELETE");
        local_HttpURLConnectionParam = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = null;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
    }
  }
  
  @TargetApi(11)
  protected <T> void ippGetRequest(Class<T> paramClass, List<NameValuePair> paramList, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("GET", paramList);
        paramList = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = null;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { paramList });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { paramList });
    }
  }
  
  protected <T> void ippGetRequest(Class<T> paramClass, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    try
    {
      ippGetRequest(paramClass, null, paramIPPQueryCallback);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  @TargetApi(11)
  protected <T> void ippPostRequest(Class<T> paramClass, Object paramObject, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      _HttpURLConnectionParam local_HttpURLConnectionParam;
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("POST");
        local_HttpURLConnectionParam = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = paramObject;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
    }
  }
  
  @TargetApi(11)
  protected <T> void ippPostRequest(Class<T> paramClass, Map<String, ?> paramMap, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      _HttpURLConnectionParam local_HttpURLConnectionParam;
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("POST");
        local_HttpURLConnectionParam = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = paramMap;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
    }
  }
  
  @TargetApi(11)
  protected <T> void ippPutRequest(Class<T> paramClass, Object paramObject, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      _HttpURLConnectionParam local_HttpURLConnectionParam;
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("PUT");
        local_HttpURLConnectionParam = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = paramObject;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
    }
  }
  
  @TargetApi(11)
  protected <T> void ippPutRequest(Class<T> paramClass, Map<String, ?> paramMap, IPPQueryCallback<T> paramIPPQueryCallback)
    throws IPPException
  {
    for (;;)
    {
      _HttpURLConnectionParam local_HttpURLConnectionParam;
      try
      {
        HttpURLConnection localHttpURLConnection = setupHTTPURLConnection("PUT");
        local_HttpURLConnectionParam = new _HttpURLConnectionParam();
        httpUrlConnection = localHttpURLConnection;
        postData = paramMap;
        paramClass = new _HttpRequestTask(paramClass);
        paramClass.setOnCallBack(paramIPPQueryCallback);
        debugMessage = debugMessage;
        if (Build.VERSION.SDK_INT < 11)
        {
          paramClass.execute(new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
          return;
        }
      }
      catch (IPPException paramClass)
      {
        throw paramClass;
      }
      finally {}
      paramClass.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new _HttpURLConnectionParam[] { local_HttpURLConnectionParam });
    }
  }
  
  public boolean isDebugMessage()
  {
    return debugMessage;
  }
  
  protected void removeHeader(String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i >= httpHeader.size()) {
        return;
      }
      if (((NameValuePair)httpHeader.get(i)).getName().equalsIgnoreCase(paramString)) {
        httpHeader.remove(i);
      }
      i += 1;
    }
  }
  
  public void setApplicationId(String paramString)
  {
    removeHeader("X-Application-id");
    addHTTPHeader("X-Application-id", paramString);
  }
  
  public void setAuthKey(String paramString)
  {
    removeHeader("X-Auth-key");
    addHTTPHeader("X-Auth-key", paramString);
  }
  
  protected void setContext(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public void setDebugMessage(boolean paramBoolean)
  {
    debugMessage = paramBoolean;
  }
  
  protected void setResourcePath(String paramString)
  {
    resourcePath = paramString;
  }
  
  protected void setTimeout(int paramInt)
  {
    timeout = paramInt;
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client._HttpURLConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.adsdk.sdk.video;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.adsdk.sdk.Log;

class WebFrame$LoadUrlTask
  extends AsyncTask<String, Void, String>
{
  String userAgent;
  
  public WebFrame$LoadUrlTask(WebFrame paramWebFrame)
  {
    userAgent = WebFrame.access$0(paramWebFrame);
  }
  
  /* Error */
  protected String doInBackground(String... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: aaload
    //   3: astore_2
    //   4: new 38	java/net/URL
    //   7: dup
    //   8: aload_2
    //   9: invokespecial 41	java/net/URL:<init>	(Ljava/lang/String;)V
    //   12: astore_3
    //   13: new 43	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 45
    //   19: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_2
    //   23: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokestatic 59	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   32: aload_3
    //   33: invokevirtual 60	java/net/URL:toString	()Ljava/lang/String;
    //   36: astore_1
    //   37: new 62	java/util/HashSet
    //   40: dup
    //   41: invokespecial 63	java/util/HashSet:<init>	()V
    //   44: astore 5
    //   46: aload 5
    //   48: aload_1
    //   49: invokeinterface 69 2 0
    //   54: pop
    //   55: aconst_null
    //   56: astore_2
    //   57: aload_3
    //   58: invokevirtual 73	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   61: checkcast 75	java/net/HttpURLConnection
    //   64: astore_3
    //   65: aload_1
    //   66: astore_2
    //   67: aload_3
    //   68: ldc 77
    //   70: aload_0
    //   71: getfield 24	com/adsdk/sdk/video/WebFrame$LoadUrlTask:userAgent	Ljava/lang/String;
    //   74: invokevirtual 81	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   77: aload_1
    //   78: astore_2
    //   79: aload_3
    //   80: iconst_0
    //   81: invokevirtual 85	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   84: aload_1
    //   85: astore_2
    //   86: aload_3
    //   87: invokevirtual 89	java/net/HttpURLConnection:getResponseCode	()I
    //   90: istore 6
    //   92: iload 6
    //   94: sipush 200
    //   97: if_icmpne +33 -> 130
    //   100: aload_1
    //   101: astore_2
    //   102: aload_3
    //   103: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   106: aload_1
    //   107: astore_2
    //   108: aload_3
    //   109: ifnull +7 -> 116
    //   112: aload_3
    //   113: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   116: aload_2
    //   117: astore_1
    //   118: aload_1
    //   119: areturn
    //   120: astore_1
    //   121: aload_2
    //   122: astore_1
    //   123: aload_2
    //   124: ifnonnull -6 -> 118
    //   127: ldc 94
    //   129: areturn
    //   130: aload_1
    //   131: astore_2
    //   132: aload_3
    //   133: ldc 96
    //   135: invokevirtual 100	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   138: astore_1
    //   139: aload_1
    //   140: astore_2
    //   141: aload_3
    //   142: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   145: aload_1
    //   146: astore_2
    //   147: aload 5
    //   149: aload_1
    //   150: invokeinterface 69 2 0
    //   155: ifne +21 -> 176
    //   158: aload_1
    //   159: astore_2
    //   160: ldc 102
    //   162: invokestatic 59	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   165: aload_3
    //   166: ifnull +7 -> 173
    //   169: aload_3
    //   170: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   173: ldc 94
    //   175: areturn
    //   176: aload_1
    //   177: astore_2
    //   178: new 38	java/net/URL
    //   181: dup
    //   182: aload_1
    //   183: invokespecial 41	java/net/URL:<init>	(Ljava/lang/String;)V
    //   186: astore 4
    //   188: iload 6
    //   190: sipush 302
    //   193: if_icmpeq +29 -> 222
    //   196: iload 6
    //   198: sipush 301
    //   201: if_icmpeq +21 -> 222
    //   204: iload 6
    //   206: sipush 307
    //   209: if_icmpeq +13 -> 222
    //   212: aload_1
    //   213: astore_2
    //   214: iload 6
    //   216: sipush 303
    //   219: if_icmpne -111 -> 108
    //   222: aload_3
    //   223: astore_2
    //   224: aload 4
    //   226: astore_3
    //   227: goto -170 -> 57
    //   230: astore_1
    //   231: aload_2
    //   232: astore_1
    //   233: aload_1
    //   234: ifnull +17 -> 251
    //   237: aload_1
    //   238: astore_2
    //   239: aload_2
    //   240: astore_1
    //   241: aload_3
    //   242: ifnull -124 -> 118
    //   245: aload_3
    //   246: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   249: aload_2
    //   250: areturn
    //   251: ldc 94
    //   253: astore_2
    //   254: goto -15 -> 239
    //   257: astore_1
    //   258: aload_3
    //   259: astore_2
    //   260: aload_2
    //   261: ifnull +7 -> 268
    //   264: aload_2
    //   265: invokevirtual 92	java/net/HttpURLConnection:disconnect	()V
    //   268: aload_1
    //   269: athrow
    //   270: astore_1
    //   271: goto -11 -> 260
    //   274: astore_3
    //   275: aload_2
    //   276: astore_3
    //   277: goto -44 -> 233
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	LoadUrlTask
    //   0	280	1	paramVarArgs	String[]
    //   3	273	2	localObject1	Object
    //   12	247	3	localObject2	Object
    //   274	1	3	localIOException	java.io.IOException
    //   276	1	3	localObject3	Object
    //   186	39	4	localURL	java.net.URL
    //   44	104	5	localHashSet	java.util.HashSet
    //   90	130	6	i	int
    // Exception table:
    //   from	to	target	type
    //   4	13	120	java/net/MalformedURLException
    //   67	77	230	java/io/IOException
    //   79	84	230	java/io/IOException
    //   86	92	230	java/io/IOException
    //   102	106	230	java/io/IOException
    //   132	139	230	java/io/IOException
    //   141	145	230	java/io/IOException
    //   147	158	230	java/io/IOException
    //   160	165	230	java/io/IOException
    //   178	188	230	java/io/IOException
    //   67	77	257	finally
    //   79	84	257	finally
    //   86	92	257	finally
    //   102	106	257	finally
    //   132	139	257	finally
    //   141	145	257	finally
    //   147	158	257	finally
    //   160	165	257	finally
    //   178	188	257	finally
    //   57	65	270	finally
    //   57	65	274	java/io/IOException
  }
  
  protected void onPostExecute(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (!paramString.equals("")) {}
    }
    else
    {
      str = "about:blank";
    }
    Log.d("Show URL: " + str);
    WebFrame.access$1(this$0).setAllowedUrl(str);
    WebFrame.access$2(this$0).loadUrl(str);
    this$0.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.WebFrame.LoadUrlTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
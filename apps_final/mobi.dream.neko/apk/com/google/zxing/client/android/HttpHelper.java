package com.google.zxing.client.android;

import java.io.IOException;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;

public final class HttpHelper
{
  private static final Collection<String> REDIRECTOR_DOMAINS = new HashSet(Arrays.asList(new String[] { "amzn.to", "bit.ly", "bitly.com", "fb.me", "goo.gl", "is.gd", "j.mp", "lnkd.in", "ow.ly", "R.BEETAGG.COM", "r.beetagg.com", "SCN.BY", "su.pr", "t.co", "tinyurl.com", "tr.im" }));
  private static final String TAG = HttpHelper.class.getSimpleName();
  
  /* Error */
  private static CharSequence consume(URLConnection paramURLConnection, int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 85	com/google/zxing/client/android/HttpHelper:getEncoding	(Ljava/net/URLConnection;)Ljava/lang/String;
    //   4: astore 4
    //   6: new 87	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   13: astore_3
    //   14: aconst_null
    //   15: astore_2
    //   16: new 90	java/io/InputStreamReader
    //   19: dup
    //   20: aload_0
    //   21: invokevirtual 96	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   24: aload 4
    //   26: invokespecial 99	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   29: astore_0
    //   30: sipush 1024
    //   33: newarray <illegal type>
    //   35: astore_2
    //   36: aload_3
    //   37: invokevirtual 103	java/lang/StringBuilder:length	()I
    //   40: iload_1
    //   41: if_icmpge +42 -> 83
    //   44: aload_0
    //   45: aload_2
    //   46: invokevirtual 109	java/io/Reader:read	([C)I
    //   49: istore 5
    //   51: iload 5
    //   53: ifle +30 -> 83
    //   56: aload_3
    //   57: aload_2
    //   58: iconst_0
    //   59: iload 5
    //   61: invokevirtual 113	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: goto -29 -> 36
    //   68: astore_3
    //   69: aload_0
    //   70: astore_2
    //   71: aload_3
    //   72: astore_0
    //   73: aload_2
    //   74: ifnull +7 -> 81
    //   77: aload_2
    //   78: invokevirtual 116	java/io/Reader:close	()V
    //   81: aload_0
    //   82: athrow
    //   83: aload_0
    //   84: ifnull +7 -> 91
    //   87: aload_0
    //   88: invokevirtual 116	java/io/Reader:close	()V
    //   91: aload_3
    //   92: areturn
    //   93: astore_0
    //   94: aload_3
    //   95: areturn
    //   96: astore_0
    //   97: aload_3
    //   98: areturn
    //   99: astore_2
    //   100: goto -19 -> 81
    //   103: astore_2
    //   104: goto -23 -> 81
    //   107: astore_0
    //   108: goto -35 -> 73
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	paramURLConnection	URLConnection
    //   0	111	1	paramInt	int
    //   15	63	2	localObject	Object
    //   99	1	2	localIOException	IOException
    //   103	1	2	localNullPointerException	NullPointerException
    //   13	44	3	localStringBuilder	StringBuilder
    //   68	30	3	localCharSequence	CharSequence
    //   4	21	4	str	String
    //   49	11	5	i	int
    // Exception table:
    //   from	to	target	type
    //   30	36	68	finally
    //   36	51	68	finally
    //   56	65	68	finally
    //   87	91	93	java/io/IOException
    //   87	91	96	java/lang/NullPointerException
    //   77	81	99	java/io/IOException
    //   77	81	103	java/lang/NullPointerException
    //   16	30	107	finally
  }
  
  public static CharSequence downloadViaHttp(String paramString, ContentType paramContentType)
    throws IOException
  {
    return downloadViaHttp(paramString, paramContentType, Integer.MAX_VALUE);
  }
  
  public static CharSequence downloadViaHttp(String paramString, ContentType paramContentType, int paramInt)
    throws IOException
  {
    switch (paramContentType)
    {
    default: 
      paramContentType = "text/*,*/*";
    }
    for (;;)
    {
      return downloadViaHttp(paramString, paramContentType, paramInt);
      paramContentType = "application/xhtml+xml,text/html,text/*,*/*";
      continue;
      paramContentType = "application/json,text/*,*/*";
    }
  }
  
  /* Error */
  private static CharSequence downloadViaHttp(String paramString1, String paramString2, int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   3: new 87	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   10: ldc -113
    //   12: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_0
    //   16: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: invokestatic 155	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   25: pop
    //   26: new 157	java/net/URL
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 160	java/net/URL:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 164	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   37: astore_3
    //   38: aload_3
    //   39: instanceof 166
    //   42: ifne +11 -> 53
    //   45: new 79	java/io/IOException
    //   48: dup
    //   49: invokespecial 167	java/io/IOException:<init>	()V
    //   52: athrow
    //   53: aload_3
    //   54: checkcast 166	java/net/HttpURLConnection
    //   57: astore_3
    //   58: aload_3
    //   59: ldc -87
    //   61: aload_1
    //   62: invokevirtual 173	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload_3
    //   66: ldc -81
    //   68: ldc -79
    //   70: invokevirtual 173	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload_3
    //   74: ldc -77
    //   76: ldc -75
    //   78: invokevirtual 173	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload_3
    //   82: invokevirtual 184	java/net/HttpURLConnection:connect	()V
    //   85: aload_3
    //   86: invokevirtual 187	java/net/HttpURLConnection:getResponseCode	()I
    //   89: istore 4
    //   91: iload 4
    //   93: sipush 200
    //   96: if_icmpeq +146 -> 242
    //   99: new 79	java/io/IOException
    //   102: dup
    //   103: new 87	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   110: ldc -67
    //   112: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: iload 4
    //   117: invokevirtual 192	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   120: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokespecial 193	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   126: athrow
    //   127: astore_0
    //   128: aload_3
    //   129: invokevirtual 196	java/net/HttpURLConnection:disconnect	()V
    //   132: aload_0
    //   133: athrow
    //   134: astore_1
    //   135: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   138: new 87	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   145: ldc -58
    //   147: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_0
    //   151: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   160: pop
    //   161: new 79	java/io/IOException
    //   164: dup
    //   165: aload_1
    //   166: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   169: athrow
    //   170: astore_1
    //   171: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   174: new 87	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   181: ldc -58
    //   183: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: aload_0
    //   187: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   196: pop
    //   197: new 79	java/io/IOException
    //   200: dup
    //   201: aload_1
    //   202: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   205: athrow
    //   206: astore_1
    //   207: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   210: new 87	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   217: ldc -58
    //   219: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: aload_0
    //   223: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   232: pop
    //   233: new 79	java/io/IOException
    //   236: dup
    //   237: aload_1
    //   238: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   241: athrow
    //   242: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   245: new 87	java/lang/StringBuilder
    //   248: dup
    //   249: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   252: ldc -50
    //   254: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: aload_0
    //   258: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokestatic 155	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   267: pop
    //   268: aload_3
    //   269: iload_2
    //   270: invokestatic 208	com/google/zxing/client/android/HttpHelper:consume	(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    //   273: astore_0
    //   274: aload_3
    //   275: invokevirtual 196	java/net/HttpURLConnection:disconnect	()V
    //   278: aload_0
    //   279: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	paramString1	String
    //   0	280	1	paramString2	String
    //   0	280	2	paramInt	int
    //   37	238	3	localObject	Object
    //   89	27	4	i	int
    // Exception table:
    //   from	to	target	type
    //   81	85	127	finally
    //   85	91	127	finally
    //   99	127	127	finally
    //   135	170	127	finally
    //   171	206	127	finally
    //   207	242	127	finally
    //   242	274	127	finally
    //   81	85	134	java/lang/NullPointerException
    //   81	85	170	java/lang/IllegalArgumentException
    //   85	91	206	java/lang/NullPointerException
  }
  
  private static String getEncoding(URLConnection paramURLConnection)
  {
    paramURLConnection = paramURLConnection.getHeaderField("Content-Type");
    if (paramURLConnection != null)
    {
      int i = paramURLConnection.indexOf("charset=");
      if (i >= 0) {
        return paramURLConnection.substring("charset=".length() + i);
      }
    }
    return "UTF-8";
  }
  
  /* Error */
  public static java.net.URI unredirect(java.net.URI paramURI)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 72	com/google/zxing/client/android/HttpHelper:REDIRECTOR_DOMAINS	Ljava/util/Collection;
    //   3: aload_0
    //   4: invokevirtual 236	java/net/URI:getHost	()Ljava/lang/String;
    //   7: invokeinterface 242 2 0
    //   12: ifne +5 -> 17
    //   15: aload_0
    //   16: areturn
    //   17: aload_0
    //   18: invokevirtual 246	java/net/URI:toURL	()Ljava/net/URL;
    //   21: invokevirtual 164	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   24: astore_1
    //   25: aload_1
    //   26: instanceof 166
    //   29: ifne +11 -> 40
    //   32: new 79	java/io/IOException
    //   35: dup
    //   36: invokespecial 167	java/io/IOException:<init>	()V
    //   39: athrow
    //   40: aload_1
    //   41: checkcast 166	java/net/HttpURLConnection
    //   44: astore_1
    //   45: aload_1
    //   46: iconst_0
    //   47: invokevirtual 250	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   50: aload_1
    //   51: iconst_0
    //   52: invokevirtual 253	java/net/HttpURLConnection:setDoInput	(Z)V
    //   55: aload_1
    //   56: ldc -1
    //   58: invokevirtual 258	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   61: aload_1
    //   62: ldc -77
    //   64: ldc -75
    //   66: invokevirtual 173	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: aload_1
    //   70: invokevirtual 184	java/net/HttpURLConnection:connect	()V
    //   73: aload_1
    //   74: invokevirtual 187	java/net/HttpURLConnection:getResponseCode	()I
    //   77: istore_3
    //   78: iload_3
    //   79: tableswitch	default:+45->124, 300:+166->245, 301:+166->245, 302:+166->245, 303:+166->245, 304:+45->124, 305:+45->124, 306:+45->124, 307:+166->245
    //   124: aload_1
    //   125: invokevirtual 196	java/net/HttpURLConnection:disconnect	()V
    //   128: aload_0
    //   129: areturn
    //   130: astore_2
    //   131: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   134: new 87	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   141: ldc -58
    //   143: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload_0
    //   147: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   156: pop
    //   157: new 79	java/io/IOException
    //   160: dup
    //   161: aload_2
    //   162: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   165: athrow
    //   166: astore_0
    //   167: aload_1
    //   168: invokevirtual 196	java/net/HttpURLConnection:disconnect	()V
    //   171: aload_0
    //   172: athrow
    //   173: astore_2
    //   174: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   177: new 87	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   184: ldc -58
    //   186: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload_0
    //   190: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   193: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   199: pop
    //   200: new 79	java/io/IOException
    //   203: dup
    //   204: aload_2
    //   205: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   208: athrow
    //   209: astore_2
    //   210: getstatic 24	com/google/zxing/client/android/HttpHelper:TAG	Ljava/lang/String;
    //   213: new 87	java/lang/StringBuilder
    //   216: dup
    //   217: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   220: ldc -58
    //   222: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload_0
    //   226: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokestatic 201	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   235: pop
    //   236: new 79	java/io/IOException
    //   239: dup
    //   240: aload_2
    //   241: invokespecial 204	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   244: athrow
    //   245: aload_1
    //   246: ldc_w 263
    //   249: invokevirtual 264	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   252: astore_2
    //   253: aload_2
    //   254: ifnull -130 -> 124
    //   257: new 233	java/net/URI
    //   260: dup
    //   261: aload_2
    //   262: invokespecial 265	java/net/URI:<init>	(Ljava/lang/String;)V
    //   265: astore_2
    //   266: aload_1
    //   267: invokevirtual 196	java/net/HttpURLConnection:disconnect	()V
    //   270: aload_2
    //   271: areturn
    //   272: astore_2
    //   273: goto -149 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	paramURI	java.net.URI
    //   24	243	1	localObject1	Object
    //   130	32	2	localNullPointerException1	NullPointerException
    //   173	32	2	localIllegalArgumentException	IllegalArgumentException
    //   209	32	2	localNullPointerException2	NullPointerException
    //   252	19	2	localObject2	Object
    //   272	1	2	localURISyntaxException	java.net.URISyntaxException
    //   77	2	3	i	int
    // Exception table:
    //   from	to	target	type
    //   69	73	130	java/lang/NullPointerException
    //   69	73	166	finally
    //   73	78	166	finally
    //   131	166	166	finally
    //   174	209	166	finally
    //   210	245	166	finally
    //   245	253	166	finally
    //   257	266	166	finally
    //   69	73	173	java/lang/IllegalArgumentException
    //   73	78	209	java/lang/NullPointerException
    //   257	266	272	java/net/URISyntaxException
  }
  
  public static enum ContentType
  {
    HTML,  JSON,  TEXT;
    
    private ContentType() {}
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.HttpHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
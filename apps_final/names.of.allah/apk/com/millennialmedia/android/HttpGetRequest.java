package com.millennialmedia.android;

import android.text.TextUtils;
import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class HttpGetRequest
{
  private HttpClient client = new DefaultHttpClient();
  private HttpGet getRequest = new HttpGet();
  
  /* Error */
  static String convertStreamToString(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 29	java/io/IOException
    //   7: dup
    //   8: ldc 31
    //   10: invokespecial 34	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: new 36	java/io/BufferedReader
    //   17: dup
    //   18: new 38	java/io/InputStreamReader
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 41	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   26: sipush 4096
    //   29: invokespecial 44	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   32: astore_1
    //   33: aload_1
    //   34: astore_0
    //   35: new 46	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   42: astore_2
    //   43: aload_1
    //   44: astore_0
    //   45: aload_1
    //   46: invokevirtual 51	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnull +66 -> 117
    //   54: aload_1
    //   55: astore_0
    //   56: aload_2
    //   57: new 46	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   64: aload_3
    //   65: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc 57
    //   70: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: goto -37 -> 43
    //   83: astore_2
    //   84: aload_1
    //   85: astore_0
    //   86: aload_2
    //   87: invokestatic 66	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   90: aload_1
    //   91: astore_0
    //   92: new 29	java/io/IOException
    //   95: dup
    //   96: ldc 68
    //   98: invokespecial 34	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore_2
    //   103: aload_0
    //   104: astore_1
    //   105: aload_2
    //   106: astore_0
    //   107: aload_1
    //   108: ifnull +7 -> 115
    //   111: aload_1
    //   112: invokevirtual 71	java/io/BufferedReader:close	()V
    //   115: aload_0
    //   116: athrow
    //   117: aload_1
    //   118: invokevirtual 71	java/io/BufferedReader:close	()V
    //   121: aload_2
    //   122: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: areturn
    //   126: astore_0
    //   127: aload_0
    //   128: invokestatic 66	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   131: goto -10 -> 121
    //   134: astore_1
    //   135: aload_1
    //   136: invokestatic 66	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   139: goto -24 -> 115
    //   142: astore_0
    //   143: aconst_null
    //   144: astore_1
    //   145: goto -38 -> 107
    //   148: astore_2
    //   149: aconst_null
    //   150: astore_1
    //   151: goto -67 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	paramInputStream	java.io.InputStream
    //   32	86	1	localObject1	Object
    //   134	2	1	localIOException	IOException
    //   144	7	1	localObject2	Object
    //   42	15	2	localStringBuilder	StringBuilder
    //   83	4	2	localOutOfMemoryError1	OutOfMemoryError
    //   102	20	2	localObject3	Object
    //   148	1	2	localOutOfMemoryError2	OutOfMemoryError
    //   49	16	3	str	String
    // Exception table:
    //   from	to	target	type
    //   35	43	83	java/lang/OutOfMemoryError
    //   45	50	83	java/lang/OutOfMemoryError
    //   56	80	83	java/lang/OutOfMemoryError
    //   35	43	102	finally
    //   45	50	102	finally
    //   56	80	102	finally
    //   86	90	102	finally
    //   92	102	102	finally
    //   117	121	126	java/io/IOException
    //   111	115	134	java/io/IOException
    //   14	33	142	finally
    //   14	33	148	java/lang/OutOfMemoryError
  }
  
  static void log(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0)) {
      Utils.ThreadUtils.execute(new HttpGetRequest.1(paramArrayOfString));
    }
  }
  
  HttpResponse get(String paramString)
  {
    HttpResponse localHttpResponse = null;
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      getRequest.setURI(new URI(paramString));
      localHttpResponse = client.execute(getRequest);
      return localHttpResponse;
    }
    catch (OutOfMemoryError paramString)
    {
      MMSDK.Log.e("Out of memory!");
    }
    return null;
  }
  
  void trackConversion(String paramString, boolean paramBoolean, long paramLong, TreeMap<String, String> paramTreeMap)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    }
    StringBuilder localStringBuilder;
    for (;;)
    {
      try
      {
        localStringBuilder = new StringBuilder("http://cvt.mydas.mobi/handleConversion?firstlaunch=" + i);
        if (paramString != null) {
          localStringBuilder.append("&goalId=" + paramString);
        }
        if (paramLong > 0L) {
          localStringBuilder.append("&installtime=" + paramLong / 1000L);
        }
        if (paramTreeMap == null) {
          break;
        }
        paramString = paramTreeMap.entrySet().iterator();
        if (!paramString.hasNext()) {
          break;
        }
        paramTreeMap = (Map.Entry)paramString.next();
        localStringBuilder.append(String.format("&%s=%s", new Object[] { paramTreeMap.getKey(), URLEncoder.encode((String)paramTreeMap.getValue(), "UTF-8") }));
        continue;
        i = 0;
      }
      catch (IOException paramString)
      {
        MMSDK.Log.e("Conversion tracking error: %s", new Object[] { paramString.getMessage() });
        return;
      }
    }
    paramString = localStringBuilder.toString();
    MMSDK.Log.d("Sending conversion tracker report: %s", new Object[] { paramString });
    getRequest.setURI(new URI(paramString));
    paramString = client.execute(getRequest);
    if (paramString.getStatusLine().getStatusCode() == 200)
    {
      MMSDK.Log.v("Successful conversion tracking event: %d", new Object[] { Integer.valueOf(paramString.getStatusLine().getStatusCode()) });
      return;
    }
    MMSDK.Log.e("Conversion tracking error: %d", new Object[] { Integer.valueOf(paramString.getStatusLine().getStatusCode()) });
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpGetRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
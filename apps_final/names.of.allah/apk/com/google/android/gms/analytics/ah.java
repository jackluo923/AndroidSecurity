package com.google.android.gms.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class ah
  implements n
{
  private final Context mContext;
  private GoogleAnalytics ui;
  private final String wX;
  private final HttpClient wY;
  private URL wZ;
  
  ah(HttpClient paramHttpClient, Context paramContext)
  {
    this(paramHttpClient, GoogleAnalytics.getInstance(paramContext), paramContext);
  }
  
  ah(HttpClient paramHttpClient, GoogleAnalytics paramGoogleAnalytics, Context paramContext)
  {
    mContext = paramContext.getApplicationContext();
    wX = a("GoogleAnalytics", "3.0", Build.VERSION.RELEASE, ak.a(Locale.getDefault()), Build.MODEL, Build.ID);
    wY = paramHttpClient;
    ui = paramGoogleAnalytics;
  }
  
  /* Error */
  private void a(ab paramab, URL paramURL, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 90	com/google/android/gms/analytics/ab:dl	()Ljava/lang/String;
    //   4: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   7: ifne +10 -> 17
    //   10: aload_0
    //   11: invokevirtual 100	com/google/android/gms/analytics/ah:ds	()Z
    //   14: ifne +4 -> 18
    //   17: return
    //   18: aload_2
    //   19: astore 4
    //   21: aload_2
    //   22: ifnonnull +16 -> 38
    //   25: aload_0
    //   26: getfield 102	com/google/android/gms/analytics/ah:wZ	Ljava/net/URL;
    //   29: ifnull +171 -> 200
    //   32: aload_0
    //   33: getfield 102	com/google/android/gms/analytics/ah:wZ	Ljava/net/URL;
    //   36: astore 4
    //   38: new 104	org/apache/http/HttpHost
    //   41: dup
    //   42: aload 4
    //   44: invokevirtual 109	java/net/URL:getHost	()Ljava/lang/String;
    //   47: aload 4
    //   49: invokevirtual 113	java/net/URL:getPort	()I
    //   52: aload 4
    //   54: invokevirtual 116	java/net/URL:getProtocol	()Ljava/lang/String;
    //   57: invokespecial 119	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   60: astore_2
    //   61: aload_0
    //   62: aload_1
    //   63: invokevirtual 90	com/google/android/gms/analytics/ab:dl	()Ljava/lang/String;
    //   66: aload 4
    //   68: invokevirtual 122	java/net/URL:getPath	()Ljava/lang/String;
    //   71: invokespecial 126	com/google/android/gms/analytics/ah:e	(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    //   74: astore_1
    //   75: aload_1
    //   76: ifnull -59 -> 17
    //   79: aload_1
    //   80: ldc -128
    //   82: aload_2
    //   83: invokevirtual 131	org/apache/http/HttpHost:toHostString	()Ljava/lang/String;
    //   86: invokeinterface 137 3 0
    //   91: invokestatic 142	com/google/android/gms/analytics/aa:dk	()Z
    //   94: ifeq +8 -> 102
    //   97: aload_0
    //   98: aload_1
    //   99: invokespecial 145	com/google/android/gms/analytics/ah:a	(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    //   102: iload_3
    //   103: ifeq +10 -> 113
    //   106: aload_0
    //   107: getfield 39	com/google/android/gms/analytics/ah:mContext	Landroid/content/Context;
    //   110: invokestatic 151	com/google/android/gms/analytics/q:t	(Landroid/content/Context;)V
    //   113: aload_0
    //   114: getfield 75	com/google/android/gms/analytics/ah:wY	Lorg/apache/http/client/HttpClient;
    //   117: aload_2
    //   118: aload_1
    //   119: invokeinterface 157 3 0
    //   124: astore_1
    //   125: aload_1
    //   126: invokeinterface 163 1 0
    //   131: invokeinterface 168 1 0
    //   136: istore 5
    //   138: aload_1
    //   139: invokeinterface 172 1 0
    //   144: astore_2
    //   145: aload_2
    //   146: ifnull +9 -> 155
    //   149: aload_2
    //   150: invokeinterface 177 1 0
    //   155: iload 5
    //   157: sipush 200
    //   160: if_icmpeq -143 -> 17
    //   163: new 179	java/lang/StringBuilder
    //   166: dup
    //   167: ldc -75
    //   169: invokespecial 184	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   172: aload_1
    //   173: invokeinterface 163 1 0
    //   178: invokeinterface 168 1 0
    //   183: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   186: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: invokestatic 194	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   192: return
    //   193: astore_1
    //   194: ldc -60
    //   196: invokestatic 194	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   199: return
    //   200: new 106	java/net/URL
    //   203: dup
    //   204: ldc -58
    //   206: invokespecial 199	java/net/URL:<init>	(Ljava/lang/String;)V
    //   209: astore 4
    //   211: goto -173 -> 38
    //   214: astore_1
    //   215: return
    //   216: astore_1
    //   217: new 179	java/lang/StringBuilder
    //   220: dup
    //   221: ldc -55
    //   223: invokespecial 184	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: aload_1
    //   227: invokevirtual 205	java/lang/Object:getClass	()Ljava/lang/Class;
    //   230: invokevirtual 210	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   233: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokestatic 194	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   242: aload_1
    //   243: invokevirtual 216	java/io/IOException:getMessage	()Ljava/lang/String;
    //   246: invokestatic 194	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   249: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	ah
    //   0	250	1	paramab	ab
    //   0	250	2	paramURL	URL
    //   0	250	3	paramBoolean	boolean
    //   19	191	4	localURL	URL
    //   136	25	5	i	int
    // Exception table:
    //   from	to	target	type
    //   61	75	193	org/apache/http/client/ClientProtocolException
    //   79	102	193	org/apache/http/client/ClientProtocolException
    //   106	113	193	org/apache/http/client/ClientProtocolException
    //   113	145	193	org/apache/http/client/ClientProtocolException
    //   149	155	193	org/apache/http/client/ClientProtocolException
    //   163	192	193	org/apache/http/client/ClientProtocolException
    //   25	38	214	java/net/MalformedURLException
    //   200	211	214	java/net/MalformedURLException
    //   61	75	216	java/io/IOException
    //   79	102	216	java/io/IOException
    //   106	113	216	java/io/IOException
    //   113	145	216	java/io/IOException
    //   149	155	216	java/io/IOException
    //   163	192	216	java/io/IOException
  }
  
  private void a(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject = paramHttpEntityEnclosingRequest.getAllHeaders();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(localObject[i].toString()).append("\n");
      i += 1;
    }
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null) {}
    try
    {
      paramHttpEntityEnclosingRequest = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (paramHttpEntityEnclosingRequest != null)
      {
        i = paramHttpEntityEnclosingRequest.available();
        if (i > 0)
        {
          localObject = new byte[i];
          paramHttpEntityEnclosingRequest.read((byte[])localObject);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String((byte[])localObject)).append("\n");
        }
      }
    }
    catch (IOException paramHttpEntityEnclosingRequest)
    {
      for (;;)
      {
        aa.C("Error Writing hit to log...");
      }
    }
    aa.C(localStringBuffer.toString());
  }
  
  private HttpEntityEnclosingRequest e(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      aa.D("Empty hit, discarding.");
      return null;
    }
    String str = paramString2 + "?" + paramString1;
    if (str.length() < 2036) {
      paramString1 = new BasicHttpEntityEnclosingRequest("GET", str);
    }
    for (;;)
    {
      paramString1.addHeader("User-Agent", wX);
      return paramString1;
      paramString2 = new BasicHttpEntityEnclosingRequest("POST", paramString2);
      try
      {
        paramString2.setEntity(new StringEntity(paramString1));
        paramString1 = paramString2;
      }
      catch (UnsupportedEncodingException paramString1)
      {
        aa.D("Encoding error, discarding hit");
      }
    }
    return null;
  }
  
  public void M(String paramString)
  {
    try
    {
      wZ = new URL(paramString);
      return;
    }
    catch (MalformedURLException paramString)
    {
      wZ = null;
    }
  }
  
  public int a(List<x> paramList, ab paramab, boolean paramBoolean)
  {
    int m = 0;
    int n = Math.min(paramList.size(), 40);
    paramab.c("_hr", paramList.size());
    int i = 0;
    Object localObject1 = null;
    boolean bool1 = true;
    int k = 0;
    if (k < n)
    {
      x localx = (x)paramList.get(k);
      URL localURL = a(localx);
      int j;
      if (localURL == null)
      {
        if (aa.dk()) {
          aa.D("No destination: discarding hit: " + localx.df());
        }
        for (;;)
        {
          i += 1;
          j = m + 1;
          k += 1;
          m = j;
          break;
          aa.D("No destination: discarding hit.");
        }
      }
      Object localObject2 = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol());
      Object localObject3 = localURL.getPath();
      if (TextUtils.isEmpty(localx.df())) {}
      for (localObject1 = "";; localObject1 = y.a(localx, System.currentTimeMillis()))
      {
        localObject3 = e((String)localObject1, (String)localObject3);
        if (localObject3 != null) {
          break label232;
        }
        i += 1;
        j = m + 1;
        localObject1 = localURL;
        break;
      }
      label232:
      ((HttpEntityEnclosingRequest)localObject3).addHeader("Host", ((HttpHost)localObject2).toHostString());
      if (aa.dk()) {
        a((HttpEntityEnclosingRequest)localObject3);
      }
      if (((String)localObject1).length() > 8192)
      {
        aa.D("Hit too long (> 8192 bytes)--not sent");
        j = i + 1;
      }
      for (;;)
      {
        paramab.c("_td", ((String)localObject1).getBytes().length);
        m += 1;
        localObject1 = localURL;
        i = j;
        j = m;
        break;
        if (ui.isDryRunEnabled())
        {
          aa.B("Dry run enabled. Hit not actually sent.");
          j = i;
        }
        else
        {
          boolean bool2 = bool1;
          boolean bool3;
          if (bool1) {
            bool3 = bool1;
          }
          try
          {
            q.t(mContext);
            bool2 = false;
            bool3 = bool2;
            bool1 = bool2;
            localObject2 = wY.execute((HttpHost)localObject2, (HttpRequest)localObject3);
            bool3 = bool2;
            bool1 = bool2;
            int i1 = ((HttpResponse)localObject2).getStatusLine().getStatusCode();
            bool3 = bool2;
            bool1 = bool2;
            localObject3 = ((HttpResponse)localObject2).getEntity();
            if (localObject3 != null)
            {
              bool3 = bool2;
              bool1 = bool2;
              ((HttpEntity)localObject3).consumeContent();
            }
            bool1 = bool2;
            j = i;
            if (i1 != 200)
            {
              bool3 = bool2;
              bool1 = bool2;
              aa.D("Bad response: " + ((HttpResponse)localObject2).getStatusLine().getStatusCode());
              bool1 = bool2;
              j = i;
            }
          }
          catch (ClientProtocolException localClientProtocolException)
          {
            aa.D("ClientProtocolException sending hit; discarding hit...");
            paramab.c("_hd", i);
            bool1 = bool3;
            j = i;
          }
          catch (IOException paramList)
          {
            aa.D("Exception sending hit: " + paramList.getClass().getSimpleName());
            aa.D(paramList.getMessage());
            paramab.c("_de", 1);
            paramab.c("_hd", i);
            paramab.c("_hs", m);
            a(paramab, localURL, bool1);
            return m;
          }
        }
      }
    }
    paramab.c("_hd", i);
    paramab.c("_hs", m);
    if (paramBoolean) {
      a(paramab, (URL)localObject1, bool1);
    }
    return m;
  }
  
  String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  URL a(x paramx)
  {
    if (wZ != null) {
      return wZ;
    }
    for (paramx = paramx.di();; paramx = "https://ssl.google-analytics.com/collect") {
      try
      {
        if ("http:".equals(paramx))
        {
          paramx = "http://www.google-analytics.com/collect";
          paramx = new URL(paramx);
          return paramx;
        }
      }
      catch (MalformedURLException paramx)
      {
        aa.A("Error trying to parse the hardcoded host url. This really shouldn't happen.");
        return null;
      }
    }
  }
  
  public boolean cx()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      aa.C("...no network connectivity");
      return false;
    }
    return true;
  }
  
  boolean ds()
  {
    return Math.random() * 100.0D <= 1.0D;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
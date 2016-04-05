package com.appyet.g;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

final class i
  extends Thread
{
  private f b;
  private long c;
  private String d;
  private Object[] e;
  private volatile boolean f;
  private HttpURLConnection g;
  
  public i(g paramg) {}
  
  private HttpURLConnection a(URLConnection paramURLConnection)
  {
    int i = 0;
    if (!(paramURLConnection instanceof HttpURLConnection)) {
      throw new IllegalArgumentException("The URL is not valid for a http connection.");
    }
    if ((paramURLConnection instanceof HttpsURLConnection))
    {
      HttpsURLConnection localHttpsURLConnection = (HttpsURLConnection)paramURLConnection;
      if (a.a(64)) {
        localHttpsURLConnection.setHostnameVerifier(new j(this));
      }
      paramURLConnection = localHttpsURLConnection;
      if (a.g == null) {
        return paramURLConnection;
      }
      try
      {
        String[] arrayOfString = new String[2];
        arrayOfString[0] = "TLS";
        arrayOfString[1] = "SSL";
        int j = arrayOfString.length;
        for (;;)
        {
          paramURLConnection = localHttpsURLConnection;
          if (i >= j) {
            break;
          }
          paramURLConnection = SSLContext.getInstance(arrayOfString[i]);
          paramURLConnection.init(a.h, a.g, new SecureRandom());
          localHttpsURLConnection.setSSLSocketFactory(paramURLConnection.getSocketFactory());
          i += 1;
        }
        paramURLConnection = (HttpURLConnection)paramURLConnection;
      }
      catch (Exception paramURLConnection)
      {
        throw new l(paramURLConnection);
      }
    }
    return paramURLConnection;
  }
  
  public final Object a(String paramString, Object[] paramArrayOfObject)
  {
    Object localObject2;
    Object localObject1;
    for (;;)
    {
      try
      {
        if ((a.a(1)) && (!paramString.matches("^[A-Za-z0-9\\._:/]*$"))) {
          throw new n("Method name must only contain A-Z a-z . : _ / ");
        }
      }
      catch (SocketTimeoutException paramString)
      {
        throw new q("The XMLRPC call timed out.");
        localObject2 = new b(paramString, paramArrayOfObject);
        if (a.i == null) {
          break label265;
        }
        localObject1 = a.a.openConnection(a.i);
        g = a((URLConnection)localObject1);
        g.setInstanceFollowRedirects(false);
        g.setRequestMethod("POST");
        g.setDoOutput(true);
        g.setDoInput(true);
        if (a.j > 0)
        {
          g.setConnectTimeout(a.j * 1000);
          g.setReadTimeout(a.j * 1000);
        }
        localObject3 = a.b.entrySet().iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject4 = (Map.Entry)((Iterator)localObject3).next();
        g.setRequestProperty((String)((Map.Entry)localObject4).getKey(), (String)((Map.Entry)localObject4).getValue());
        continue;
      }
      catch (IOException paramString)
      {
        if (!f) {
          break label256;
        }
      }
      if (c > 0L) {
        break label801;
      }
      label256:
      throw new l(paramString);
      label265:
      localObject1 = a.a.openConnection();
    }
    Object localObject4 = a.f;
    Object localObject3 = g;
    if ((a == null) || (b == null) || (a.length() <= 0) || (b.length() <= 0))
    {
      a.e.b(g);
      localObject3 = new OutputStreamWriter(g.getOutputStream());
      ((OutputStreamWriter)localObject3).write(((b)localObject2).a());
      ((OutputStreamWriter)localObject3).flush();
      ((OutputStreamWriter)localObject3).close();
    }
    for (;;)
    {
      try
      {
        i = g.getResponseCode();
        if ((i != 403) && (i != 401)) {
          break label658;
        }
        if (a.a(16))
        {
          localObject1 = g.getErrorStream();
          break label817;
          if (!a.a(32)) {
            break label693;
          }
          if (i != 302) {
            break label838;
          }
          i = 1;
          localObject2 = g.getHeaderField("Location");
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (((String)localObject2).length() > 0) {}
          }
          else
          {
            localObject1 = g.getHeaderField("location");
          }
          localObject2 = a.a;
          a.a = new URL((String)localObject1);
          g.disconnect();
          paramString = a(paramString, paramArrayOfObject);
          if (i == 0) {
            break label836;
          }
          a.a = ((URL)localObject2);
          return paramString;
          localObject4 = com.appyet.g.a.a.b(a + ":" + b);
          ((HttpURLConnection)localObject3).addRequestProperty("Authorization", "Basic " + (String)localObject4);
        }
      }
      catch (IOException localIOException)
      {
        i = g.getResponseCode();
        continue;
      }
      throw new l("Invalid status code '" + i + "' returned from server.");
      label658:
      InputStream localInputStream = g.getInputStream();
      if ("gzip".equals(((URLConnection)localObject1).getContentEncoding()))
      {
        localObject1 = new GZIPInputStream(localInputStream);
        break label817;
        label693:
        throw new l("The server responded with a http 301 or 302 status code, but forwarding has not been enabled (FLAGS_FORWARD).");
      }
      label801:
      label817:
      do
      {
        if ((!a.a(16)) && (i != 200)) {
          throw new l("The status code of the http response must be 200.");
        }
        if ((a.a(1)) && (!g.getContentType().startsWith("text/xml; charset=utf-8"))) {
          throw new l("The Content-Type of the response must be text/xml.");
        }
        a.e.a(g);
        paramString = a.d.a((InputStream)localObject1);
        return paramString;
        throw new k(a, (byte)0);
        localObject1 = localInputStream;
        if (i == 301) {
          break;
        }
      } while (i != 302);
      continue;
      label836:
      return paramString;
      label838:
      int i = 0;
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 354	com/appyet/g/i:b	Lcom/appyet/g/f;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   12: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   15: aload_0
    //   16: getfield 203	com/appyet/g/i:c	J
    //   19: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   22: aload_0
    //   23: invokeinterface 366 3 0
    //   28: pop
    //   29: aload_0
    //   30: aload_0
    //   31: getfield 368	com/appyet/g/i:d	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 370	com/appyet/g/i:e	[Ljava/lang/Object;
    //   38: invokevirtual 269	com/appyet/g/i:a	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   41: pop
    //   42: aload_0
    //   43: getfield 354	com/appyet/g/i:b	Lcom/appyet/g/f;
    //   46: astore_1
    //   47: aload_0
    //   48: getfield 203	com/appyet/g/i:c	J
    //   51: lstore_3
    //   52: aload_0
    //   53: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   56: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   59: astore_1
    //   60: aload_0
    //   61: getfield 203	com/appyet/g/i:c	J
    //   64: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   67: astore_2
    //   68: aload_1
    //   69: aload_2
    //   70: invokeinterface 374 2 0
    //   75: pop
    //   76: return
    //   77: astore_1
    //   78: aload_0
    //   79: getfield 354	com/appyet/g/i:b	Lcom/appyet/g/f;
    //   82: astore_1
    //   83: aload_0
    //   84: getfield 203	com/appyet/g/i:c	J
    //   87: lstore_3
    //   88: aload_0
    //   89: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   92: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   95: astore_1
    //   96: aload_0
    //   97: getfield 203	com/appyet/g/i:c	J
    //   100: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   103: astore_2
    //   104: goto -36 -> 68
    //   107: astore_1
    //   108: aload_0
    //   109: getfield 354	com/appyet/g/i:b	Lcom/appyet/g/f;
    //   112: astore_1
    //   113: aload_0
    //   114: getfield 203	com/appyet/g/i:c	J
    //   117: lstore_3
    //   118: aload_0
    //   119: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   122: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   125: astore_1
    //   126: aload_0
    //   127: getfield 203	com/appyet/g/i:c	J
    //   130: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   133: astore_2
    //   134: goto -66 -> 68
    //   137: astore_1
    //   138: aload_0
    //   139: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   142: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   145: aload_0
    //   146: getfield 203	com/appyet/g/i:c	J
    //   149: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   152: invokeinterface 374 2 0
    //   157: pop
    //   158: aload_1
    //   159: athrow
    //   160: astore_1
    //   161: aload_0
    //   162: getfield 22	com/appyet/g/i:a	Lcom/appyet/g/g;
    //   165: getfield 356	com/appyet/g/g:c	Ljava/util/Map;
    //   168: astore_1
    //   169: aload_0
    //   170: getfield 203	com/appyet/g/i:c	J
    //   173: invokestatic 362	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   176: astore_2
    //   177: goto -109 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	180	0	this	i
    //   46	23	1	localObject1	Object
    //   77	1	1	localp	p
    //   82	14	1	localObject2	Object
    //   107	1	1	locall	l
    //   112	14	1	localObject3	Object
    //   137	22	1	localObject4	Object
    //   160	1	1	localk	k
    //   168	1	1	localMap	Map
    //   67	110	2	localLong	Long
    //   51	67	3	l	long
    // Exception table:
    //   from	to	target	type
    //   8	52	77	com/appyet/g/p
    //   8	52	107	com/appyet/g/l
    //   8	52	137	finally
    //   78	88	137	finally
    //   108	118	137	finally
    //   8	52	160	com/appyet/g/k
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.g;

import com.appyet.g.b.j;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.KeyManager;
import javax.net.ssl.TrustManager;

public final class g
{
  URL a;
  Map<String, String> b = new ConcurrentHashMap();
  Map<Long, i> c = new ConcurrentHashMap();
  e d;
  public c e;
  a f;
  TrustManager[] g;
  KeyManager[] h;
  Proxy i;
  public int j;
  private final int k;
  
  public g(URL paramURL)
  {
    this(paramURL, "aXMLRPC");
  }
  
  private g(URL paramURL, String paramString)
  {
    j.a = new j();
    a = paramURL;
    k = 4;
    d = new e();
    e = new c();
    f = new a();
    b.put("Content-Type", "text/xml; charset=utf-8");
    b.put("User-Agent", paramString);
    if (a(128)) {
      g = new TrustManager[] { new h(this) };
    }
    if (a(1024))
    {
      paramURL = System.getProperties();
      paramString = paramURL.getProperty("http.proxyHost");
      int m = Integer.parseInt(paramURL.getProperty("http.proxyPort", "0"));
      if ((m > 0) && (paramString.length() > 0) && (!paramString.equals("null"))) {
        i = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramString, m));
      }
    }
  }
  
  public final Object a(String paramString, Object... paramVarArgs)
  {
    return new i(this).a(paramString, paramVarArgs);
  }
  
  public final void a(String paramString)
  {
    b.put("User-Agent", paramString);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (("Content-Type".equals(paramString1)) || ("Host".equals(paramString1)) || ("Content-Length".equals(paramString1))) {
      throw new n("You cannot modify the Host, Content-Type or Content-Length header.");
    }
    b.put(paramString1, paramString2);
  }
  
  public final void a(Map<String, String> paramMap)
  {
    c localc = e;
    if ((a & 0x4) != 0) {
      b = paramMap;
    }
  }
  
  final boolean a(int paramInt)
  {
    return (k & paramInt) != 0;
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
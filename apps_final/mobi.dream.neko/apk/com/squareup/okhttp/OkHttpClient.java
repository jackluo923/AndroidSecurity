package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpURLConnectionImpl;
import com.squareup.okhttp.internal.http.HttpsURLConnectionImpl;
import com.squareup.okhttp.internal.http.OkResponseCache;
import com.squareup.okhttp.internal.http.OkResponseCacheAdapter;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.ResponseCache;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class OkHttpClient
{
  private ConnectionPool connectionPool;
  private CookieHandler cookieHandler;
  private Set<Route> failedRoutes = Collections.synchronizedSet(new LinkedHashSet());
  private boolean followProtocolRedirects = true;
  private HostnameVerifier hostnameVerifier;
  private Proxy proxy;
  private ProxySelector proxySelector;
  private ResponseCache responseCache;
  private SSLSocketFactory sslSocketFactory;
  
  private OkHttpClient copyWithDefaults()
  {
    OkHttpClient localOkHttpClient = new OkHttpClient();
    proxy = proxy;
    failedRoutes = failedRoutes;
    if (proxySelector != null)
    {
      localObject = proxySelector;
      proxySelector = ((ProxySelector)localObject);
      if (cookieHandler == null) {
        break label143;
      }
      localObject = cookieHandler;
      label53:
      cookieHandler = ((CookieHandler)localObject);
      if (responseCache == null) {
        break label150;
      }
      localObject = responseCache;
      label70:
      responseCache = ((ResponseCache)localObject);
      if (sslSocketFactory == null) {
        break label157;
      }
      localObject = sslSocketFactory;
      label87:
      sslSocketFactory = ((SSLSocketFactory)localObject);
      if (hostnameVerifier == null) {
        break label164;
      }
      localObject = hostnameVerifier;
      label104:
      hostnameVerifier = ((HostnameVerifier)localObject);
      if (connectionPool == null) {
        break label171;
      }
    }
    label143:
    label150:
    label157:
    label164:
    label171:
    for (Object localObject = connectionPool;; localObject = ConnectionPool.getDefault())
    {
      connectionPool = ((ConnectionPool)localObject);
      followProtocolRedirects = followProtocolRedirects;
      return localOkHttpClient;
      localObject = ProxySelector.getDefault();
      break;
      localObject = CookieHandler.getDefault();
      break label53;
      localObject = ResponseCache.getDefault();
      break label70;
      localObject = HttpsURLConnection.getDefaultSSLSocketFactory();
      break label87;
      localObject = HttpsURLConnection.getDefaultHostnameVerifier();
      break label104;
    }
  }
  
  private OkResponseCache okResponseCache()
  {
    if ((responseCache instanceof HttpResponseCache)) {
      return responseCache).okResponseCache;
    }
    if (responseCache != null) {
      return new OkResponseCacheAdapter(responseCache);
    }
    return null;
  }
  
  public ConnectionPool getConnectionPool()
  {
    return connectionPool;
  }
  
  public CookieHandler getCookieHandler()
  {
    return cookieHandler;
  }
  
  public boolean getFollowProtocolRedirects()
  {
    return followProtocolRedirects;
  }
  
  public HostnameVerifier getHostnameVerifier()
  {
    return hostnameVerifier;
  }
  
  public Proxy getProxy()
  {
    return proxy;
  }
  
  public ProxySelector getProxySelector()
  {
    return proxySelector;
  }
  
  public ResponseCache getResponseCache()
  {
    return responseCache;
  }
  
  public SSLSocketFactory getSslSocketFactory()
  {
    return sslSocketFactory;
  }
  
  public HttpURLConnection open(URL paramURL)
  {
    String str = paramURL.getProtocol();
    OkHttpClient localOkHttpClient = copyWithDefaults();
    if (str.equals("http")) {
      return new HttpURLConnectionImpl(paramURL, localOkHttpClient, localOkHttpClient.okResponseCache(), failedRoutes);
    }
    if (str.equals("https")) {
      return new HttpsURLConnectionImpl(paramURL, localOkHttpClient, localOkHttpClient.okResponseCache(), failedRoutes);
    }
    throw new IllegalArgumentException("Unexpected protocol: " + str);
  }
  
  public OkHttpClient setConnectionPool(ConnectionPool paramConnectionPool)
  {
    connectionPool = paramConnectionPool;
    return this;
  }
  
  public OkHttpClient setCookieHandler(CookieHandler paramCookieHandler)
  {
    cookieHandler = paramCookieHandler;
    return this;
  }
  
  public OkHttpClient setFollowProtocolRedirects(boolean paramBoolean)
  {
    followProtocolRedirects = paramBoolean;
    return this;
  }
  
  public OkHttpClient setHostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    hostnameVerifier = paramHostnameVerifier;
    return this;
  }
  
  public OkHttpClient setProxy(Proxy paramProxy)
  {
    proxy = paramProxy;
    return this;
  }
  
  public OkHttpClient setProxySelector(ProxySelector paramProxySelector)
  {
    proxySelector = paramProxySelector;
    return this;
  }
  
  public OkHttpClient setResponseCache(ResponseCache paramResponseCache)
  {
    responseCache = paramResponseCache;
    return this;
  }
  
  public OkHttpClient setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    sslSocketFactory = paramSSLSocketFactory;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.OkHttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
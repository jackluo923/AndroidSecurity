package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.TunnelRequest;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SecureCacheResponse;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class HttpsURLConnectionImpl
  extends HttpsURLConnection
{
  private final HttpUrlConnectionDelegate delegate;
  
  public HttpsURLConnectionImpl(URL paramURL, OkHttpClient paramOkHttpClient, OkResponseCache paramOkResponseCache, Set<Route> paramSet)
  {
    super(paramURL);
    delegate = new HttpUrlConnectionDelegate(paramURL, paramOkHttpClient, paramOkResponseCache, paramSet, null);
  }
  
  private SSLSocket getSslSocket()
  {
    if ((delegate.httpEngine == null) || (delegate.httpEngine.sentRequestMillis == -1L)) {
      throw new IllegalStateException("Connection has not yet been established");
    }
    if ((delegate.httpEngine instanceof HttpsEngine)) {
      return delegate.httpEngine).sslSocket;
    }
    return null;
  }
  
  public void addRequestProperty(String paramString1, String paramString2)
  {
    delegate.addRequestProperty(paramString1, paramString2);
  }
  
  public void connect()
    throws IOException
  {
    connected = true;
    delegate.connect();
  }
  
  public void disconnect()
  {
    delegate.disconnect();
  }
  
  public boolean getAllowUserInteraction()
  {
    return delegate.getAllowUserInteraction();
  }
  
  public String getCipherSuite()
  {
    Object localObject = delegate.getSecureCacheResponse();
    if (localObject != null) {
      return ((SecureCacheResponse)localObject).getCipherSuite();
    }
    localObject = getSslSocket();
    if (localObject != null) {
      return ((SSLSocket)localObject).getSession().getCipherSuite();
    }
    return null;
  }
  
  public int getConnectTimeout()
  {
    return delegate.getConnectTimeout();
  }
  
  public Object getContent()
    throws IOException
  {
    return delegate.getContent();
  }
  
  public Object getContent(Class[] paramArrayOfClass)
    throws IOException
  {
    return delegate.getContent(paramArrayOfClass);
  }
  
  public String getContentEncoding()
  {
    return delegate.getContentEncoding();
  }
  
  public int getContentLength()
  {
    return delegate.getContentLength();
  }
  
  public String getContentType()
  {
    return delegate.getContentType();
  }
  
  public long getDate()
  {
    return delegate.getDate();
  }
  
  public boolean getDefaultUseCaches()
  {
    return delegate.getDefaultUseCaches();
  }
  
  public boolean getDoInput()
  {
    return delegate.getDoInput();
  }
  
  public boolean getDoOutput()
  {
    return delegate.getDoOutput();
  }
  
  public InputStream getErrorStream()
  {
    return delegate.getErrorStream();
  }
  
  public long getExpiration()
  {
    return delegate.getExpiration();
  }
  
  public String getHeaderField(int paramInt)
  {
    return delegate.getHeaderField(paramInt);
  }
  
  public String getHeaderField(String paramString)
  {
    return delegate.getHeaderField(paramString);
  }
  
  public long getHeaderFieldDate(String paramString, long paramLong)
  {
    return delegate.getHeaderFieldDate(paramString, paramLong);
  }
  
  public int getHeaderFieldInt(String paramString, int paramInt)
  {
    return delegate.getHeaderFieldInt(paramString, paramInt);
  }
  
  public String getHeaderFieldKey(int paramInt)
  {
    return delegate.getHeaderFieldKey(paramInt);
  }
  
  public Map<String, List<String>> getHeaderFields()
  {
    return delegate.getHeaderFields();
  }
  
  public HostnameVerifier getHostnameVerifier()
  {
    return delegate.hostnameVerifier;
  }
  
  public HttpEngine getHttpEngine()
  {
    return delegate.getHttpEngine();
  }
  
  public long getIfModifiedSince()
  {
    return delegate.getIfModifiedSince();
  }
  
  public InputStream getInputStream()
    throws IOException
  {
    return delegate.getInputStream();
  }
  
  public boolean getInstanceFollowRedirects()
  {
    return delegate.getInstanceFollowRedirects();
  }
  
  public long getLastModified()
  {
    return delegate.getLastModified();
  }
  
  public Certificate[] getLocalCertificates()
  {
    Certificate[] arrayOfCertificate = null;
    Object localObject = delegate.getSecureCacheResponse();
    if (localObject != null)
    {
      localObject = ((SecureCacheResponse)localObject).getLocalCertificateChain();
      if (localObject != null) {
        arrayOfCertificate = (Certificate[])((List)localObject).toArray(new Certificate[((List)localObject).size()]);
      }
    }
    do
    {
      return arrayOfCertificate;
      localObject = getSslSocket();
    } while (localObject == null);
    return ((SSLSocket)localObject).getSession().getLocalCertificates();
  }
  
  public Principal getLocalPrincipal()
  {
    Object localObject = delegate.getSecureCacheResponse();
    if (localObject != null) {
      return ((SecureCacheResponse)localObject).getLocalPrincipal();
    }
    localObject = getSslSocket();
    if (localObject != null) {
      return ((SSLSocket)localObject).getSession().getLocalPrincipal();
    }
    return null;
  }
  
  public OutputStream getOutputStream()
    throws IOException
  {
    return delegate.getOutputStream();
  }
  
  public Principal getPeerPrincipal()
    throws SSLPeerUnverifiedException
  {
    Object localObject = delegate.getSecureCacheResponse();
    if (localObject != null) {
      return ((SecureCacheResponse)localObject).getPeerPrincipal();
    }
    localObject = getSslSocket();
    if (localObject != null) {
      return ((SSLSocket)localObject).getSession().getPeerPrincipal();
    }
    return null;
  }
  
  public Permission getPermission()
    throws IOException
  {
    return delegate.getPermission();
  }
  
  public int getReadTimeout()
  {
    return delegate.getReadTimeout();
  }
  
  public String getRequestMethod()
  {
    return delegate.getRequestMethod();
  }
  
  public Map<String, List<String>> getRequestProperties()
  {
    return delegate.getRequestProperties();
  }
  
  public String getRequestProperty(String paramString)
  {
    return delegate.getRequestProperty(paramString);
  }
  
  public int getResponseCode()
    throws IOException
  {
    return delegate.getResponseCode();
  }
  
  public String getResponseMessage()
    throws IOException
  {
    return delegate.getResponseMessage();
  }
  
  public SSLSocketFactory getSSLSocketFactory()
  {
    return delegate.sslSocketFactory;
  }
  
  public Certificate[] getServerCertificates()
    throws SSLPeerUnverifiedException
  {
    Certificate[] arrayOfCertificate = null;
    Object localObject = delegate.getSecureCacheResponse();
    if (localObject != null)
    {
      localObject = ((SecureCacheResponse)localObject).getServerCertificateChain();
      if (localObject != null) {
        arrayOfCertificate = (Certificate[])((List)localObject).toArray(new Certificate[((List)localObject).size()]);
      }
    }
    do
    {
      return arrayOfCertificate;
      localObject = getSslSocket();
    } while (localObject == null);
    return ((SSLSocket)localObject).getSession().getPeerCertificates();
  }
  
  public URL getURL()
  {
    return delegate.getURL();
  }
  
  public boolean getUseCaches()
  {
    return delegate.getUseCaches();
  }
  
  public void setAllowUserInteraction(boolean paramBoolean)
  {
    delegate.setAllowUserInteraction(paramBoolean);
  }
  
  public void setChunkedStreamingMode(int paramInt)
  {
    delegate.setChunkedStreamingMode(paramInt);
  }
  
  public void setConnectTimeout(int paramInt)
  {
    delegate.setConnectTimeout(paramInt);
  }
  
  public void setDefaultUseCaches(boolean paramBoolean)
  {
    delegate.setDefaultUseCaches(paramBoolean);
  }
  
  public void setDoInput(boolean paramBoolean)
  {
    delegate.setDoInput(paramBoolean);
  }
  
  public void setDoOutput(boolean paramBoolean)
  {
    delegate.setDoOutput(paramBoolean);
  }
  
  public void setFixedLengthStreamingMode(int paramInt)
  {
    delegate.setFixedLengthStreamingMode(paramInt);
  }
  
  public void setHostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    delegate.hostnameVerifier = paramHostnameVerifier;
  }
  
  public void setIfModifiedSince(long paramLong)
  {
    delegate.setIfModifiedSince(paramLong);
  }
  
  public void setInstanceFollowRedirects(boolean paramBoolean)
  {
    delegate.setInstanceFollowRedirects(paramBoolean);
  }
  
  public void setReadTimeout(int paramInt)
  {
    delegate.setReadTimeout(paramInt);
  }
  
  public void setRequestMethod(String paramString)
    throws ProtocolException
  {
    delegate.setRequestMethod(paramString);
  }
  
  public void setRequestProperty(String paramString1, String paramString2)
  {
    delegate.setRequestProperty(paramString1, paramString2);
  }
  
  public void setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    delegate.sslSocketFactory = paramSSLSocketFactory;
  }
  
  public void setUseCaches(boolean paramBoolean)
  {
    delegate.setUseCaches(paramBoolean);
  }
  
  public String toString()
  {
    return delegate.toString();
  }
  
  public boolean usingProxy()
  {
    return delegate.usingProxy();
  }
  
  private final class HttpUrlConnectionDelegate
    extends HttpURLConnectionImpl
  {
    private HttpUrlConnectionDelegate(OkHttpClient paramOkHttpClient, OkResponseCache paramOkResponseCache, Set<Route> paramSet)
    {
      super(paramOkResponseCache, paramSet, localSet);
    }
    
    protected HttpURLConnection getHttpConnectionToCache()
    {
      return HttpsURLConnectionImpl.this;
    }
    
    public SecureCacheResponse getSecureCacheResponse()
    {
      if ((httpEngine instanceof HttpsURLConnectionImpl.HttpsEngine)) {
        return (SecureCacheResponse)httpEngine.getCacheResponse();
      }
      return null;
    }
  }
  
  public static final class HttpsEngine
    extends HttpEngine
  {
    private SSLSocket sslSocket;
    
    public HttpsEngine(HttpURLConnectionImpl paramHttpURLConnectionImpl, String paramString, RawHeaders paramRawHeaders, Connection paramConnection, RetryableOutputStream paramRetryableOutputStream)
      throws IOException
    {
      super(paramString, paramRawHeaders, paramConnection, paramRetryableOutputStream);
      if (paramConnection != null) {}
      for (paramHttpURLConnectionImpl = (SSLSocket)paramConnection.getSocket();; paramHttpURLConnectionImpl = null)
      {
        sslSocket = paramHttpURLConnectionImpl;
        return;
      }
    }
    
    protected boolean acceptCacheResponseType(CacheResponse paramCacheResponse)
    {
      return paramCacheResponse instanceof SecureCacheResponse;
    }
    
    protected void connected(Connection paramConnection)
    {
      sslSocket = ((SSLSocket)paramConnection.getSocket());
    }
    
    protected TunnelRequest getTunnelConfig()
    {
      Object localObject2 = requestHeaders.getUserAgent();
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = getDefaultUserAgent();
      }
      localObject2 = policy.getURL();
      return new TunnelRequest(((URL)localObject2).getHost(), Util.getEffectivePort((URL)localObject2), (String)localObject1, requestHeaders.getProxyAuthorization());
    }
    
    protected boolean includeAuthorityInRequestLine()
    {
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpsURLConnectionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.StrictLineReader;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpURLConnectionImpl;
import com.squareup.okhttp.internal.http.HttpsURLConnectionImpl;
import com.squareup.okhttp.internal.http.OkResponseCache;
import com.squareup.okhttp.internal.http.RawHeaders;
import com.squareup.okhttp.internal.http.RequestHeaders;
import com.squareup.okhttp.internal.http.ResponseHeaders;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.SecureCacheResponse;
import java.net.URI;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class HttpResponseCache
  extends ResponseCache
{
  private static final char[] DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final int ENTRY_BODY = 1;
  private static final int ENTRY_COUNT = 2;
  private static final int ENTRY_METADATA = 0;
  private static final int VERSION = 201105;
  private final DiskLruCache cache;
  private int hitCount;
  private int networkCount;
  final OkResponseCache okResponseCache = new OkResponseCache()
  {
    public CacheResponse get(URI paramAnonymousURI, String paramAnonymousString, Map<String, List<String>> paramAnonymousMap)
      throws IOException
    {
      return HttpResponseCache.this.get(paramAnonymousURI, paramAnonymousString, paramAnonymousMap);
    }
    
    public CacheRequest put(URI paramAnonymousURI, URLConnection paramAnonymousURLConnection)
      throws IOException
    {
      return HttpResponseCache.this.put(paramAnonymousURI, paramAnonymousURLConnection);
    }
    
    public void trackConditionalCacheHit()
    {
      HttpResponseCache.this.trackConditionalCacheHit();
    }
    
    public void trackResponse(ResponseSource paramAnonymousResponseSource)
    {
      HttpResponseCache.this.trackResponse(paramAnonymousResponseSource);
    }
    
    public void update(CacheResponse paramAnonymousCacheResponse, HttpURLConnection paramAnonymousHttpURLConnection)
      throws IOException
    {
      HttpResponseCache.this.update(paramAnonymousCacheResponse, paramAnonymousHttpURLConnection);
    }
  };
  private int requestCount;
  private int writeAbortCount;
  private int writeSuccessCount;
  
  public HttpResponseCache(File paramFile, long paramLong)
    throws IOException
  {
    cache = DiskLruCache.open(paramFile, 201105, 2, paramLong);
  }
  
  private void abortQuietly(DiskLruCache.Editor paramEditor)
  {
    if (paramEditor != null) {}
    try
    {
      paramEditor.abort();
      return;
    }
    catch (IOException paramEditor) {}
  }
  
  private static String bytesToHexString(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar1 = DIGITS;
    char[] arrayOfChar2 = new char[paramArrayOfByte.length * 2];
    int k = paramArrayOfByte.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      int m = paramArrayOfByte[i];
      int n = j + 1;
      arrayOfChar2[j] = arrayOfChar1[(m >> 4 & 0xF)];
      j = n + 1;
      arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar2);
  }
  
  private HttpEngine getHttpEngine(URLConnection paramURLConnection)
  {
    if ((paramURLConnection instanceof HttpURLConnectionImpl)) {
      return ((HttpURLConnectionImpl)paramURLConnection).getHttpEngine();
    }
    if ((paramURLConnection instanceof HttpsURLConnectionImpl)) {
      return ((HttpsURLConnectionImpl)paramURLConnection).getHttpEngine();
    }
    return null;
  }
  
  private static InputStream newBodyInputStream(final DiskLruCache.Snapshot paramSnapshot)
  {
    new FilterInputStream(paramSnapshot.getInputStream(1))
    {
      public void close()
        throws IOException
      {
        paramSnapshot.close();
        super.close();
      }
    };
  }
  
  private void trackConditionalCacheHit()
  {
    try
    {
      hitCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void trackResponse(ResponseSource paramResponseSource)
  {
    for (;;)
    {
      try
      {
        requestCount += 1;
        int i = 3.$SwitchMap$com$squareup$okhttp$ResponseSource[paramResponseSource.ordinal()];
        switch (i)
        {
        default: 
          return;
        }
      }
      finally {}
      hitCount += 1;
      continue;
      networkCount += 1;
    }
  }
  
  private void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    Object localObject = getHttpEngine(paramHttpURLConnection);
    URI localURI = ((HttpEngine)localObject).getUri();
    ResponseHeaders localResponseHeaders = ((HttpEngine)localObject).getResponseHeaders();
    localObject = new Entry(localURI, ((HttpEngine)localObject).getRequestHeaders().getHeaders().getAll(localResponseHeaders.getVaryFields()), paramHttpURLConnection);
    if ((paramCacheResponse instanceof EntryCacheResponse)) {}
    for (paramHttpURLConnection = snapshot;; paramHttpURLConnection = snapshot)
    {
      paramCacheResponse = null;
      try
      {
        paramHttpURLConnection = paramHttpURLConnection.edit();
        if (paramHttpURLConnection != null)
        {
          paramCacheResponse = paramHttpURLConnection;
          ((Entry)localObject).writeTo(paramHttpURLConnection);
          paramCacheResponse = paramHttpURLConnection;
          paramHttpURLConnection.commit();
        }
        return;
      }
      catch (IOException paramHttpURLConnection)
      {
        abortQuietly(paramCacheResponse);
      }
    }
  }
  
  private String uriToKey(URI paramURI)
  {
    try
    {
      paramURI = bytesToHexString(MessageDigest.getInstance("MD5").digest(paramURI.toString().getBytes("UTF-8")));
      return paramURI;
    }
    catch (NoSuchAlgorithmException paramURI)
    {
      throw new AssertionError(paramURI);
    }
    catch (UnsupportedEncodingException paramURI)
    {
      throw new AssertionError(paramURI);
    }
  }
  
  public void delete()
    throws IOException
  {
    cache.delete();
  }
  
  public CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
  {
    Object localObject = uriToKey(paramURI);
    Entry localEntry;
    try
    {
      localObject = cache.get((String)localObject);
      if (localObject == null) {
        return null;
      }
      localEntry = new Entry(((DiskLruCache.Snapshot)localObject).getInputStream(0));
      if (!localEntry.matches(paramURI, paramString, paramMap))
      {
        ((DiskLruCache.Snapshot)localObject).close();
        return null;
      }
    }
    catch (IOException paramURI)
    {
      return null;
    }
    if (localEntry.isHttps()) {
      return new EntrySecureCacheResponse(localEntry, (DiskLruCache.Snapshot)localObject);
    }
    return new EntryCacheResponse(localEntry, (DiskLruCache.Snapshot)localObject);
  }
  
  public int getHitCount()
  {
    try
    {
      int i = hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getNetworkCount()
  {
    try
    {
      int i = networkCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getRequestCount()
  {
    try
    {
      int i = requestCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getWriteAbortCount()
  {
    try
    {
      int i = writeAbortCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getWriteSuccessCount()
  {
    try
    {
      int i = writeSuccessCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public CacheRequest put(URI paramURI, URLConnection paramURLConnection)
    throws IOException
  {
    if (!(paramURLConnection instanceof HttpURLConnection)) {}
    for (;;)
    {
      return null;
      Object localObject1 = (HttpURLConnection)paramURLConnection;
      Object localObject2 = ((HttpURLConnection)localObject1).getRequestMethod();
      paramURLConnection = uriToKey(paramURI);
      if ((((String)localObject2).equals("POST")) || (((String)localObject2).equals("PUT")) || (((String)localObject2).equals("DELETE"))) {
        try
        {
          cache.remove(paramURLConnection);
          return null;
        }
        catch (IOException paramURI)
        {
          return null;
        }
      }
      if (((String)localObject2).equals("GET"))
      {
        localObject2 = getHttpEngine((URLConnection)localObject1);
        if (localObject2 != null)
        {
          ResponseHeaders localResponseHeaders = ((HttpEngine)localObject2).getResponseHeaders();
          if (!localResponseHeaders.hasVaryAll())
          {
            localObject1 = new Entry(paramURI, ((HttpEngine)localObject2).getRequestHeaders().getHeaders().getAll(localResponseHeaders.getVaryFields()), (HttpURLConnection)localObject1);
            paramURI = null;
            try
            {
              paramURLConnection = cache.edit(paramURLConnection);
              if (paramURLConnection != null)
              {
                paramURI = paramURLConnection;
                ((Entry)localObject1).writeTo(paramURLConnection);
                paramURI = paramURLConnection;
                paramURLConnection = new CacheRequestImpl(paramURLConnection);
                return paramURLConnection;
              }
            }
            catch (IOException paramURLConnection)
            {
              abortQuietly(paramURI);
            }
          }
        }
      }
    }
    return null;
  }
  
  private final class CacheRequestImpl
    extends CacheRequest
  {
    private OutputStream body;
    private OutputStream cacheOut;
    private boolean done;
    private final DiskLruCache.Editor editor;
    
    public CacheRequestImpl(final DiskLruCache.Editor paramEditor)
      throws IOException
    {
      editor = paramEditor;
      cacheOut = paramEditor.newOutputStream(1);
      body = new FilterOutputStream(cacheOut)
      {
        public void close()
          throws IOException
        {
          synchronized (HttpResponseCache.this)
          {
            if (done) {
              return;
            }
            HttpResponseCache.CacheRequestImpl.access$602(HttpResponseCache.CacheRequestImpl.this, true);
            HttpResponseCache.access$708(HttpResponseCache.this);
            super.close();
            paramEditor.commit();
            return;
          }
        }
        
        public void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
          throws IOException
        {
          out.write(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        }
      };
    }
    
    public void abort()
    {
      synchronized (HttpResponseCache.this)
      {
        if (done) {
          return;
        }
        done = true;
        HttpResponseCache.access$808(HttpResponseCache.this);
        Util.closeQuietly(cacheOut);
        try
        {
          editor.abort();
          return;
        }
        catch (IOException localIOException) {}
      }
    }
    
    public OutputStream getBody()
      throws IOException
    {
      return body;
    }
  }
  
  private static final class Entry
  {
    private final String cipherSuite;
    private final Certificate[] localCertificates;
    private final Certificate[] peerCertificates;
    private final String requestMethod;
    private final RawHeaders responseHeaders;
    private final String uri;
    private final RawHeaders varyHeaders;
    
    public Entry(InputStream paramInputStream)
      throws IOException
    {
      try
      {
        StrictLineReader localStrictLineReader1 = new StrictLineReader(paramInputStream, Util.US_ASCII);
        uri = localStrictLineReader1.readLine();
        requestMethod = localStrictLineReader1.readLine();
        varyHeaders = new RawHeaders();
        int j = localStrictLineReader1.readInt();
        int i = 0;
        while (i < j)
        {
          varyHeaders.addLine(localStrictLineReader1.readLine());
          i += 1;
        }
        responseHeaders = new RawHeaders();
        responseHeaders.setStatusLine(localStrictLineReader1.readLine());
        j = localStrictLineReader1.readInt();
        i = 0;
        while (i < j)
        {
          responseHeaders.addLine(localStrictLineReader1.readLine());
          i += 1;
        }
        if (!isHttps()) {
          break label226;
        }
        String str = localStrictLineReader1.readLine();
        if (str.length() > 0) {
          throw new IOException("expected \"\" but was \"" + str + "\"");
        }
      }
      finally
      {
        paramInputStream.close();
      }
      cipherSuite = localStrictLineReader2.readLine();
      peerCertificates = readCertArray(localStrictLineReader2);
      for (localCertificates = readCertArray(localStrictLineReader2);; localCertificates = null)
      {
        paramInputStream.close();
        return;
        label226:
        cipherSuite = null;
        peerCertificates = null;
      }
    }
    
    public Entry(URI paramURI, RawHeaders paramRawHeaders, HttpURLConnection paramHttpURLConnection)
      throws IOException
    {
      uri = paramURI.toString();
      varyHeaders = paramRawHeaders;
      requestMethod = paramHttpURLConnection.getRequestMethod();
      responseHeaders = RawHeaders.fromMultimap(paramHttpURLConnection.getHeaderFields(), true);
      if (isHttps())
      {
        paramHttpURLConnection = (HttpsURLConnection)paramHttpURLConnection;
        cipherSuite = paramHttpURLConnection.getCipherSuite();
        paramURI = null;
      }
      try
      {
        paramRawHeaders = paramHttpURLConnection.getServerCertificates();
        paramURI = paramRawHeaders;
      }
      catch (SSLPeerUnverifiedException paramRawHeaders)
      {
        for (;;) {}
      }
      peerCertificates = paramURI;
      localCertificates = paramHttpURLConnection.getLocalCertificates();
      return;
      cipherSuite = null;
      peerCertificates = null;
      localCertificates = null;
    }
    
    private boolean isHttps()
    {
      return uri.startsWith("https://");
    }
    
    /* Error */
    private Certificate[] readCertArray(StrictLineReader paramStrictLineReader)
      throws IOException
    {
      // Byte code:
      //   0: aload_1
      //   1: invokevirtual 52	com/squareup/okhttp/internal/StrictLineReader:readInt	()I
      //   4: istore 5
      //   6: iload 5
      //   8: iconst_m1
      //   9: if_icmpne +7 -> 16
      //   12: aconst_null
      //   13: astore_2
      //   14: aload_2
      //   15: areturn
      //   16: ldc -103
      //   18: invokestatic 159	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
      //   21: astore 4
      //   23: iload 5
      //   25: anewarray 161	java/security/cert/Certificate
      //   28: astore_3
      //   29: iconst_0
      //   30: istore 5
      //   32: aload_3
      //   33: astore_2
      //   34: iload 5
      //   36: aload_3
      //   37: arraylength
      //   38: if_icmpge -24 -> 14
      //   41: aload_3
      //   42: iload 5
      //   44: aload 4
      //   46: new 163	java/io/ByteArrayInputStream
      //   49: dup
      //   50: aload_1
      //   51: invokevirtual 39	com/squareup/okhttp/internal/StrictLineReader:readLine	()Ljava/lang/String;
      //   54: ldc -91
      //   56: invokevirtual 169	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   59: invokestatic 175	com/squareup/okhttp/internal/Base64:decode	([B)[B
      //   62: invokespecial 178	java/io/ByteArrayInputStream:<init>	([B)V
      //   65: invokevirtual 182	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
      //   68: aastore
      //   69: iload 5
      //   71: iconst_1
      //   72: iadd
      //   73: istore 5
      //   75: goto -43 -> 32
      //   78: astore_1
      //   79: new 21	java/io/IOException
      //   82: dup
      //   83: aload_1
      //   84: invokevirtual 185	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
      //   87: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   90: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	91	0	this	Entry
      //   0	91	1	paramStrictLineReader	StrictLineReader
      //   13	21	2	localObject	Object
      //   28	14	3	arrayOfCertificate	Certificate[]
      //   21	24	4	localCertificateFactory	java.security.cert.CertificateFactory
      //   4	70	5	i	int
      // Exception table:
      //   from	to	target	type
      //   16	29	78	java/security/cert/CertificateException
      //   34	69	78	java/security/cert/CertificateException
    }
    
    /* Error */
    private void writeCertArray(Writer paramWriter, Certificate[] paramArrayOfCertificate)
      throws IOException
    {
      // Byte code:
      //   0: aload_2
      //   1: ifnonnull +10 -> 11
      //   4: aload_1
      //   5: ldc -65
      //   7: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
      //   10: return
      //   11: aload_1
      //   12: new 72	java/lang/StringBuilder
      //   15: dup
      //   16: invokespecial 73	java/lang/StringBuilder:<init>	()V
      //   19: aload_2
      //   20: arraylength
      //   21: invokestatic 201	java/lang/Integer:toString	(I)Ljava/lang/String;
      //   24: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   27: bipush 10
      //   29: invokevirtual 204	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   32: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   35: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
      //   38: aload_2
      //   39: arraylength
      //   40: istore 5
      //   42: iconst_0
      //   43: istore 4
      //   45: iload 4
      //   47: iload 5
      //   49: if_icmpge -39 -> 10
      //   52: aload_2
      //   53: iload 4
      //   55: aaload
      //   56: invokevirtual 208	java/security/cert/Certificate:getEncoded	()[B
      //   59: invokestatic 212	com/squareup/okhttp/internal/Base64:encode	([B)Ljava/lang/String;
      //   62: astore_3
      //   63: aload_1
      //   64: new 72	java/lang/StringBuilder
      //   67: dup
      //   68: invokespecial 73	java/lang/StringBuilder:<init>	()V
      //   71: aload_3
      //   72: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   75: bipush 10
      //   77: invokevirtual 204	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   80: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   83: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
      //   86: iload 4
      //   88: iconst_1
      //   89: iadd
      //   90: istore 4
      //   92: goto -47 -> 45
      //   95: astore_1
      //   96: new 21	java/io/IOException
      //   99: dup
      //   100: aload_1
      //   101: invokevirtual 213	java/security/cert/CertificateEncodingException:getMessage	()Ljava/lang/String;
      //   104: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   107: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	108	0	this	Entry
      //   0	108	1	paramWriter	Writer
      //   0	108	2	paramArrayOfCertificate	Certificate[]
      //   62	10	3	str	String
      //   43	48	4	i	int
      //   40	10	5	j	int
      // Exception table:
      //   from	to	target	type
      //   11	42	95	java/security/cert/CertificateEncodingException
      //   52	86	95	java/security/cert/CertificateEncodingException
    }
    
    public boolean matches(URI paramURI, String paramString, Map<String, List<String>> paramMap)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (uri.equals(paramURI.toString()))
      {
        bool1 = bool2;
        if (requestMethod.equals(paramString))
        {
          bool1 = bool2;
          if (new ResponseHeaders(paramURI, responseHeaders).varyMatches(varyHeaders.toMultimap(false), paramMap)) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public void writeTo(DiskLruCache.Editor paramEditor)
      throws IOException
    {
      paramEditor = new BufferedWriter(new OutputStreamWriter(paramEditor.newOutputStream(0), Util.UTF_8));
      paramEditor.write(uri + '\n');
      paramEditor.write(requestMethod + '\n');
      paramEditor.write(Integer.toString(varyHeaders.length()) + '\n');
      int i = 0;
      while (i < varyHeaders.length())
      {
        paramEditor.write(varyHeaders.getFieldName(i) + ": " + varyHeaders.getValue(i) + '\n');
        i += 1;
      }
      paramEditor.write(responseHeaders.getStatusLine() + '\n');
      paramEditor.write(Integer.toString(responseHeaders.length()) + '\n');
      i = 0;
      while (i < responseHeaders.length())
      {
        paramEditor.write(responseHeaders.getFieldName(i) + ": " + responseHeaders.getValue(i) + '\n');
        i += 1;
      }
      if (isHttps())
      {
        paramEditor.write(10);
        paramEditor.write(cipherSuite + '\n');
        writeCertArray(paramEditor, peerCertificates);
        writeCertArray(paramEditor, localCertificates);
      }
      paramEditor.close();
    }
  }
  
  static class EntryCacheResponse
    extends CacheResponse
  {
    private final HttpResponseCache.Entry entry;
    private final InputStream in;
    private final DiskLruCache.Snapshot snapshot;
    
    public EntryCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
    {
      entry = paramEntry;
      snapshot = paramSnapshot;
      in = HttpResponseCache.newBodyInputStream(paramSnapshot);
    }
    
    public InputStream getBody()
    {
      return in;
    }
    
    public Map<String, List<String>> getHeaders()
    {
      return entry.responseHeaders.toMultimap(true);
    }
  }
  
  static class EntrySecureCacheResponse
    extends SecureCacheResponse
  {
    private final HttpResponseCache.Entry entry;
    private final InputStream in;
    private final DiskLruCache.Snapshot snapshot;
    
    public EntrySecureCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
    {
      entry = paramEntry;
      snapshot = paramSnapshot;
      in = HttpResponseCache.newBodyInputStream(paramSnapshot);
    }
    
    public InputStream getBody()
    {
      return in;
    }
    
    public String getCipherSuite()
    {
      return entry.cipherSuite;
    }
    
    public Map<String, List<String>> getHeaders()
    {
      return entry.responseHeaders.toMultimap(true);
    }
    
    public List<Certificate> getLocalCertificateChain()
    {
      if ((entry.localCertificates == null) || (entry.localCertificates.length == 0)) {
        return null;
      }
      return Arrays.asList((Object[])entry.localCertificates.clone());
    }
    
    public Principal getLocalPrincipal()
    {
      if ((entry.localCertificates == null) || (entry.localCertificates.length == 0)) {
        return null;
      }
      return ((X509Certificate)entry.localCertificates[0]).getSubjectX500Principal();
    }
    
    public Principal getPeerPrincipal()
      throws SSLPeerUnverifiedException
    {
      if ((entry.peerCertificates == null) || (entry.peerCertificates.length == 0)) {
        throw new SSLPeerUnverifiedException(null);
      }
      return ((X509Certificate)entry.peerCertificates[0]).getSubjectX500Principal();
    }
    
    public List<Certificate> getServerCertificateChain()
      throws SSLPeerUnverifiedException
    {
      if ((entry.peerCertificates == null) || (entry.peerCertificates.length == 0)) {
        throw new SSLPeerUnverifiedException(null);
      }
      return Arrays.asList((Object[])entry.peerCertificates.clone());
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
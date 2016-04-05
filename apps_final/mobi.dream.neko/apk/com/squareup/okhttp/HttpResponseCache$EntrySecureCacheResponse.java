package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.http.RawHeaders;
import java.io.InputStream;
import java.net.SecureCacheResponse;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

class HttpResponseCache$EntrySecureCacheResponse
  extends SecureCacheResponse
{
  private final HttpResponseCache.Entry entry;
  private final InputStream in;
  private final DiskLruCache.Snapshot snapshot;
  
  public HttpResponseCache$EntrySecureCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
  {
    entry = paramEntry;
    snapshot = paramSnapshot;
    in = HttpResponseCache.access$900(paramSnapshot);
  }
  
  public InputStream getBody()
  {
    return in;
  }
  
  public String getCipherSuite()
  {
    return HttpResponseCache.Entry.access$1100(entry);
  }
  
  public Map<String, List<String>> getHeaders()
  {
    return HttpResponseCache.Entry.access$1000(entry).toMultimap(true);
  }
  
  public List<Certificate> getLocalCertificateChain()
  {
    if ((HttpResponseCache.Entry.access$1300(entry) == null) || (HttpResponseCache.Entry.access$1300(entry).length == 0)) {
      return null;
    }
    return Arrays.asList((Object[])HttpResponseCache.Entry.access$1300(entry).clone());
  }
  
  public Principal getLocalPrincipal()
  {
    if ((HttpResponseCache.Entry.access$1300(entry) == null) || (HttpResponseCache.Entry.access$1300(entry).length == 0)) {
      return null;
    }
    return ((X509Certificate)HttpResponseCache.Entry.access$1300(entry)[0]).getSubjectX500Principal();
  }
  
  public Principal getPeerPrincipal()
    throws SSLPeerUnverifiedException
  {
    if ((HttpResponseCache.Entry.access$1200(entry) == null) || (HttpResponseCache.Entry.access$1200(entry).length == 0)) {
      throw new SSLPeerUnverifiedException(null);
    }
    return ((X509Certificate)HttpResponseCache.Entry.access$1200(entry)[0]).getSubjectX500Principal();
  }
  
  public List<Certificate> getServerCertificateChain()
    throws SSLPeerUnverifiedException
  {
    if ((HttpResponseCache.Entry.access$1200(entry) == null) || (HttpResponseCache.Entry.access$1200(entry).length == 0)) {
      throw new SSLPeerUnverifiedException(null);
    }
    return Arrays.asList((Object[])HttpResponseCache.Entry.access$1200(entry).clone());
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache.EntrySecureCacheResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
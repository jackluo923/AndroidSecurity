package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.ResponseSource;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.URI;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;

public final class ResponseHeaders
{
  private static final String RECEIVED_MILLIS = "X-Android-Received-Millis";
  static final String RESPONSE_SOURCE = "X-Android-Response-Source";
  private static final String SENT_MILLIS = "X-Android-Sent-Millis";
  private int ageSeconds = -1;
  private String connection;
  private String contentEncoding;
  private int contentLength = -1;
  private String etag;
  private Date expires;
  private final RawHeaders headers;
  private boolean isPublic;
  private Date lastModified;
  private int maxAgeSeconds = -1;
  private boolean mustRevalidate;
  private boolean noCache;
  private boolean noStore;
  private long receivedResponseMillis;
  private int sMaxAgeSeconds = -1;
  private long sentRequestMillis;
  private Date servedDate;
  private String transferEncoding;
  private final URI uri;
  private Set<String> varyFields = Collections.emptySet();
  
  public ResponseHeaders(URI paramURI, RawHeaders paramRawHeaders)
  {
    uri = paramURI;
    headers = paramRawHeaders;
    paramURI = new HeaderParser.CacheControlHandler()
    {
      public void handle(String paramAnonymousString1, String paramAnonymousString2)
      {
        if ("no-cache".equalsIgnoreCase(paramAnonymousString1)) {
          ResponseHeaders.access$002(ResponseHeaders.this, true);
        }
        do
        {
          return;
          if ("no-store".equalsIgnoreCase(paramAnonymousString1))
          {
            ResponseHeaders.access$102(ResponseHeaders.this, true);
            return;
          }
          if ("max-age".equalsIgnoreCase(paramAnonymousString1))
          {
            ResponseHeaders.access$202(ResponseHeaders.this, HeaderParser.parseSeconds(paramAnonymousString2));
            return;
          }
          if ("s-maxage".equalsIgnoreCase(paramAnonymousString1))
          {
            ResponseHeaders.access$302(ResponseHeaders.this, HeaderParser.parseSeconds(paramAnonymousString2));
            return;
          }
          if ("public".equalsIgnoreCase(paramAnonymousString1))
          {
            ResponseHeaders.access$402(ResponseHeaders.this, true);
            return;
          }
        } while (!"must-revalidate".equalsIgnoreCase(paramAnonymousString1));
        ResponseHeaders.access$502(ResponseHeaders.this, true);
      }
    };
    int i = 0;
    if (i < paramRawHeaders.length())
    {
      Object localObject = paramRawHeaders.getFieldName(i);
      String str = paramRawHeaders.getValue(i);
      if ("Cache-Control".equalsIgnoreCase((String)localObject)) {
        HeaderParser.parseCacheControl(str, paramURI);
      }
      for (;;)
      {
        i += 1;
        break;
        if ("Date".equalsIgnoreCase((String)localObject))
        {
          servedDate = HttpDate.parse(str);
        }
        else if ("Expires".equalsIgnoreCase((String)localObject))
        {
          expires = HttpDate.parse(str);
        }
        else if ("Last-Modified".equalsIgnoreCase((String)localObject))
        {
          lastModified = HttpDate.parse(str);
        }
        else if ("ETag".equalsIgnoreCase((String)localObject))
        {
          etag = str;
        }
        else if ("Pragma".equalsIgnoreCase((String)localObject))
        {
          if ("no-cache".equalsIgnoreCase(str)) {
            noCache = true;
          }
        }
        else if ("Age".equalsIgnoreCase((String)localObject))
        {
          ageSeconds = HeaderParser.parseSeconds(str);
        }
        else if ("Vary".equalsIgnoreCase((String)localObject))
        {
          if (varyFields.isEmpty()) {
            varyFields = new TreeSet(String.CASE_INSENSITIVE_ORDER);
          }
          localObject = str.split(",");
          int k = localObject.length;
          int j = 0;
          while (j < k)
          {
            str = localObject[j];
            varyFields.add(str.trim());
            j += 1;
          }
        }
        else if ("Content-Encoding".equalsIgnoreCase((String)localObject))
        {
          contentEncoding = str;
        }
        else if ("Transfer-Encoding".equalsIgnoreCase((String)localObject))
        {
          transferEncoding = str;
        }
        else if ("Content-Length".equalsIgnoreCase((String)localObject))
        {
          try
          {
            contentLength = Integer.parseInt(str);
          }
          catch (NumberFormatException localNumberFormatException) {}
        }
        else if ("Connection".equalsIgnoreCase(localNumberFormatException))
        {
          connection = str;
        }
        else if ("X-Android-Sent-Millis".equalsIgnoreCase(localNumberFormatException))
        {
          sentRequestMillis = Long.parseLong(str);
        }
        else if ("X-Android-Received-Millis".equalsIgnoreCase(localNumberFormatException))
        {
          receivedResponseMillis = Long.parseLong(str);
        }
      }
    }
  }
  
  private long computeAge(long paramLong)
  {
    long l = 0L;
    if (servedDate != null) {
      l = Math.max(0L, receivedResponseMillis - servedDate.getTime());
    }
    if (ageSeconds != -1) {
      l = Math.max(l, TimeUnit.SECONDS.toMillis(ageSeconds));
    }
    for (;;)
    {
      return l + (receivedResponseMillis - sentRequestMillis) + (paramLong - receivedResponseMillis);
    }
  }
  
  private long computeFreshnessLifetime()
  {
    long l2 = 0L;
    if (maxAgeSeconds != -1) {
      l1 = TimeUnit.SECONDS.toMillis(maxAgeSeconds);
    }
    label72:
    do
    {
      do
      {
        return l1;
        if (expires != null)
        {
          if (servedDate != null)
          {
            l1 = servedDate.getTime();
            l1 = expires.getTime() - l1;
            if (l1 <= 0L) {
              break label72;
            }
          }
          for (;;)
          {
            return l1;
            l1 = receivedResponseMillis;
            break;
            l1 = 0L;
          }
        }
        l1 = l2;
      } while (lastModified == null);
      l1 = l2;
    } while (uri.getRawQuery() != null);
    if (servedDate != null) {}
    for (long l1 = servedDate.getTime();; l1 = sentRequestMillis)
    {
      long l3 = l1 - lastModified.getTime();
      l1 = l2;
      if (l3 <= 0L) {
        break;
      }
      return l3 / 10L;
    }
  }
  
  private static boolean isEndToEnd(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  private boolean isFreshnessLifetimeHeuristic()
  {
    return (maxAgeSeconds == -1) && (expires == null);
  }
  
  public ResponseSource chooseResponseSource(long paramLong, RequestHeaders paramRequestHeaders)
  {
    if (!isCacheable(paramRequestHeaders)) {
      return ResponseSource.NETWORK;
    }
    if ((paramRequestHeaders.isNoCache()) || (paramRequestHeaders.hasConditions())) {
      return ResponseSource.NETWORK;
    }
    long l4 = computeAge(paramLong);
    long l1 = computeFreshnessLifetime();
    paramLong = l1;
    if (paramRequestHeaders.getMaxAgeSeconds() != -1) {
      paramLong = Math.min(l1, TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMaxAgeSeconds()));
    }
    l1 = 0L;
    if (paramRequestHeaders.getMinFreshSeconds() != -1) {
      l1 = TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMinFreshSeconds());
    }
    long l3 = 0L;
    long l2 = l3;
    if (!mustRevalidate)
    {
      l2 = l3;
      if (paramRequestHeaders.getMaxStaleSeconds() != -1) {
        l2 = TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMaxStaleSeconds());
      }
    }
    if ((!noCache) && (l4 + l1 < paramLong + l2))
    {
      if (l4 + l1 >= paramLong) {
        headers.add("Warning", "110 HttpURLConnection \"Response is stale\"");
      }
      if ((l4 > 86400000L) && (isFreshnessLifetimeHeuristic())) {
        headers.add("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
      }
      return ResponseSource.CACHE;
    }
    if (lastModified != null) {
      paramRequestHeaders.setIfModifiedSince(lastModified);
    }
    for (;;)
    {
      if (etag != null) {
        paramRequestHeaders.setIfNoneMatch(etag);
      }
      if (!paramRequestHeaders.hasConditions()) {
        break;
      }
      return ResponseSource.CONDITIONAL_CACHE;
      if (servedDate != null) {
        paramRequestHeaders.setIfModifiedSince(servedDate);
      }
    }
    return ResponseSource.NETWORK;
  }
  
  public ResponseHeaders combine(ResponseHeaders paramResponseHeaders)
    throws IOException
  {
    RawHeaders localRawHeaders = new RawHeaders();
    localRawHeaders.setStatusLine(headers.getStatusLine());
    int i = 0;
    String str1;
    if (i < headers.length())
    {
      str1 = headers.getFieldName(i);
      String str2 = headers.getValue(i);
      if (("Warning".equals(str1)) && (str2.startsWith("1"))) {}
      for (;;)
      {
        i += 1;
        break;
        if ((!isEndToEnd(str1)) || (headers.get(str1) == null)) {
          localRawHeaders.add(str1, str2);
        }
      }
    }
    i = 0;
    while (i < headers.length())
    {
      str1 = headers.getFieldName(i);
      if (isEndToEnd(str1)) {
        localRawHeaders.add(str1, headers.getValue(i));
      }
      i += 1;
    }
    return new ResponseHeaders(uri, localRawHeaders);
  }
  
  public String getConnection()
  {
    return connection;
  }
  
  public String getContentEncoding()
  {
    return contentEncoding;
  }
  
  public int getContentLength()
  {
    return contentLength;
  }
  
  public String getEtag()
  {
    return etag;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public RawHeaders getHeaders()
  {
    return headers;
  }
  
  public Date getLastModified()
  {
    return lastModified;
  }
  
  public int getMaxAgeSeconds()
  {
    return maxAgeSeconds;
  }
  
  public int getSMaxAgeSeconds()
  {
    return sMaxAgeSeconds;
  }
  
  public Date getServedDate()
  {
    return servedDate;
  }
  
  public URI getUri()
  {
    return uri;
  }
  
  public Set<String> getVaryFields()
  {
    return varyFields;
  }
  
  public boolean hasConnectionClose()
  {
    return "close".equalsIgnoreCase(connection);
  }
  
  public boolean hasVaryAll()
  {
    return varyFields.contains("*");
  }
  
  public boolean isCacheable(RequestHeaders paramRequestHeaders)
  {
    int i = headers.getResponseCode();
    if ((i != 200) && (i != 203) && (i != 300) && (i != 301) && (i != 410)) {}
    while (((paramRequestHeaders.hasAuthorization()) && (!isPublic) && (!mustRevalidate) && (sMaxAgeSeconds == -1)) || (noStore)) {
      return false;
    }
    return true;
  }
  
  public boolean isChunked()
  {
    return "chunked".equalsIgnoreCase(transferEncoding);
  }
  
  public boolean isContentEncodingGzip()
  {
    return "gzip".equalsIgnoreCase(contentEncoding);
  }
  
  public boolean isMustRevalidate()
  {
    return mustRevalidate;
  }
  
  public boolean isNoCache()
  {
    return noCache;
  }
  
  public boolean isNoStore()
  {
    return noStore;
  }
  
  public boolean isPublic()
  {
    return isPublic;
  }
  
  public void setLocalTimestamps(long paramLong1, long paramLong2)
  {
    sentRequestMillis = paramLong1;
    headers.add("X-Android-Sent-Millis", Long.toString(paramLong1));
    receivedResponseMillis = paramLong2;
    headers.add("X-Android-Received-Millis", Long.toString(paramLong2));
  }
  
  public void setResponseSource(ResponseSource paramResponseSource)
  {
    headers.set("X-Android-Response-Source", paramResponseSource.toString() + " " + headers.getResponseCode());
  }
  
  public void stripContentEncoding()
  {
    contentEncoding = null;
    headers.removeAll("Content-Encoding");
  }
  
  public void stripContentLength()
  {
    contentLength = -1;
    headers.removeAll("Content-Length");
  }
  
  public boolean validate(ResponseHeaders paramResponseHeaders)
  {
    if (headers.getResponseCode() == 304) {}
    while ((lastModified != null) && (lastModified != null) && (lastModified.getTime() < lastModified.getTime())) {
      return true;
    }
    return false;
  }
  
  public boolean varyMatches(Map<String, List<String>> paramMap1, Map<String, List<String>> paramMap2)
  {
    Iterator localIterator = varyFields.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!Util.equal(paramMap1.get(str), paramMap2.get(str))) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.ResponseHeaders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
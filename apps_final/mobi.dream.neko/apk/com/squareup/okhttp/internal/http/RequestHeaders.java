package com.squareup.okhttp.internal.http;

import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class RequestHeaders
{
  private String acceptEncoding;
  private String connection;
  private int contentLength = -1;
  private String contentType;
  private boolean hasAuthorization;
  private final RawHeaders headers;
  private String host;
  private String ifModifiedSince;
  private String ifNoneMatch;
  private int maxAgeSeconds = -1;
  private int maxStaleSeconds = -1;
  private int minFreshSeconds = -1;
  private boolean noCache;
  private boolean onlyIfCached;
  private String proxyAuthorization;
  private String transferEncoding;
  private final URI uri;
  private String userAgent;
  
  public RequestHeaders(URI paramURI, RawHeaders paramRawHeaders)
  {
    uri = paramURI;
    headers = paramRawHeaders;
    paramURI = new HeaderParser.CacheControlHandler()
    {
      public void handle(String paramAnonymousString1, String paramAnonymousString2)
      {
        if ("no-cache".equalsIgnoreCase(paramAnonymousString1)) {
          RequestHeaders.access$002(RequestHeaders.this, true);
        }
        do
        {
          return;
          if ("max-age".equalsIgnoreCase(paramAnonymousString1))
          {
            RequestHeaders.access$102(RequestHeaders.this, HeaderParser.parseSeconds(paramAnonymousString2));
            return;
          }
          if ("max-stale".equalsIgnoreCase(paramAnonymousString1))
          {
            RequestHeaders.access$202(RequestHeaders.this, HeaderParser.parseSeconds(paramAnonymousString2));
            return;
          }
          if ("min-fresh".equalsIgnoreCase(paramAnonymousString1))
          {
            RequestHeaders.access$302(RequestHeaders.this, HeaderParser.parseSeconds(paramAnonymousString2));
            return;
          }
        } while (!"only-if-cached".equalsIgnoreCase(paramAnonymousString1));
        RequestHeaders.access$402(RequestHeaders.this, true);
      }
    };
    int i = 0;
    if (i < paramRawHeaders.length())
    {
      String str1 = paramRawHeaders.getFieldName(i);
      String str2 = paramRawHeaders.getValue(i);
      if ("Cache-Control".equalsIgnoreCase(str1)) {
        HeaderParser.parseCacheControl(str2, paramURI);
      }
      for (;;)
      {
        i += 1;
        break;
        if ("Pragma".equalsIgnoreCase(str1))
        {
          if ("no-cache".equalsIgnoreCase(str2)) {
            noCache = true;
          }
        }
        else if ("If-None-Match".equalsIgnoreCase(str1)) {
          ifNoneMatch = str2;
        } else if ("If-Modified-Since".equalsIgnoreCase(str1)) {
          ifModifiedSince = str2;
        } else if ("Authorization".equalsIgnoreCase(str1)) {
          hasAuthorization = true;
        } else if ("Content-Length".equalsIgnoreCase(str1)) {
          try
          {
            contentLength = Integer.parseInt(str2);
          }
          catch (NumberFormatException localNumberFormatException) {}
        } else if ("Transfer-Encoding".equalsIgnoreCase(localNumberFormatException)) {
          transferEncoding = str2;
        } else if ("User-Agent".equalsIgnoreCase(localNumberFormatException)) {
          userAgent = str2;
        } else if ("Host".equalsIgnoreCase(localNumberFormatException)) {
          host = str2;
        } else if ("Connection".equalsIgnoreCase(localNumberFormatException)) {
          connection = str2;
        } else if ("Accept-Encoding".equalsIgnoreCase(localNumberFormatException)) {
          acceptEncoding = str2;
        } else if ("Content-Type".equalsIgnoreCase(localNumberFormatException)) {
          contentType = str2;
        } else if ("Proxy-Authorization".equalsIgnoreCase(localNumberFormatException)) {
          proxyAuthorization = str2;
        }
      }
    }
  }
  
  public void addCookies(Map<String, List<String>> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      if (("Cookie".equalsIgnoreCase(str)) || ("Cookie2".equalsIgnoreCase(str))) {
        headers.addAll(str, (List)localEntry.getValue());
      }
    }
  }
  
  public String getAcceptEncoding()
  {
    return acceptEncoding;
  }
  
  public String getConnection()
  {
    return connection;
  }
  
  public int getContentLength()
  {
    return contentLength;
  }
  
  public String getContentType()
  {
    return contentType;
  }
  
  public RawHeaders getHeaders()
  {
    return headers;
  }
  
  public String getHost()
  {
    return host;
  }
  
  public String getIfModifiedSince()
  {
    return ifModifiedSince;
  }
  
  public String getIfNoneMatch()
  {
    return ifNoneMatch;
  }
  
  public int getMaxAgeSeconds()
  {
    return maxAgeSeconds;
  }
  
  public int getMaxStaleSeconds()
  {
    return maxStaleSeconds;
  }
  
  public int getMinFreshSeconds()
  {
    return minFreshSeconds;
  }
  
  public String getProxyAuthorization()
  {
    return proxyAuthorization;
  }
  
  public String getTransferEncoding()
  {
    return transferEncoding;
  }
  
  public URI getUri()
  {
    return uri;
  }
  
  public String getUserAgent()
  {
    return userAgent;
  }
  
  public boolean hasAuthorization()
  {
    return hasAuthorization;
  }
  
  public boolean hasConditions()
  {
    return (ifModifiedSince != null) || (ifNoneMatch != null);
  }
  
  public boolean hasConnectionClose()
  {
    return "close".equalsIgnoreCase(connection);
  }
  
  public boolean isChunked()
  {
    return "chunked".equalsIgnoreCase(transferEncoding);
  }
  
  public boolean isNoCache()
  {
    return noCache;
  }
  
  public boolean isOnlyIfCached()
  {
    return onlyIfCached;
  }
  
  public void setAcceptEncoding(String paramString)
  {
    if (acceptEncoding != null) {
      headers.removeAll("Accept-Encoding");
    }
    headers.add("Accept-Encoding", paramString);
    acceptEncoding = paramString;
  }
  
  public void setChunked()
  {
    if (transferEncoding != null) {
      headers.removeAll("Transfer-Encoding");
    }
    headers.add("Transfer-Encoding", "chunked");
    transferEncoding = "chunked";
  }
  
  public void setConnection(String paramString)
  {
    if (connection != null) {
      headers.removeAll("Connection");
    }
    headers.add("Connection", paramString);
    connection = paramString;
  }
  
  public void setContentLength(int paramInt)
  {
    if (contentLength != -1) {
      headers.removeAll("Content-Length");
    }
    headers.add("Content-Length", Integer.toString(paramInt));
    contentLength = paramInt;
  }
  
  public void setContentType(String paramString)
  {
    if (contentType != null) {
      headers.removeAll("Content-Type");
    }
    headers.add("Content-Type", paramString);
    contentType = paramString;
  }
  
  public void setHost(String paramString)
  {
    if (host != null) {
      headers.removeAll("Host");
    }
    headers.add("Host", paramString);
    host = paramString;
  }
  
  public void setIfModifiedSince(Date paramDate)
  {
    if (ifModifiedSince != null) {
      headers.removeAll("If-Modified-Since");
    }
    paramDate = HttpDate.format(paramDate);
    headers.add("If-Modified-Since", paramDate);
    ifModifiedSince = paramDate;
  }
  
  public void setIfNoneMatch(String paramString)
  {
    if (ifNoneMatch != null) {
      headers.removeAll("If-None-Match");
    }
    headers.add("If-None-Match", paramString);
    ifNoneMatch = paramString;
  }
  
  public void setUserAgent(String paramString)
  {
    if (userAgent != null) {
      headers.removeAll("User-Agent");
    }
    headers.add("User-Agent", paramString);
    userAgent = paramString;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.RequestHeaders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
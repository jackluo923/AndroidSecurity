package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.http.RawHeaders;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.List;
import java.util.Map;

class HttpResponseCache$EntryCacheResponse
  extends CacheResponse
{
  private final HttpResponseCache.Entry entry;
  private final InputStream in;
  private final DiskLruCache.Snapshot snapshot;
  
  public HttpResponseCache$EntryCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
  {
    entry = paramEntry;
    snapshot = paramSnapshot;
    in = HttpResponseCache.access$900(paramSnapshot);
  }
  
  public InputStream getBody()
  {
    return in;
  }
  
  public Map<String, List<String>> getHeaders()
  {
    return HttpResponseCache.Entry.access$1000(entry).toMultimap(true);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache.EntryCacheResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
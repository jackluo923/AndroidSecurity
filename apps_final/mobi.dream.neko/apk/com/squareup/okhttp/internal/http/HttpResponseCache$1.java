package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

final class HttpResponseCache$1
  extends FilterInputStream
{
  HttpResponseCache$1(InputStream paramInputStream, DiskLruCache.Snapshot paramSnapshot)
  {
    super(paramInputStream);
  }
  
  public void close()
    throws IOException
  {
    val$snapshot.close();
    super.close();
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpResponseCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
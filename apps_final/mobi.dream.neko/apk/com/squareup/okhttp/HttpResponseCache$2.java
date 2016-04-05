package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

final class HttpResponseCache$2
  extends FilterInputStream
{
  HttpResponseCache$2(InputStream paramInputStream, DiskLruCache.Snapshot paramSnapshot)
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
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
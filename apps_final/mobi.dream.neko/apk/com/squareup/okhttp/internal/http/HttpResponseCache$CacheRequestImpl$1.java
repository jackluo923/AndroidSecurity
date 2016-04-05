package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.DiskLruCache.Editor;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class HttpResponseCache$CacheRequestImpl$1
  extends FilterOutputStream
{
  HttpResponseCache$CacheRequestImpl$1(HttpResponseCache.CacheRequestImpl paramCacheRequestImpl, OutputStream paramOutputStream, HttpResponseCache paramHttpResponseCache, DiskLruCache.Editor paramEditor)
  {
    super(paramOutputStream);
  }
  
  public void close()
    throws IOException
  {
    synchronized (this$1.this$0)
    {
      if (HttpResponseCache.CacheRequestImpl.access$300(this$1)) {
        return;
      }
      HttpResponseCache.CacheRequestImpl.access$302(this$1, true);
      HttpResponseCache.access$408(this$1.this$0);
      super.close();
      val$editor.commit();
      return;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpResponseCache.CacheRequestImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public final class DiskLruCache$Snapshot
  implements Closeable
{
  private final InputStream[] ins;
  private final String key;
  private final long[] lengths;
  private final long sequenceNumber;
  
  private DiskLruCache$Snapshot(DiskLruCache paramDiskLruCache, String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    key = paramString;
    sequenceNumber = paramLong;
    ins = paramArrayOfInputStream;
    lengths = paramArrayOfLong;
  }
  
  public void close()
  {
    InputStream[] arrayOfInputStream = ins;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      Util.closeQuietly(arrayOfInputStream[i]);
      i += 1;
    }
  }
  
  public DiskLruCache.Editor edit()
    throws IOException
  {
    return DiskLruCache.access$1600(this$0, key, sequenceNumber);
  }
  
  public InputStream getInputStream(int paramInt)
  {
    return ins[paramInt];
  }
  
  public long getLength(int paramInt)
  {
    return lengths[paramInt];
  }
  
  public String getString(int paramInt)
    throws IOException
  {
    return DiskLruCache.access$1700(getInputStream(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.Snapshot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
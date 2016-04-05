package com.squareup.okhttp.internal;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class DiskLruCache$Editor$FaultHidingOutputStream
  extends FilterOutputStream
{
  private DiskLruCache$Editor$FaultHidingOutputStream(DiskLruCache.Editor paramEditor, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    try
    {
      out.close();
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.access$2302(this$1, true);
    }
  }
  
  public void flush()
  {
    try
    {
      out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.access$2302(this$1, true);
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.access$2302(this$1, true);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      DiskLruCache.Editor.access$2302(this$1, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.Editor.FaultHidingOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
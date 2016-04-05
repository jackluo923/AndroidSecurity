package com.squareup.okhttp.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

public final class DiskLruCache$Editor
{
  private boolean committed;
  private final DiskLruCache.Entry entry;
  private boolean hasErrors;
  private final boolean[] written;
  
  private DiskLruCache$Editor(DiskLruCache paramDiskLruCache, DiskLruCache.Entry paramEntry)
  {
    entry = paramEntry;
    if (DiskLruCache.Entry.access$600(paramEntry)) {}
    for (paramDiskLruCache = null;; paramDiskLruCache = new boolean[DiskLruCache.access$1800(paramDiskLruCache)])
    {
      written = paramDiskLruCache;
      return;
    }
  }
  
  public void abort()
    throws IOException
  {
    DiskLruCache.access$2200(this$0, this, false);
  }
  
  public void abortUnlessCommitted()
  {
    if (!committed) {}
    try
    {
      abort();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void commit()
    throws IOException
  {
    if (hasErrors)
    {
      DiskLruCache.access$2200(this$0, this, false);
      this$0.remove(DiskLruCache.Entry.access$1100(entry));
    }
    for (;;)
    {
      committed = true;
      return;
      DiskLruCache.access$2200(this$0, this, true);
    }
  }
  
  public String getString(int paramInt)
    throws IOException
  {
    InputStream localInputStream = newInputStream(paramInt);
    if (localInputStream != null) {
      return DiskLruCache.access$1700(localInputStream);
    }
    return null;
  }
  
  public InputStream newInputStream(int paramInt)
    throws IOException
  {
    synchronized (this$0)
    {
      if (DiskLruCache.Entry.access$700(entry) != this) {
        throw new IllegalStateException();
      }
    }
    if (!DiskLruCache.Entry.access$600(entry)) {
      return null;
    }
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(entry.getCleanFile(paramInt));
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  public OutputStream newOutputStream(int paramInt)
    throws IOException
  {
    synchronized (this$0)
    {
      if (DiskLruCache.Entry.access$700(entry) != this) {
        throw new IllegalStateException();
      }
    }
    if (!DiskLruCache.Entry.access$600(entry)) {
      written[paramInt] = true;
    }
    File localFile = entry.getDirtyFile(paramInt);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new FaultHidingOutputStream((OutputStream)localObject2, null);
      return (OutputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;)
      {
        DiskLruCache.access$1900(this$0).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = DiskLruCache.access$2000();
          return localOutputStream;
        }
      }
    }
  }
  
  public void set(int paramInt, String paramString)
    throws IOException
  {
    Object localObject3 = null;
    try
    {
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(newOutputStream(paramInt), Util.UTF_8);
      Util.closeQuietly(paramString);
    }
    finally
    {
      try
      {
        localOutputStreamWriter.write(paramString);
        Util.closeQuietly(localOutputStreamWriter);
        return;
      }
      finally
      {
        paramString = (String)localObject1;
        Object localObject2 = localObject4;
      }
      localObject1 = finally;
      paramString = (String)localObject3;
    }
    throw ((Throwable)localObject1);
  }
  
  private class FaultHidingOutputStream
    extends FilterOutputStream
  {
    private FaultHidingOutputStream(OutputStream paramOutputStream)
    {
      super();
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
        DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
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
        DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
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
        DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
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
        DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.Editor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
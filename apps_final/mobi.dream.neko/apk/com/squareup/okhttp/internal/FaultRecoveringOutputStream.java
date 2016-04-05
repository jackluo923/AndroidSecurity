package com.squareup.okhttp.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class FaultRecoveringOutputStream
  extends AbstractOutputStream
{
  private final int maxReplayBufferLength;
  private OutputStream out;
  private ByteArrayOutputStream replayBuffer;
  
  public FaultRecoveringOutputStream(int paramInt, OutputStream paramOutputStream)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException();
    }
    maxReplayBufferLength = paramInt;
    replayBuffer = new ByteArrayOutputStream(paramInt);
    out = paramOutputStream;
  }
  
  /* Error */
  private boolean recover(IOException paramIOException)
  {
    // Byte code:
    //   0: aload_1
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 27	com/squareup/okhttp/internal/FaultRecoveringOutputStream:replayBuffer	Ljava/io/ByteArrayOutputStream;
    //   6: ifnonnull +10 -> 16
    //   9: iconst_0
    //   10: ireturn
    //   11: astore_2
    //   12: aload_1
    //   13: invokestatic 40	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: aload_2
    //   20: invokevirtual 44	com/squareup/okhttp/internal/FaultRecoveringOutputStream:replacementStream	(Ljava/io/IOException;)Ljava/io/OutputStream;
    //   23: astore_2
    //   24: aload_2
    //   25: ifnull -16 -> 9
    //   28: aload_2
    //   29: astore_1
    //   30: aload_0
    //   31: aload_2
    //   32: invokevirtual 48	com/squareup/okhttp/internal/FaultRecoveringOutputStream:replaceStream	(Ljava/io/OutputStream;)V
    //   35: iconst_1
    //   36: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	FaultRecoveringOutputStream
    //   0	37	1	paramIOException	IOException
    //   1	1	2	localIOException1	IOException
    //   11	9	2	localIOException2	IOException
    //   23	9	2	localOutputStream	OutputStream
    // Exception table:
    //   from	to	target	type
    //   18	24	11	java/io/IOException
    //   30	35	11	java/io/IOException
  }
  
  public final void close()
    throws IOException
  {
    if (closed) {
      return;
    }
    do
    {
      try
      {
        out.close();
        closed = true;
        return;
      }
      catch (IOException localIOException) {}
    } while (recover(localIOException));
    throw localIOException;
  }
  
  public final void flush()
    throws IOException
  {
    if (closed) {
      return;
    }
    do
    {
      try
      {
        out.flush();
        return;
      }
      catch (IOException localIOException) {}
    } while (recover(localIOException));
    throw localIOException;
  }
  
  public boolean isRecoverable()
  {
    return replayBuffer != null;
  }
  
  public final void replaceStream(OutputStream paramOutputStream)
    throws IOException
  {
    if (!isRecoverable()) {
      throw new IllegalStateException();
    }
    if (out == paramOutputStream) {
      return;
    }
    replayBuffer.writeTo(paramOutputStream);
    Util.closeQuietly(out);
    out = paramOutputStream;
  }
  
  protected abstract OutputStream replacementStream(IOException paramIOException)
    throws IOException;
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (closed) {
      throw new IOException("stream closed");
    }
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    do
    {
      try
      {
        out.write(paramArrayOfByte, paramInt1, paramInt2);
        if (replayBuffer == null) {
          break;
        }
        if (replayBuffer.size() + paramInt2 > maxReplayBufferLength)
        {
          replayBuffer = null;
          return;
        }
        replayBuffer.write(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
      catch (IOException localIOException) {}
    } while (recover(localIOException));
    throw localIOException;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.FaultRecoveringOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
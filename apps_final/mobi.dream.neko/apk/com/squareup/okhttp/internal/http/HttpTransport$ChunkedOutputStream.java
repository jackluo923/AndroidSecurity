package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.AbstractOutputStream;
import com.squareup.okhttp.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class HttpTransport$ChunkedOutputStream
  extends AbstractOutputStream
{
  private static final byte[] CRLF = { 13, 10 };
  private static final byte[] FINAL_CHUNK = { 48, 13, 10, 13, 10 };
  private static final byte[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private final ByteArrayOutputStream bufferedChunk;
  private final byte[] hex = { 0, 0, 0, 0, 0, 0, 0, 0, 13, 10 };
  private final int maxChunkLength;
  private final OutputStream socketOut;
  
  private HttpTransport$ChunkedOutputStream(OutputStream paramOutputStream, int paramInt)
  {
    socketOut = paramOutputStream;
    maxChunkLength = Math.max(1, dataLength(paramInt));
    bufferedChunk = new ByteArrayOutputStream(paramInt);
  }
  
  private int dataLength(int paramInt)
  {
    int j = 4;
    int i = paramInt - 4;
    while (i > 0)
    {
      j += 1;
      i >>= 4;
    }
    return paramInt - j;
  }
  
  private void writeBufferedChunkToSocket()
    throws IOException
  {
    int i = bufferedChunk.size();
    if (i <= 0) {
      return;
    }
    writeHex(i);
    bufferedChunk.writeTo(socketOut);
    bufferedChunk.reset();
    socketOut.write(CRLF);
  }
  
  private void writeHex(int paramInt)
    throws IOException
  {
    int i = 8;
    int j;
    int k;
    do
    {
      byte[] arrayOfByte = hex;
      j = i - 1;
      arrayOfByte[j] = HEX_DIGITS[(paramInt & 0xF)];
      k = paramInt >>> 4;
      i = j;
      paramInt = k;
    } while (k != 0);
    socketOut.write(hex, j, hex.length - j);
  }
  
  /* Error */
  public void close()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 108	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:closed	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 108	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:closed	Z
    //   19: aload_0
    //   20: invokespecial 110	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:writeBufferedChunkToSocket	()V
    //   23: aload_0
    //   24: getfield 54	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:socketOut	Ljava/io/OutputStream;
    //   27: getstatic 44	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:FINAL_CHUNK	[B
    //   30: invokevirtual 99	java/io/OutputStream:write	([B)V
    //   33: goto -22 -> 11
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	ChunkedOutputStream
    //   36	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   14	33	36	finally
  }
  
  /* Error */
  public void flush()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 108	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:closed	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokespecial 110	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:writeBufferedChunkToSocket	()V
    //   18: aload_0
    //   19: getfield 54	com/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream:socketOut	Ljava/io/OutputStream;
    //   22: invokevirtual 113	java/io/OutputStream:flush	()V
    //   25: goto -14 -> 11
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	ChunkedOutputStream
    //   28	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	28	finally
    //   14	25	28	finally
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    for (;;)
    {
      int i;
      try
      {
        checkNotClosed();
        Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
        if (paramInt2 > 0) {
          if ((bufferedChunk.size() > 0) || (paramInt2 < maxChunkLength))
          {
            int j = Math.min(paramInt2, maxChunkLength - bufferedChunk.size());
            bufferedChunk.write(paramArrayOfByte, paramInt1, j);
            i = j;
            if (bufferedChunk.size() == maxChunkLength)
            {
              writeBufferedChunkToSocket();
              i = j;
            }
          }
          else
          {
            i = maxChunkLength;
            writeHex(i);
            socketOut.write(paramArrayOfByte, paramInt1, i);
            socketOut.write(CRLF);
          }
        }
      }
      finally {}
      return;
      paramInt1 += i;
      paramInt2 -= i;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpTransport.ChunkedOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
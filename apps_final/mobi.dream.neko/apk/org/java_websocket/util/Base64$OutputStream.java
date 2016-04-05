package org.java_websocket.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Base64$OutputStream
  extends FilterOutputStream
{
  private byte[] b4;
  private boolean breakLines;
  private byte[] buffer;
  private int bufferLength;
  private byte[] decodabet;
  private boolean encode;
  private int lineLength;
  private int options;
  private int position;
  private boolean suspendEncoding;
  
  public Base64$OutputStream(OutputStream paramOutputStream)
  {
    this(paramOutputStream, 1);
  }
  
  public Base64$OutputStream(OutputStream paramOutputStream, int paramInt)
  {
    super(paramOutputStream);
    boolean bool1;
    if ((paramInt & 0x8) != 0)
    {
      bool1 = true;
      breakLines = bool1;
      if ((paramInt & 0x1) == 0) {
        break label106;
      }
      bool1 = bool2;
      label34:
      encode = bool1;
      if (!encode) {
        break label112;
      }
    }
    label106:
    label112:
    for (int i = 3;; i = 4)
    {
      bufferLength = i;
      buffer = new byte[bufferLength];
      position = 0;
      lineLength = 0;
      suspendEncoding = false;
      b4 = new byte[4];
      options = paramInt;
      decodabet = Base64.access$000(paramInt);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label34;
    }
  }
  
  public void close()
    throws IOException
  {
    flushBase64();
    super.close();
    buffer = null;
    out = null;
  }
  
  public void flushBase64()
    throws IOException
  {
    if (position > 0)
    {
      if (encode)
      {
        out.write(Base64.access$300(b4, buffer, position, options));
        position = 0;
      }
    }
    else {
      return;
    }
    throw new IOException("Base64 input not properly padded.");
  }
  
  public void resumeEncoding()
  {
    suspendEncoding = false;
  }
  
  public void suspendEncoding()
    throws IOException
  {
    flushBase64();
    suspendEncoding = true;
  }
  
  public void write(int paramInt)
    throws IOException
  {
    if (suspendEncoding) {
      out.write(paramInt);
    }
    do
    {
      do
      {
        do
        {
          return;
          if (!encode) {
            break;
          }
          arrayOfByte = buffer;
          i = position;
          position = (i + 1);
          arrayOfByte[i] = ((byte)paramInt);
        } while (position < bufferLength);
        out.write(Base64.access$300(b4, buffer, bufferLength, options));
        lineLength += 4;
        if ((breakLines) && (lineLength >= 76))
        {
          out.write(10);
          lineLength = 0;
        }
        position = 0;
        return;
        if (decodabet[(paramInt & 0x7F)] <= -5) {
          break;
        }
        byte[] arrayOfByte = buffer;
        int i = position;
        position = (i + 1);
        arrayOfByte[i] = ((byte)paramInt);
      } while (position < bufferLength);
      paramInt = Base64.access$200(buffer, 0, b4, 0, options);
      out.write(b4, 0, paramInt);
      position = 0;
      return;
    } while (decodabet[(paramInt & 0x7F)] == -5);
    throw new IOException("Invalid character in Base64 data.");
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (suspendEncoding) {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramInt2)
      {
        write(paramArrayOfByte[(paramInt1 + i)]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.util.Base64.OutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
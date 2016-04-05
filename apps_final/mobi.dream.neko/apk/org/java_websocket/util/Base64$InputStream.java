package org.java_websocket.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class Base64$InputStream
  extends FilterInputStream
{
  private boolean breakLines;
  private byte[] buffer;
  private int bufferLength;
  private byte[] decodabet;
  private boolean encode;
  private int lineLength;
  private int numSigBytes;
  private int options;
  private int position;
  
  public Base64$InputStream(InputStream paramInputStream)
  {
    this(paramInputStream, 0);
  }
  
  public Base64$InputStream(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    options = paramInt;
    boolean bool1;
    if ((paramInt & 0x8) > 0)
    {
      bool1 = true;
      breakLines = bool1;
      if ((paramInt & 0x1) <= 0) {
        break label94;
      }
      bool1 = bool2;
      label39:
      encode = bool1;
      if (!encode) {
        break label100;
      }
    }
    label94:
    label100:
    for (int i = 4;; i = 3)
    {
      bufferLength = i;
      buffer = new byte[bufferLength];
      position = -1;
      lineLength = 0;
      decodabet = Base64.access$000(paramInt);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label39;
    }
  }
  
  public int read()
    throws IOException
  {
    int j;
    if (position < 0)
    {
      if (!encode) {
        break label110;
      }
      arrayOfByte = new byte[3];
      j = 0;
      i = 0;
      while (i < 3)
      {
        int k = in.read();
        if (k < 0) {
          break;
        }
        arrayOfByte[i] = ((byte)k);
        j += 1;
        i += 1;
      }
      if (j > 0)
      {
        Base64.access$100(arrayOfByte, 0, j, buffer, 0, options);
        position = 0;
        numSigBytes = 4;
      }
    }
    else
    {
      if (position < 0) {
        break label294;
      }
      if (position < numSigBytes) {
        break label210;
      }
      return -1;
    }
    return -1;
    label110:
    byte[] arrayOfByte = new byte[4];
    int i = 0;
    for (;;)
    {
      if (i < 4)
      {
        do
        {
          j = in.read();
        } while ((j >= 0) && (decodabet[(j & 0x7F)] <= -5));
        if (j >= 0) {}
      }
      else
      {
        if (i != 4) {
          break label194;
        }
        numSigBytes = Base64.access$200(arrayOfByte, 0, buffer, 0, options);
        position = 0;
        break;
      }
      arrayOfByte[i] = ((byte)j);
      i += 1;
    }
    label194:
    if (i == 0) {
      return -1;
    }
    throw new IOException("Improperly padded Base64 input.");
    label210:
    if ((encode) && (breakLines) && (lineLength >= 76))
    {
      lineLength = 0;
      return 10;
    }
    lineLength += 1;
    arrayOfByte = buffer;
    i = position;
    position = (i + 1);
    i = arrayOfByte[i];
    if (position >= bufferLength) {
      position = -1;
    }
    return i & 0xFF;
    label294:
    throw new IOException("Error in Base64 code reading stream.");
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = 0;
    for (;;)
    {
      j = i;
      if (i >= paramInt2) {
        break label54;
      }
      j = read();
      if (j < 0) {
        break;
      }
      paramArrayOfByte[(paramInt1 + i)] = ((byte)j);
      i += 1;
    }
    int j = i;
    if (i == 0) {
      j = -1;
    }
    label54:
    return j;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.util.Base64.InputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
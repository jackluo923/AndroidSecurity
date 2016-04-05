package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.Deflater;

final class SpdyWriter
  implements Closeable
{
  private final ByteArrayOutputStream nameValueBlockBuffer;
  private final DataOutputStream nameValueBlockOut;
  final DataOutputStream out;
  
  SpdyWriter(OutputStream paramOutputStream)
  {
    out = new DataOutputStream(paramOutputStream);
    paramOutputStream = new Deflater();
    paramOutputStream.setDictionary(SpdyReader.DICTIONARY);
    nameValueBlockBuffer = new ByteArrayOutputStream();
    nameValueBlockOut = new DataOutputStream(Platform.get().newDeflaterOutputStream(nameValueBlockBuffer, paramOutputStream, true));
  }
  
  private void writeNameValueBlockToBuffer(List<String> paramList)
    throws IOException
  {
    nameValueBlockBuffer.reset();
    int i = paramList.size() / 2;
    nameValueBlockOut.writeInt(i);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      nameValueBlockOut.writeInt(str.length());
      nameValueBlockOut.write(str.getBytes("UTF-8"));
    }
    nameValueBlockOut.flush();
  }
  
  public void close()
    throws IOException
  {
    Util.closeAll(out, nameValueBlockOut);
  }
  
  public void data(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = paramArrayOfByte.length;
      out.writeInt(0x7FFFFFFF & paramInt2);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0xFFFFFF & i);
      out.write(paramArrayOfByte);
      out.flush();
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public void goAway(int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    try
    {
      out.writeInt(-2147287033);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0x8);
      out.writeInt(paramInt2);
      out.writeInt(paramInt3);
      out.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void headers(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException
  {
    try
    {
      writeNameValueBlockToBuffer(paramList);
      int i = nameValueBlockBuffer.size();
      out.writeInt(-2147287032);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0xFFFFFF & i + 4);
      out.writeInt(0x7FFFFFFF & paramInt2);
      nameValueBlockBuffer.writeTo(out);
      out.flush();
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void noop()
    throws IOException
  {
    try
    {
      out.writeInt(-2147287035);
      out.writeInt(0);
      out.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void ping(int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      out.writeInt(-2147287034);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0x4);
      out.writeInt(paramInt2);
      out.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void rstStream(int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      out.writeInt(-2147287037);
      out.writeInt(8);
      out.writeInt(0x7FFFFFFF & paramInt1);
      out.writeInt(paramInt2);
      out.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void settings(int paramInt, Settings paramSettings)
    throws IOException
  {
    for (;;)
    {
      try
      {
        int i = paramSettings.size();
        out.writeInt(-2147287036);
        out.writeInt((paramInt & 0xFF) << 24 | i * 8 + 4 & 0xFFFFFF);
        out.writeInt(i);
        paramInt = 0;
        if (paramInt <= 9)
        {
          if (!paramSettings.isSet(paramInt)) {
            break label124;
          }
          i = paramSettings.flags(paramInt);
          out.writeInt((i & 0xFF) << 24 | paramInt & 0xFFFFFF);
          out.writeInt(paramSettings.get(paramInt));
        }
      }
      finally {}
      out.flush();
      return;
      label124:
      paramInt += 1;
    }
  }
  
  public void synReply(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException
  {
    try
    {
      writeNameValueBlockToBuffer(paramList);
      int i = nameValueBlockBuffer.size();
      out.writeInt(-2147287038);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0xFFFFFF & i + 4);
      out.writeInt(0x7FFFFFFF & paramInt2);
      nameValueBlockBuffer.writeTo(out);
      out.flush();
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void synStream(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, List<String> paramList)
    throws IOException
  {
    try
    {
      writeNameValueBlockToBuffer(paramList);
      int i = nameValueBlockBuffer.size();
      out.writeInt(-2147287039);
      out.writeInt((paramInt1 & 0xFF) << 24 | 0xFFFFFF & i + 10);
      out.writeInt(paramInt2 & 0x7FFFFFFF);
      out.writeInt(paramInt3 & 0x7FFFFFFF);
      out.writeShort((paramInt4 & 0x7) << 13 | 0x0 | paramInt5 & 0xFF);
      nameValueBlockBuffer.writeTo(out);
      out.flush();
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void windowUpdate(int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      out.writeInt(-2147287031);
      out.writeInt(8);
      out.writeInt(paramInt1);
      out.writeInt(paramInt2);
      out.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
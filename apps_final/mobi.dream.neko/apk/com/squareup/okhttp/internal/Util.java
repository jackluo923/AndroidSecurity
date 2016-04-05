package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicReference;

public final class Util
{
  public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  public static final String[] EMPTY_STRING_ARRAY = new String[0];
  public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
  public static final Charset US_ASCII = Charset.forName("US-ASCII");
  public static final Charset UTF_8 = Charset.forName("UTF-8");
  private static AtomicReference<byte[]> skipBuffer = new AtomicReference();
  
  public static void checkOffsetAndCount(int paramInt1, int paramInt2, int paramInt3)
  {
    if (((paramInt2 | paramInt3) < 0) || (paramInt2 > paramInt1) || (paramInt1 - paramInt2 < paramInt3)) {
      throw new ArrayIndexOutOfBoundsException();
    }
  }
  
  public static void closeAll(Closeable paramCloseable1, Closeable paramCloseable2)
    throws IOException
  {
    Object localObject = null;
    try
    {
      paramCloseable1.close();
      paramCloseable1 = (Closeable)localObject;
    }
    catch (Throwable paramCloseable1)
    {
      label18:
      for (;;) {}
    }
    try
    {
      paramCloseable2.close();
      paramCloseable2 = paramCloseable1;
    }
    catch (Throwable localThrowable)
    {
      paramCloseable2 = paramCloseable1;
      if (paramCloseable1 != null) {
        break label18;
      }
      paramCloseable2 = localThrowable;
      break label18;
      if (!(paramCloseable2 instanceof IOException)) {
        break label51;
      }
      throw ((IOException)paramCloseable2);
      if (!(paramCloseable2 instanceof RuntimeException)) {
        break label63;
      }
      throw ((RuntimeException)paramCloseable2);
      if (!(paramCloseable2 instanceof Error)) {
        break label75;
      }
      throw ((Error)paramCloseable2);
      throw new AssertionError(paramCloseable2);
    }
    if (paramCloseable2 == null) {
      return;
    }
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (RuntimeException paramSocket)
    {
      throw paramSocket;
    }
    catch (Exception paramSocket) {}
  }
  
  public static int copy(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int j = paramInputStream.read(arrayOfByte);
      if (j == -1) {
        break;
      }
      i += j;
      paramOutputStream.write(arrayOfByte, 0, j);
    }
    return i;
  }
  
  public static void deleteContents(File paramFile)
    throws IOException
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("not a readable directory: " + paramFile);
    }
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      paramFile = arrayOfFile[i];
      if (paramFile.isDirectory()) {
        deleteContents(paramFile);
      }
      if (!paramFile.delete()) {
        throw new IOException("failed to delete file: " + paramFile);
      }
      i += 1;
    }
  }
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int getDefaultPort(String paramString)
  {
    if ("http".equalsIgnoreCase(paramString)) {
      return 80;
    }
    if ("https".equalsIgnoreCase(paramString)) {
      return 443;
    }
    return -1;
  }
  
  private static int getEffectivePort(String paramString, int paramInt)
  {
    if (paramInt != -1) {
      return paramInt;
    }
    return getDefaultPort(paramString);
  }
  
  public static int getEffectivePort(URI paramURI)
  {
    return getEffectivePort(paramURI.getScheme(), paramURI.getPort());
  }
  
  public static int getEffectivePort(URL paramURL)
  {
    return getEffectivePort(paramURL.getProtocol(), paramURL.getPort());
  }
  
  public static void pokeInt(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ByteOrder paramByteOrder)
  {
    if (paramByteOrder == ByteOrder.BIG_ENDIAN)
    {
      i = paramInt1 + 1;
      paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 24 & 0xFF));
      paramInt1 = i + 1;
      paramArrayOfByte[i] = ((byte)(paramInt2 >> 16 & 0xFF));
      paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 8 & 0xFF));
      paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 0 & 0xFF));
      return;
    }
    int i = paramInt1 + 1;
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 0 & 0xFF));
    paramInt1 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt2 >> 8 & 0xFF));
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 16 & 0xFF));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 24 & 0xFF));
  }
  
  public static String readAsciiLine(InputStream paramInputStream)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    for (;;)
    {
      int i = paramInputStream.read();
      if (i == -1) {
        throw new EOFException();
      }
      if (i == 10)
      {
        i = localStringBuilder.length();
        if ((i > 0) && (localStringBuilder.charAt(i - 1) == '\r')) {
          localStringBuilder.setLength(i - 1);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.append((char)i);
    }
  }
  
  public static String readFully(Reader paramReader)
    throws IOException
  {
    try
    {
      StringWriter localStringWriter = new StringWriter();
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        int i = paramReader.read(arrayOfChar);
        if (i == -1) {
          break;
        }
        localStringWriter.write(arrayOfChar, 0, i);
      }
      str = ((StringWriter)localObject).toString();
    }
    finally
    {
      paramReader.close();
    }
    String str;
    paramReader.close();
    return str;
  }
  
  public static void readFully(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    readFully(paramInputStream, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static void readFully(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 == 0) {}
    for (;;)
    {
      return;
      if (paramInputStream == null) {
        throw new NullPointerException("in == null");
      }
      if (paramArrayOfByte == null) {
        throw new NullPointerException("dst == null");
      }
      checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
      while (paramInt2 > 0)
      {
        int i = paramInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
        if (i < 0) {
          throw new EOFException();
        }
        paramInt1 += i;
        paramInt2 -= i;
      }
    }
  }
  
  public static int readSingleByte(InputStream paramInputStream)
    throws IOException
  {
    int i = -1;
    byte[] arrayOfByte = new byte[1];
    if (paramInputStream.read(arrayOfByte, 0, 1) != -1) {
      i = arrayOfByte[0] & 0xFF;
    }
    return i;
  }
  
  public static void skipAll(InputStream paramInputStream)
    throws IOException
  {
    do
    {
      paramInputStream.skip(Long.MAX_VALUE);
    } while (paramInputStream.read() != -1);
  }
  
  public static long skipByReading(InputStream paramInputStream, long paramLong)
    throws IOException
  {
    byte[] arrayOfByte2 = (byte[])skipBuffer.getAndSet(null);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null) {
      arrayOfByte1 = new byte['က'];
    }
    long l1 = 0L;
    long l2 = l1;
    int i;
    int j;
    if (l1 < paramLong)
    {
      i = (int)Math.min(paramLong - l1, arrayOfByte1.length);
      j = paramInputStream.read(arrayOfByte1, 0, i);
      if (j != -1) {
        break label83;
      }
      l2 = l1;
    }
    for (;;)
    {
      skipBuffer.set(arrayOfByte1);
      return l2;
      label83:
      l2 = l1 + j;
      l1 = l2;
      if (j >= i) {
        break;
      }
    }
  }
  
  public static void writeSingleByte(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    paramOutputStream.write(new byte[] { (byte)(paramInt & 0xFF) });
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
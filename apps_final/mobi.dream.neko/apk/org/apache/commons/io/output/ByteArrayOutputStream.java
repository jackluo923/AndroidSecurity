package org.apache.commons.io.output;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

public class ByteArrayOutputStream
  extends OutputStream
{
  private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  private final List<byte[]> buffers = new ArrayList();
  private int count;
  private byte[] currentBuffer;
  private int currentBufferIndex;
  private int filledBufferSum;
  
  public ByteArrayOutputStream()
  {
    this(1024);
  }
  
  public ByteArrayOutputStream(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Negative initial size: " + paramInt);
    }
    try
    {
      needNewBuffer(paramInt);
      return;
    }
    finally {}
  }
  
  private void needNewBuffer(int paramInt)
  {
    if (currentBufferIndex < buffers.size() - 1)
    {
      filledBufferSum += currentBuffer.length;
      currentBufferIndex += 1;
      currentBuffer = ((byte[])buffers.get(currentBufferIndex));
      return;
    }
    if (currentBuffer == null) {}
    for (filledBufferSum = 0;; filledBufferSum += currentBuffer.length)
    {
      currentBufferIndex += 1;
      currentBuffer = new byte[paramInt];
      buffers.add(currentBuffer);
      return;
      paramInt = Math.max(currentBuffer.length << 1, paramInt - filledBufferSum);
    }
  }
  
  private InputStream toBufferedInputStream()
  {
    int i = count;
    if (i == 0) {
      return new ClosedInputStream();
    }
    ArrayList localArrayList = new ArrayList(buffers.size());
    Iterator localIterator = buffers.iterator();
    int j;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      byte[] arrayOfByte = (byte[])localIterator.next();
      j = Math.min(arrayOfByte.length, i);
      localArrayList.add(new ByteArrayInputStream(arrayOfByte, 0, j));
      j = i - j;
      i = j;
    } while (j != 0);
    return new SequenceInputStream(Collections.enumeration(localArrayList));
  }
  
  public static InputStream toBufferedInputStream(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localByteArrayOutputStream.write(paramInputStream);
    return localByteArrayOutputStream.toBufferedInputStream();
  }
  
  public void close()
    throws IOException
  {}
  
  public void reset()
  {
    try
    {
      count = 0;
      filledBufferSum = 0;
      currentBufferIndex = 0;
      currentBuffer = ((byte[])buffers.get(currentBufferIndex));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int size()
  {
    try
    {
      int i = count;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public byte[] toByteArray()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 85	org/apache/commons/io/output/ByteArrayOutputStream:count	I
    //   6: istore 4
    //   8: iload 4
    //   10: ifne +11 -> 21
    //   13: getstatic 18	org/apache/commons/io/output/ByteArrayOutputStream:EMPTY_BYTE_ARRAY	[B
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: areturn
    //   21: iload 4
    //   23: newarray <illegal type>
    //   25: astore_2
    //   26: iconst_0
    //   27: istore 5
    //   29: aload_0
    //   30: getfield 30	org/apache/commons/io/output/ByteArrayOutputStream:buffers	Ljava/util/List;
    //   33: invokeinterface 93 1 0
    //   38: astore_3
    //   39: aload_2
    //   40: astore_1
    //   41: aload_3
    //   42: invokeinterface 99 1 0
    //   47: ifeq -30 -> 17
    //   50: aload_3
    //   51: invokeinterface 103 1 0
    //   56: checkcast 71	[B
    //   59: astore_1
    //   60: aload_1
    //   61: arraylength
    //   62: iload 4
    //   64: invokestatic 106	java/lang/Math:min	(II)I
    //   67: istore 6
    //   69: aload_1
    //   70: iconst_0
    //   71: aload_2
    //   72: iload 5
    //   74: iload 6
    //   76: invokestatic 143	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   79: iload 5
    //   81: iload 6
    //   83: iadd
    //   84: istore 5
    //   86: iload 4
    //   88: iload 6
    //   90: isub
    //   91: istore 6
    //   93: iload 6
    //   95: istore 4
    //   97: iload 6
    //   99: ifne -60 -> 39
    //   102: aload_2
    //   103: astore_1
    //   104: goto -87 -> 17
    //   107: astore_1
    //   108: aload_0
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ByteArrayOutputStream
    //   16	88	1	localObject1	Object
    //   107	4	1	localObject2	Object
    //   25	78	2	arrayOfByte	byte[]
    //   38	13	3	localIterator	Iterator
    //   6	90	4	i	int
    //   27	58	5	j	int
    //   67	31	6	k	int
    // Exception table:
    //   from	to	target	type
    //   2	8	107	finally
    //   13	17	107	finally
    //   21	26	107	finally
    //   29	39	107	finally
    //   41	79	107	finally
  }
  
  public String toString()
  {
    return new String(toByteArray());
  }
  
  public String toString(String paramString)
    throws UnsupportedEncodingException
  {
    return new String(toByteArray(), paramString);
  }
  
  public int write(InputStream paramInputStream)
    throws IOException
  {
    int k = 0;
    try
    {
      int j = count - filledBufferSum;
      int i = paramInputStream.read(currentBuffer, j, currentBuffer.length - j);
      while (i != -1)
      {
        int m = k + i;
        j += i;
        count += i;
        i = j;
        if (j == currentBuffer.length)
        {
          needNewBuffer(currentBuffer.length);
          i = 0;
        }
        k = paramInputStream.read(currentBuffer, i, currentBuffer.length - i);
        j = i;
        i = k;
        k = m;
      }
      return k;
    }
    finally {}
  }
  
  public void write(int paramInt)
  {
    try
    {
      int j = count - filledBufferSum;
      int i = j;
      if (j == currentBuffer.length)
      {
        needNewBuffer(count + 1);
        i = 0;
      }
      currentBuffer[i] = ((byte)paramInt);
      count += 1;
      return;
    }
    finally {}
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramArrayOfByte.length) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length) || (paramInt1 + paramInt2 < 0)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return;
    }
    try
    {
      int m = count + paramInt2;
      int i = paramInt2;
      int j = count - filledBufferSum;
      while (i > 0)
      {
        int k = Math.min(i, currentBuffer.length - j);
        System.arraycopy(paramArrayOfByte, paramInt1 + paramInt2 - i, currentBuffer, j, k);
        k = i - k;
        i = k;
        if (k > 0)
        {
          needNewBuffer(m);
          j = 0;
          i = k;
        }
      }
      count = m;
      return;
    }
    finally {}
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    try
    {
      int i = count;
      Iterator localIterator = buffers.iterator();
      int j;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        byte[] arrayOfByte = (byte[])localIterator.next();
        j = Math.min(arrayOfByte.length, i);
        paramOutputStream.write(arrayOfByte, 0, j);
        j = i - j;
        i = j;
      } while (j != 0);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.ByteArrayOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
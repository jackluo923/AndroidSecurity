package org.apache.commons.io.filefilter;

import java.io.Serializable;

public class MagicNumberFileFilter
  extends AbstractFileFilter
  implements Serializable
{
  private static final long serialVersionUID = -547733176983104172L;
  private final long byteOffset;
  private final byte[] magicNumbers;
  
  public MagicNumberFileFilter(String paramString)
  {
    this(paramString, 0L);
  }
  
  public MagicNumberFileFilter(String paramString, long paramLong)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("The magic number cannot be null");
    }
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("The magic number must contain at least one byte");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("The offset cannot be negative");
    }
    magicNumbers = paramString.getBytes();
    byteOffset = paramLong;
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0L);
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfByte, long paramLong)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("The magic number cannot be null");
    }
    if (paramArrayOfByte.length == 0) {
      throw new IllegalArgumentException("The magic number must contain at least one byte");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("The offset cannot be negative");
    }
    magicNumbers = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, magicNumbers, 0, paramArrayOfByte.length);
    byteOffset = paramLong;
  }
  
  /* Error */
  public boolean accept(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +75 -> 76
    //   4: aload_1
    //   5: invokevirtual 66	java/io/File:isFile	()Z
    //   8: ifeq +68 -> 76
    //   11: aload_1
    //   12: invokevirtual 69	java/io/File:canRead	()Z
    //   15: ifeq +61 -> 76
    //   18: aconst_null
    //   19: astore_3
    //   20: aconst_null
    //   21: astore_2
    //   22: aload_0
    //   23: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   26: arraylength
    //   27: newarray <illegal type>
    //   29: astore 4
    //   31: new 71	java/io/RandomAccessFile
    //   34: dup
    //   35: aload_1
    //   36: ldc 73
    //   38: invokespecial 76	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   41: astore_1
    //   42: aload_1
    //   43: aload_0
    //   44: getfield 46	org/apache/commons/io/filefilter/MagicNumberFileFilter:byteOffset	J
    //   47: invokevirtual 80	java/io/RandomAccessFile:seek	(J)V
    //   50: aload_1
    //   51: aload 4
    //   53: invokevirtual 84	java/io/RandomAccessFile:read	([B)I
    //   56: istore 5
    //   58: aload_0
    //   59: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   62: arraylength
    //   63: istore 6
    //   65: iload 5
    //   67: iload 6
    //   69: if_icmpeq +9 -> 78
    //   72: aload_1
    //   73: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   76: iconst_0
    //   77: ireturn
    //   78: aload_0
    //   79: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   82: aload 4
    //   84: invokestatic 96	java/util/Arrays:equals	([B[B)Z
    //   87: istore 7
    //   89: aload_1
    //   90: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   93: iload 7
    //   95: ireturn
    //   96: astore_1
    //   97: aload_2
    //   98: astore_1
    //   99: aload_1
    //   100: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   103: iconst_0
    //   104: ireturn
    //   105: astore_2
    //   106: aload_3
    //   107: astore_1
    //   108: aload_1
    //   109: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   112: aload_2
    //   113: athrow
    //   114: astore_2
    //   115: goto -7 -> 108
    //   118: astore_2
    //   119: goto -20 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	MagicNumberFileFilter
    //   0	122	1	paramFile	java.io.File
    //   21	77	2	localObject1	Object
    //   105	8	2	localObject2	Object
    //   114	1	2	localObject3	Object
    //   118	1	2	localIOException	java.io.IOException
    //   19	88	3	localObject4	Object
    //   29	54	4	arrayOfByte	byte[]
    //   56	14	5	i	int
    //   63	7	6	j	int
    //   87	7	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   22	42	96	java/io/IOException
    //   22	42	105	finally
    //   42	65	114	finally
    //   78	89	114	finally
    //   42	65	118	java/io/IOException
    //   78	89	118	java/io/IOException
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(super.toString());
    localStringBuilder.append("(");
    localStringBuilder.append(new String(magicNumbers));
    localStringBuilder.append(",");
    localStringBuilder.append(byteOffset);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.filefilter.MagicNumberFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
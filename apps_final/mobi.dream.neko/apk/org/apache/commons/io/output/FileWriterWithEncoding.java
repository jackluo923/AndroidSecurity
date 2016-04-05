package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class FileWriterWithEncoding
  extends Writer
{
  private final Writer out;
  
  public FileWriterWithEncoding(File paramFile, String paramString)
    throws IOException
  {
    this(paramFile, paramString, false);
  }
  
  public FileWriterWithEncoding(File paramFile, String paramString, boolean paramBoolean)
    throws IOException
  {
    out = initWriter(paramFile, paramString, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset)
    throws IOException
  {
    this(paramFile, paramCharset, false);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset, boolean paramBoolean)
    throws IOException
  {
    out = initWriter(paramFile, paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder)
    throws IOException
  {
    this(paramFile, paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder, boolean paramBoolean)
    throws IOException
  {
    out = initWriter(paramFile, paramCharsetEncoder, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2)
    throws IOException
  {
    this(new File(paramString1), paramString2, false);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2, boolean paramBoolean)
    throws IOException
  {
    this(new File(paramString1), paramString2, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset)
    throws IOException
  {
    this(new File(paramString), paramCharset, false);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset, boolean paramBoolean)
    throws IOException
  {
    this(new File(paramString), paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder)
    throws IOException
  {
    this(new File(paramString), paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder, boolean paramBoolean)
    throws IOException
  {
    this(new File(paramString), paramCharsetEncoder, paramBoolean);
  }
  
  /* Error */
  private static Writer initWriter(File paramFile, Object paramObject, boolean paramBoolean)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 47	java/lang/NullPointerException
    //   7: dup
    //   8: ldc 49
    //   10: invokespecial 50	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: ifnonnull +13 -> 28
    //   18: new 47	java/lang/NullPointerException
    //   21: dup
    //   22: ldc 52
    //   24: invokespecial 50	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   27: athrow
    //   28: aload_0
    //   29: invokevirtual 56	java/io/File:exists	()Z
    //   32: istore 6
    //   34: aconst_null
    //   35: astore 5
    //   37: aconst_null
    //   38: astore 4
    //   40: new 58	java/io/FileOutputStream
    //   43: dup
    //   44: aload_0
    //   45: iload_2
    //   46: invokespecial 61	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   49: astore_3
    //   50: aload_1
    //   51: instanceof 63
    //   54: ifeq +16 -> 70
    //   57: new 65	java/io/OutputStreamWriter
    //   60: dup
    //   61: aload_3
    //   62: aload_1
    //   63: checkcast 63	java/nio/charset/Charset
    //   66: invokespecial 68	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   69: areturn
    //   70: aload_1
    //   71: instanceof 70
    //   74: ifeq +16 -> 90
    //   77: new 65	java/io/OutputStreamWriter
    //   80: dup
    //   81: aload_3
    //   82: aload_1
    //   83: checkcast 70	java/nio/charset/CharsetEncoder
    //   86: invokespecial 73	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    //   89: areturn
    //   90: new 65	java/io/OutputStreamWriter
    //   93: dup
    //   94: aload_3
    //   95: aload_1
    //   96: checkcast 75	java/lang/String
    //   99: invokespecial 78	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   102: astore_1
    //   103: aload_1
    //   104: areturn
    //   105: astore_1
    //   106: aload 4
    //   108: astore_3
    //   109: aconst_null
    //   110: invokestatic 84	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Writer;)V
    //   113: aload_3
    //   114: invokestatic 87	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   117: iload 6
    //   119: ifne +8 -> 127
    //   122: aload_0
    //   123: invokestatic 93	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   126: pop
    //   127: aload_1
    //   128: athrow
    //   129: astore_1
    //   130: aload 5
    //   132: astore_3
    //   133: aconst_null
    //   134: invokestatic 84	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Writer;)V
    //   137: aload_3
    //   138: invokestatic 87	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   141: iload 6
    //   143: ifne +8 -> 151
    //   146: aload_0
    //   147: invokestatic 93	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   150: pop
    //   151: aload_1
    //   152: athrow
    //   153: astore_1
    //   154: goto -21 -> 133
    //   157: astore_1
    //   158: goto -49 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	paramFile	File
    //   0	161	1	paramObject	Object
    //   0	161	2	paramBoolean	boolean
    //   49	89	3	localObject1	Object
    //   38	69	4	localObject2	Object
    //   35	96	5	localObject3	Object
    //   32	110	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   40	50	105	java/io/IOException
    //   40	50	129	java/lang/RuntimeException
    //   50	70	153	java/lang/RuntimeException
    //   70	90	153	java/lang/RuntimeException
    //   90	103	153	java/lang/RuntimeException
    //   50	70	157	java/io/IOException
    //   70	90	157	java/io/IOException
    //   90	103	157	java/io/IOException
  }
  
  public void close()
    throws IOException
  {
    out.close();
  }
  
  public void flush()
    throws IOException
  {
    out.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    out.write(paramInt);
  }
  
  public void write(String paramString)
    throws IOException
  {
    out.write(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    out.write(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfChar)
    throws IOException
  {
    out.write(paramArrayOfChar);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    out.write(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.FileWriterWithEncoding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
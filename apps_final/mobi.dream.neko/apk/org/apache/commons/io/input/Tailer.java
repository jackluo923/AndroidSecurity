package org.apache.commons.io.input;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class Tailer
  implements Runnable
{
  private final long delay;
  private final boolean end;
  private final File file;
  private final TailerListener listener;
  private volatile boolean run = true;
  
  public Tailer(File paramFile, TailerListener paramTailerListener)
  {
    this(paramFile, paramTailerListener, 1000L);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong)
  {
    this(paramFile, paramTailerListener, paramLong, false);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean)
  {
    file = paramFile;
    delay = paramLong;
    end = paramBoolean;
    listener = paramTailerListener;
    paramTailerListener.init(this);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener)
  {
    return create(paramFile, paramTailerListener, 1000L, false);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong)
  {
    return create(paramFile, paramTailerListener, paramLong, false);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean)
  {
    paramFile = new Tailer(paramFile, paramTailerListener, paramLong, paramBoolean);
    paramTailerListener = new Thread(paramFile);
    paramTailerListener.setDaemon(true);
    paramTailerListener.start();
    return paramFile;
  }
  
  private String readLine(RandomAccessFile paramRandomAccessFile)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    for (;;)
    {
      int k = paramRandomAccessFile.read();
      if (k == -1) {
        break;
      }
      switch (k)
      {
      case 11: 
      case 12: 
      default: 
        int j = i;
        if (i != 0)
        {
          localStringBuffer.append('\r');
          j = 0;
        }
        localStringBuffer.append((char)k);
        i = j;
        break;
      case 10: 
        return localStringBuffer.toString();
      case 13: 
        i = 1;
      }
    }
    return null;
  }
  
  private long readLines(RandomAccessFile paramRandomAccessFile)
    throws IOException
  {
    long l = paramRandomAccessFile.getFilePointer();
    for (String str = readLine(paramRandomAccessFile); str != null; str = readLine(paramRandomAccessFile))
    {
      l = paramRandomAccessFile.getFilePointer();
      listener.handle(str);
    }
    paramRandomAccessFile.seek(l);
    return l;
  }
  
  public long getDelay()
  {
    return delay;
  }
  
  public File getFile()
  {
    return file;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 7
    //   3: lconst_0
    //   4: lstore 9
    //   6: aconst_null
    //   7: astore_1
    //   8: aload_1
    //   9: astore_3
    //   10: aload_1
    //   11: astore 4
    //   13: aload_0
    //   14: getfield 31	org/apache/commons/io/input/Tailer:run	Z
    //   17: istore 13
    //   19: lload 7
    //   21: lstore 11
    //   23: lload 9
    //   25: lstore 5
    //   27: aload_1
    //   28: astore_2
    //   29: iload 13
    //   31: ifeq +135 -> 166
    //   34: lload 7
    //   36: lstore 11
    //   38: lload 9
    //   40: lstore 5
    //   42: aload_1
    //   43: astore_2
    //   44: aload_1
    //   45: ifnonnull +121 -> 166
    //   48: aload_1
    //   49: astore_3
    //   50: aload_1
    //   51: astore 4
    //   53: new 72	java/io/RandomAccessFile
    //   56: dup
    //   57: aload_0
    //   58: getfield 33	org/apache/commons/io/input/Tailer:file	Ljava/io/File;
    //   61: ldc 112
    //   63: invokespecial 115	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   66: astore_2
    //   67: aload_2
    //   68: astore_1
    //   69: aload_1
    //   70: ifnonnull +40 -> 110
    //   73: aload_1
    //   74: astore_3
    //   75: aload_1
    //   76: astore 4
    //   78: aload_0
    //   79: getfield 35	org/apache/commons/io/input/Tailer:delay	J
    //   82: invokestatic 118	java/lang/Thread:sleep	(J)V
    //   85: goto -77 -> 8
    //   88: astore_2
    //   89: aload_1
    //   90: astore_3
    //   91: aload_1
    //   92: astore 4
    //   94: aload_0
    //   95: getfield 39	org/apache/commons/io/input/Tailer:listener	Lorg/apache/commons/io/input/TailerListener;
    //   98: invokeinterface 121 1 0
    //   103: goto -34 -> 69
    //   106: astore_2
    //   107: goto -99 -> 8
    //   110: aload_1
    //   111: astore_3
    //   112: aload_1
    //   113: astore 4
    //   115: aload_0
    //   116: getfield 37	org/apache/commons/io/input/Tailer:end	Z
    //   119: ifeq +41 -> 160
    //   122: aload_1
    //   123: astore_3
    //   124: aload_1
    //   125: astore 4
    //   127: aload_0
    //   128: getfield 33	org/apache/commons/io/input/Tailer:file	Ljava/io/File;
    //   131: invokevirtual 126	java/io/File:length	()J
    //   134: lstore 9
    //   136: aload_1
    //   137: astore_3
    //   138: aload_1
    //   139: astore 4
    //   141: invokestatic 131	java/lang/System:currentTimeMillis	()J
    //   144: lstore 7
    //   146: aload_1
    //   147: astore_3
    //   148: aload_1
    //   149: astore 4
    //   151: aload_1
    //   152: lload 9
    //   154: invokevirtual 101	java/io/RandomAccessFile:seek	(J)V
    //   157: goto -149 -> 8
    //   160: lconst_0
    //   161: lstore 9
    //   163: goto -27 -> 136
    //   166: aload_2
    //   167: astore_3
    //   168: aload_2
    //   169: astore 4
    //   171: aload_0
    //   172: getfield 31	org/apache/commons/io/input/Tailer:run	Z
    //   175: ifeq +210 -> 385
    //   178: aload_2
    //   179: astore_3
    //   180: aload_2
    //   181: astore 4
    //   183: aload_0
    //   184: getfield 33	org/apache/commons/io/input/Tailer:file	Ljava/io/File;
    //   187: invokevirtual 126	java/io/File:length	()J
    //   190: lstore 7
    //   192: lload 7
    //   194: lload 5
    //   196: lcmp
    //   197: ifge +75 -> 272
    //   200: aload_2
    //   201: astore_3
    //   202: aload_2
    //   203: astore 4
    //   205: aload_0
    //   206: getfield 39	org/apache/commons/io/input/Tailer:listener	Lorg/apache/commons/io/input/TailerListener;
    //   209: invokeinterface 134 1 0
    //   214: aload_2
    //   215: astore_3
    //   216: aload_2
    //   217: astore 4
    //   219: new 72	java/io/RandomAccessFile
    //   222: dup
    //   223: aload_0
    //   224: getfield 33	org/apache/commons/io/input/Tailer:file	Ljava/io/File;
    //   227: ldc 112
    //   229: invokespecial 115	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   232: astore_1
    //   233: lconst_0
    //   234: lstore 5
    //   236: aload_1
    //   237: astore_3
    //   238: aload_1
    //   239: astore 4
    //   241: aload_2
    //   242: invokestatic 140	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   245: aload_1
    //   246: astore_2
    //   247: goto -81 -> 166
    //   250: astore_1
    //   251: aload_2
    //   252: astore_1
    //   253: aload_1
    //   254: astore_3
    //   255: aload_1
    //   256: astore 4
    //   258: aload_0
    //   259: getfield 39	org/apache/commons/io/input/Tailer:listener	Lorg/apache/commons/io/input/TailerListener;
    //   262: invokeinterface 121 1 0
    //   267: aload_1
    //   268: astore_2
    //   269: goto -103 -> 166
    //   272: lload 7
    //   274: lload 5
    //   276: lcmp
    //   277: ifle +52 -> 329
    //   280: aload_2
    //   281: astore_3
    //   282: aload_2
    //   283: astore 4
    //   285: invokestatic 131	java/lang/System:currentTimeMillis	()J
    //   288: lstore 7
    //   290: aload_2
    //   291: astore_3
    //   292: aload_2
    //   293: astore 4
    //   295: aload_0
    //   296: aload_2
    //   297: invokespecial 142	org/apache/commons/io/input/Tailer:readLines	(Ljava/io/RandomAccessFile;)J
    //   300: lstore 5
    //   302: aload_2
    //   303: astore_3
    //   304: aload_2
    //   305: astore 4
    //   307: aload_0
    //   308: getfield 35	org/apache/commons/io/input/Tailer:delay	J
    //   311: invokestatic 118	java/lang/Thread:sleep	(J)V
    //   314: lload 7
    //   316: lstore 11
    //   318: goto -152 -> 166
    //   321: astore_1
    //   322: lload 7
    //   324: lstore 11
    //   326: goto -160 -> 166
    //   329: lload 11
    //   331: lstore 7
    //   333: aload_2
    //   334: astore_3
    //   335: aload_2
    //   336: astore 4
    //   338: aload_0
    //   339: getfield 33	org/apache/commons/io/input/Tailer:file	Ljava/io/File;
    //   342: lload 11
    //   344: invokestatic 148	org/apache/commons/io/FileUtils:isFileNewer	(Ljava/io/File;J)Z
    //   347: ifeq -45 -> 302
    //   350: aload_2
    //   351: astore_3
    //   352: aload_2
    //   353: astore 4
    //   355: aload_2
    //   356: lconst_0
    //   357: invokevirtual 101	java/io/RandomAccessFile:seek	(J)V
    //   360: aload_2
    //   361: astore_3
    //   362: aload_2
    //   363: astore 4
    //   365: invokestatic 131	java/lang/System:currentTimeMillis	()J
    //   368: lstore 7
    //   370: aload_2
    //   371: astore_3
    //   372: aload_2
    //   373: astore 4
    //   375: aload_0
    //   376: aload_2
    //   377: invokespecial 142	org/apache/commons/io/input/Tailer:readLines	(Ljava/io/RandomAccessFile;)J
    //   380: lstore 5
    //   382: goto -80 -> 302
    //   385: aload_2
    //   386: invokestatic 140	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   389: return
    //   390: astore_1
    //   391: aload_3
    //   392: astore 4
    //   394: aload 4
    //   396: astore_3
    //   397: aload_0
    //   398: getfield 39	org/apache/commons/io/input/Tailer:listener	Lorg/apache/commons/io/input/TailerListener;
    //   401: aload_1
    //   402: invokeinterface 151 2 0
    //   407: aload 4
    //   409: invokestatic 140	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   412: return
    //   413: astore_1
    //   414: aload 4
    //   416: astore_3
    //   417: aload_3
    //   418: invokestatic 140	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   421: aload_1
    //   422: athrow
    //   423: astore_1
    //   424: goto -7 -> 417
    //   427: astore_1
    //   428: goto -34 -> 394
    //   431: astore_2
    //   432: goto -179 -> 253
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	435	0	this	Tailer
    //   7	239	1	localObject1	Object
    //   250	1	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   252	16	1	localObject2	Object
    //   321	1	1	localInterruptedException1	InterruptedException
    //   390	12	1	localException1	Exception
    //   413	9	1	localObject3	Object
    //   423	1	1	localObject4	Object
    //   427	1	1	localException2	Exception
    //   28	40	2	localObject5	Object
    //   88	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   106	136	2	localInterruptedException2	InterruptedException
    //   246	140	2	localObject6	Object
    //   431	1	2	localFileNotFoundException3	java.io.FileNotFoundException
    //   9	409	3	localObject7	Object
    //   11	404	4	localObject8	Object
    //   25	356	5	l1	long
    //   1	368	7	l2	long
    //   4	158	9	l3	long
    //   21	322	11	l4	long
    //   17	13	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   53	67	88	java/io/FileNotFoundException
    //   78	85	106	java/lang/InterruptedException
    //   219	233	250	java/io/FileNotFoundException
    //   307	314	321	java/lang/InterruptedException
    //   13	19	390	java/lang/Exception
    //   53	67	390	java/lang/Exception
    //   94	103	390	java/lang/Exception
    //   171	178	390	java/lang/Exception
    //   183	192	390	java/lang/Exception
    //   205	214	390	java/lang/Exception
    //   219	233	390	java/lang/Exception
    //   285	290	390	java/lang/Exception
    //   295	302	390	java/lang/Exception
    //   307	314	390	java/lang/Exception
    //   338	350	390	java/lang/Exception
    //   355	360	390	java/lang/Exception
    //   365	370	390	java/lang/Exception
    //   375	382	390	java/lang/Exception
    //   13	19	413	finally
    //   53	67	413	finally
    //   94	103	413	finally
    //   171	178	413	finally
    //   183	192	413	finally
    //   205	214	413	finally
    //   219	233	413	finally
    //   285	290	413	finally
    //   295	302	413	finally
    //   307	314	413	finally
    //   338	350	413	finally
    //   355	360	413	finally
    //   365	370	413	finally
    //   375	382	413	finally
    //   78	85	423	finally
    //   115	122	423	finally
    //   127	136	423	finally
    //   141	146	423	finally
    //   151	157	423	finally
    //   241	245	423	finally
    //   258	267	423	finally
    //   397	407	423	finally
    //   78	85	427	java/lang/Exception
    //   115	122	427	java/lang/Exception
    //   127	136	427	java/lang/Exception
    //   141	146	427	java/lang/Exception
    //   151	157	427	java/lang/Exception
    //   241	245	427	java/lang/Exception
    //   258	267	427	java/lang/Exception
    //   241	245	431	java/io/FileNotFoundException
  }
  
  public void stop()
  {
    run = false;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.Tailer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
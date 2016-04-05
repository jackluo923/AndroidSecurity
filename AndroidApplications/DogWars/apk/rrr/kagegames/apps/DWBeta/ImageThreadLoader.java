package kagegames.apps.DWBeta;

import android.graphics.Bitmap;
import android.os.Handler;
import java.lang.ref.SoftReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;

public class ImageThreadLoader
{
  private static final String TAG = "ImageThreadLoader";
  private final HashMap Cache;
  private final ArrayList Queue;
  private final Handler handler;
  private ImageThreadLoader.QueueRunner runner;
  private Thread thread;
  
  public ImageThreadLoader()
  {
    Object localObject = new java/util/HashMap;
    ((HashMap)localObject).<init>();
    Cache = ((HashMap)localObject);
    localObject = new java/util/ArrayList;
    ((ArrayList)localObject).<init>();
    Queue = ((ArrayList)localObject);
    localObject = new android/os/Handler;
    ((Handler)localObject).<init>();
    handler = ((Handler)localObject);
    localObject = new kagegames/apps/DWBeta/ImageThreadLoader$QueueRunner;
    ImageThreadLoader.QueueRunner localQueueRunner = null;
    ((ImageThreadLoader.QueueRunner)localObject).<init>(this, localQueueRunner);
    runner = ((ImageThreadLoader.QueueRunner)localObject);
    localObject = new java/lang/Thread;
    localQueueRunner = runner;
    ((Thread)localObject).<init>(localQueueRunner);
    thread = ((Thread)localObject);
  }
  
  public Bitmap loadImage(String paramString, ImageThreadLoader.ImageLoadedListener paramImageLoadedListener)
    throws MalformedURLException
  {
    ImageThreadLoader.QueueItem localQueueItem2 = null;
    HashMap localHashMap = Cache;
    boolean bool = localHashMap.containsKey(paramString);
    if (bool)
    {
      localObject2 = Cache;
      Object localObject1 = ((HashMap)localObject2).get(paramString);
      localObject1 = (SoftReference)localObject1;
      if (localObject1 != null)
      {
        this = ((SoftReference)localObject1).get();
        this = (Bitmap)this;
        localObject2 = this;
        return (Bitmap)localObject2;
      }
    }
    ImageThreadLoader.QueueItem localQueueItem1 = new kagegames/apps/DWBeta/ImageThreadLoader$QueueItem;
    localQueueItem1.<init>(this, localQueueItem2);
    Object localObject2 = new java/net/URL;
    ((URL)localObject2).<init>(paramString);
    url = ((URL)localObject2);
    listener = paramImageLoadedListener;
    localObject2 = Queue;
    ((ArrayList)localObject2).add(localQueueItem1);
    localObject2 = thread;
    localObject2 = ((Thread)localObject2).getState();
    Object localObject3 = Thread.State.NEW;
    if (localObject2 == localObject3)
    {
      localObject2 = thread;
      ((Thread)localObject2).start();
    }
    for (;;)
    {
      localObject2 = localQueueItem2;
      break;
      localObject2 = thread;
      localObject2 = ((Thread)localObject2).getState();
      localObject3 = Thread.State.TERMINATED;
      if (localObject2 == localObject3)
      {
        localObject2 = new java/lang/Thread;
        localObject3 = runner;
        ((Thread)localObject2).<init>((Runnable)localObject3);
        thread = ((Thread)localObject2);
        localObject2 = thread;
        ((Thread)localObject2).start();
      }
    }
  }
  
  /* Error */
  public static Bitmap readBitmapFromNetwork(URL paramURL)
  {
    // Byte code:
    //   0: nop
    //   1: aconst_null
    //   2: astore 6
    //   4: aconst_null
    //   5: astore_1
    //   6: aconst_null
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 1	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   12: astore 4
    //   14: aload 4
    //   16: invokevirtual 161	java/net/URLConnection:connect	()V
    //   19: aload 4
    //   21: invokevirtual 27	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   24: astore 6
    //   26: new 130	java/io/BufferedInputStream
    //   29: astore_2
    //   30: aload_2
    //   31: aload 6
    //   33: invokespecial 36	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   36: aload_2
    //   37: invokestatic 73	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   40: astore_3
    //   41: aload 6
    //   43: ifnull +8 -> 51
    //   46: aload 6
    //   48: invokevirtual 147	java/io/InputStream:close	()V
    //   51: aload_2
    //   52: ifnull +221 -> 273
    //   55: aload_2
    //   56: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   59: aload_2
    //   60: astore_1
    //   61: aload_3
    //   62: areturn
    //   63: astore 7
    //   65: aload 7
    //   67: astore 5
    //   69: ldc -111
    //   71: astore 7
    //   73: ldc 11
    //   75: astore 8
    //   77: aload 7
    //   79: aload 8
    //   81: aload 5
    //   83: invokestatic 12	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   86: pop
    //   87: aload 6
    //   89: ifnull +8 -> 97
    //   92: aload 6
    //   94: invokevirtual 147	java/io/InputStream:close	()V
    //   97: aload_1
    //   98: ifnull -37 -> 61
    //   101: aload_1
    //   102: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   105: goto -44 -> 61
    //   108: astore 7
    //   110: aload 7
    //   112: astore 5
    //   114: ldc -111
    //   116: astore 7
    //   118: ldc 104
    //   120: astore 8
    //   122: aload 7
    //   124: aload 8
    //   126: invokestatic 165	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   129: pop
    //   130: goto -69 -> 61
    //   133: astore 7
    //   135: aload 7
    //   137: astore 5
    //   139: ldc -111
    //   141: astore 7
    //   143: ldc 38
    //   145: astore 8
    //   147: aload 7
    //   149: aload 8
    //   151: aload 5
    //   153: invokestatic 12	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   156: pop
    //   157: aload 6
    //   159: ifnull +8 -> 167
    //   162: aload 6
    //   164: invokevirtual 147	java/io/InputStream:close	()V
    //   167: aload_1
    //   168: ifnull -107 -> 61
    //   171: aload_1
    //   172: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   175: goto -114 -> 61
    //   178: astore 7
    //   180: aload 7
    //   182: astore 5
    //   184: ldc -111
    //   186: astore 7
    //   188: ldc 104
    //   190: astore 8
    //   192: aload 7
    //   194: aload 8
    //   196: invokestatic 165	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   199: pop
    //   200: goto -139 -> 61
    //   203: astore 7
    //   205: aload 6
    //   207: ifnull +8 -> 215
    //   210: aload 6
    //   212: invokevirtual 147	java/io/InputStream:close	()V
    //   215: aload_1
    //   216: ifnull +7 -> 223
    //   219: aload_1
    //   220: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   223: aload 7
    //   225: athrow
    //   226: astore 8
    //   228: aload 8
    //   230: astore 5
    //   232: ldc -111
    //   234: astore 8
    //   236: ldc 104
    //   238: astore 9
    //   240: aload 8
    //   242: aload 9
    //   244: invokestatic 165	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   247: pop
    //   248: goto -25 -> 223
    //   251: astore 7
    //   253: aload 7
    //   255: astore 5
    //   257: ldc -111
    //   259: astore 7
    //   261: ldc 104
    //   263: astore 8
    //   265: aload 7
    //   267: aload 8
    //   269: invokestatic 165	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   272: pop
    //   273: aload_2
    //   274: astore_1
    //   275: goto -214 -> 61
    //   278: astore 7
    //   280: aload_2
    //   281: astore_1
    //   282: goto -77 -> 205
    //   285: astore 7
    //   287: aload 7
    //   289: astore 5
    //   291: aload_2
    //   292: astore_1
    //   293: goto -154 -> 139
    //   296: astore 7
    //   298: aload 7
    //   300: astore 5
    //   302: aload_2
    //   303: astore_1
    //   304: goto -235 -> 69
    //   307: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	paramURL	URL
    //   5	299	1	localObject1	Object
    //   29	274	2	localBufferedInputStream	java.io.BufferedInputStream
    //   7	55	3	localBitmap	Bitmap
    //   12	8	4	localURLConnection	java.net.URLConnection
    //   67	234	5	localObject2	Object
    //   2	209	6	localInputStream	java.io.InputStream
    //   63	3	7	localMalformedURLException1	MalformedURLException
    //   71	7	7	str1	String
    //   108	3	7	localIOException1	java.io.IOException
    //   116	7	7	str2	String
    //   133	3	7	localIOException2	java.io.IOException
    //   141	7	7	str3	String
    //   178	3	7	localIOException3	java.io.IOException
    //   186	7	7	str4	String
    //   203	21	7	localObject3	Object
    //   251	3	7	localIOException4	java.io.IOException
    //   259	7	7	str5	String
    //   278	1	7	localObject4	Object
    //   285	3	7	localIOException5	java.io.IOException
    //   296	3	7	localMalformedURLException2	MalformedURLException
    //   75	120	8	str6	String
    //   226	3	8	localIOException6	java.io.IOException
    //   234	34	8	str7	String
    //   238	5	9	str8	String
    // Exception table:
    //   from	to	target	type
    //   8	12	63	java/net/MalformedURLException
    //   14	19	63	java/net/MalformedURLException
    //   26	30	63	java/net/MalformedURLException
    //   92	97	108	java/io/IOException
    //   101	105	108	java/io/IOException
    //   8	12	133	java/io/IOException
    //   14	19	133	java/io/IOException
    //   26	30	133	java/io/IOException
    //   162	167	178	java/io/IOException
    //   171	175	178	java/io/IOException
    //   8	12	203	finally
    //   14	19	203	finally
    //   26	30	203	finally
    //   69	73	203	finally
    //   77	87	203	finally
    //   139	143	203	finally
    //   147	157	203	finally
    //   210	215	226	java/io/IOException
    //   219	223	226	java/io/IOException
    //   46	51	251	java/io/IOException
    //   55	59	251	java/io/IOException
    //   36	40	278	finally
    //   36	40	285	java/io/IOException
    //   36	40	296	java/net/MalformedURLException
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ImageThreadLoader
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
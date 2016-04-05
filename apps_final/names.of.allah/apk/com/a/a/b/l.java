package com.a.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import com.a.a.b.a.b;
import com.a.a.b.a.f;
import com.a.a.b.e.a;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.Reference;
import java.util.concurrent.atomic.AtomicBoolean;

final class l
  implements Runnable
{
  final String a;
  final Reference<ImageView> b;
  final d c;
  final com.a.a.b.a.d d;
  private final i e;
  private final k f;
  private final Handler g;
  private final g h;
  private final com.a.a.b.d.c i;
  private final com.a.a.b.d.c j;
  private final com.a.a.b.d.c k;
  private final com.a.a.b.b.d l;
  private final boolean m;
  private final String n;
  private final f o;
  private com.a.a.b.a.g p = com.a.a.b.a.g.a;
  private boolean q = false;
  
  public l(i parami, k paramk, Handler paramHandler)
  {
    e = parami;
    f = paramk;
    g = paramHandler;
    h = a;
    i = h.r;
    j = h.w;
    k = h.x;
    l = h.s;
    m = h.u;
    a = a;
    n = b;
    b = c;
    o = d;
    c = e;
    d = f;
  }
  
  private Bitmap a(String paramString)
  {
    Object localObject = d();
    if (localObject == null) {
      return null;
    }
    localObject = com.a.a.b.a.m.a((ImageView)localObject);
    paramString = new com.a.a.b.b.e(n, paramString, o, (com.a.a.b.a.m)localObject, h(), c);
    return l.a(paramString);
  }
  
  /* Error */
  private String a(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc -114
    //   3: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   10: getfield 148	com/a/a/b/g:d	I
    //   13: istore 4
    //   15: aload_0
    //   16: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   19: getfield 150	com/a/a/b/g:e	I
    //   22: istore 5
    //   24: iconst_0
    //   25: istore 6
    //   27: iload 4
    //   29: ifgt +8 -> 37
    //   32: iload 5
    //   34: ifle +14 -> 48
    //   37: aload_0
    //   38: aload_1
    //   39: iload 4
    //   41: iload 5
    //   43: invokespecial 153	com/a/a/b/l:a	(Ljava/io/File;II)Z
    //   46: istore 6
    //   48: iload 6
    //   50: ifne +55 -> 105
    //   53: aload_0
    //   54: invokespecial 129	com/a/a/b/l:h	()Lcom/a/a/b/d/c;
    //   57: aload_0
    //   58: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   61: aload_0
    //   62: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   65: getfield 158	com/a/a/b/d:j	Ljava/lang/Object;
    //   68: invokeinterface 163 3 0
    //   73: astore_2
    //   74: new 165	java/io/BufferedOutputStream
    //   77: dup
    //   78: new 167	java/io/FileOutputStream
    //   81: dup
    //   82: aload_1
    //   83: invokespecial 170	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   86: ldc -85
    //   88: invokespecial 174	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   91: astore_3
    //   92: aload_2
    //   93: aload_3
    //   94: invokestatic 179	com/a/a/c/c:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   97: aload_3
    //   98: invokestatic 182	com/a/a/c/c:a	(Ljava/io/Closeable;)V
    //   101: aload_2
    //   102: invokestatic 182	com/a/a/c/c:a	(Ljava/io/Closeable;)V
    //   105: aload_0
    //   106: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   109: getfield 185	com/a/a/b/g:q	Lcom/a/a/a/a/b;
    //   112: astore_2
    //   113: aload_0
    //   114: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   117: astore_3
    //   118: aload_2
    //   119: aload_1
    //   120: invokeinterface 189 2 0
    //   125: getstatic 194	com/a/a/b/d/d:c	Lcom/a/a/b/d/d;
    //   128: aload_1
    //   129: invokevirtual 200	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   132: invokevirtual 203	com/a/a/b/d/d:b	(Ljava/lang/String;)Ljava/lang/String;
    //   135: astore_1
    //   136: aload_1
    //   137: areturn
    //   138: astore_1
    //   139: aload_3
    //   140: invokestatic 182	com/a/a/c/c:a	(Ljava/io/Closeable;)V
    //   143: aload_1
    //   144: athrow
    //   145: astore_1
    //   146: aload_2
    //   147: invokestatic 182	com/a/a/c/c:a	(Ljava/io/Closeable;)V
    //   150: aload_1
    //   151: athrow
    //   152: astore_1
    //   153: aload_1
    //   154: invokestatic 208	com/a/a/c/d:a	(Ljava/lang/Throwable;)V
    //   157: aload_0
    //   158: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   161: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	l
    //   0	162	1	paramFile	File
    //   73	74	2	localObject1	Object
    //   91	49	3	localObject2	Object
    //   13	27	4	i1	int
    //   22	20	5	i2	int
    //   25	24	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   92	97	138	finally
    //   74	92	145	finally
    //   97	101	145	finally
    //   139	145	145	finally
    //   6	24	152	java/io/IOException
    //   37	48	152	java/io/IOException
    //   53	74	152	java/io/IOException
    //   101	105	152	java/io/IOException
    //   105	136	152	java/io/IOException
    //   146	152	152	java/io/IOException
  }
  
  private void a(b paramb, Throwable paramThrowable)
  {
    if (!Thread.interrupted()) {
      g.post(new m(this, paramb, paramThrowable));
    }
  }
  
  private boolean a()
  {
    synchronized (e.f)
    {
      if (???.get()) {
        b("ImageLoader is paused. Waiting...  [%s]");
      }
      try
      {
        ???.wait();
        b(".. Resume loading [%s]");
        return c();
      }
      catch (InterruptedException localInterruptedException)
      {
        com.a.a.c.d.d("Task was interrupted [%s]", new Object[] { n });
        return true;
      }
    }
  }
  
  private boolean a(File paramFile, int paramInt1, int paramInt2)
  {
    Object localObject1 = new f(paramInt1, paramInt2);
    Object localObject3 = new e();
    d locald = c;
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    l = l;
    m = m;
    n = n;
    g = com.a.a.b.a.e.c;
    localObject3 = ((e)localObject3).f();
    localObject1 = new com.a.a.b.b.e(n, a, (f)localObject1, com.a.a.b.a.m.a, h(), (d)localObject3);
    localObject1 = l.a((com.a.a.b.b.e)localObject1);
    if (localObject1 == null) {
      return false;
    }
    if (h.h != null)
    {
      b("Process image before cache on disc [%s]");
      localObject3 = h.h.a();
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        com.a.a.c.d.d("Bitmap processor for disc cache returned null [%s]", new Object[] { n });
        return false;
      }
    }
    paramFile = new BufferedOutputStream(new FileOutputStream(paramFile), 32768);
    try
    {
      boolean bool = ((Bitmap)localObject1).compress(h.f, h.g, paramFile);
      com.a.a.c.c.a(paramFile);
      ((Bitmap)localObject1).recycle();
      return bool;
    }
    finally
    {
      com.a.a.c.c.a(paramFile);
    }
  }
  
  private void b(String paramString)
  {
    if (m) {
      com.a.a.c.d.a(paramString, new Object[] { n });
    }
  }
  
  private boolean b()
  {
    if (c.i > 0) {}
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      i1 = c.i;
      String str = n;
      if (m) {
        com.a.a.c.d.a("Delay %d ms before loading...  [%s]", new Object[] { Integer.valueOf(i1), str });
      }
      try
      {
        Thread.sleep(c.i);
        return c();
      }
      catch (InterruptedException localInterruptedException)
      {
        com.a.a.c.d.d("Task was interrupted [%s]", new Object[] { n });
        return true;
      }
    }
    return false;
  }
  
  private boolean c()
  {
    boolean bool = false;
    Object localObject = d();
    if (localObject != null)
    {
      localObject = e.a((ImageView)localObject);
      if (n.equals(localObject)) {
        break label56;
      }
    }
    label56:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        b("ImageView is reused for another image. Task is cancelled. [%s]");
        g();
      }
      if (i1 != 0) {
        bool = true;
      }
      return bool;
    }
  }
  
  private ImageView d()
  {
    ImageView localImageView = (ImageView)b.get();
    if (localImageView == null)
    {
      q = true;
      b("ImageView was collected by GC. Task is cancelled. [%s]");
      g();
    }
    return localImageView;
  }
  
  private boolean e()
  {
    boolean bool = Thread.interrupted();
    if (bool) {
      b("Task was interrupted [%s]");
    }
    return bool;
  }
  
  /* Error */
  private Bitmap f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   4: getfield 185	com/a/a/b/g:q	Lcom/a/a/a/a/b;
    //   7: aload_0
    //   8: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   11: invokeinterface 382 2 0
    //   16: astore_1
    //   17: aload_1
    //   18: invokevirtual 386	java/io/File:getParentFile	()Ljava/io/File;
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull +23 -> 46
    //   26: aload_1
    //   27: astore 6
    //   29: aload_2
    //   30: invokevirtual 389	java/io/File:exists	()Z
    //   33: ifne +60 -> 93
    //   36: aload_1
    //   37: astore 6
    //   39: aload_2
    //   40: invokevirtual 392	java/io/File:mkdirs	()Z
    //   43: ifne +50 -> 93
    //   46: aload_0
    //   47: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   50: getfield 395	com/a/a/b/g:v	Lcom/a/a/a/a/b;
    //   53: aload_0
    //   54: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   57: invokeinterface 382 2 0
    //   62: astore_1
    //   63: aload_1
    //   64: invokevirtual 386	java/io/File:getParentFile	()Ljava/io/File;
    //   67: astore_2
    //   68: aload_1
    //   69: astore 6
    //   71: aload_2
    //   72: ifnull +21 -> 93
    //   75: aload_1
    //   76: astore 6
    //   78: aload_2
    //   79: invokevirtual 389	java/io/File:exists	()Z
    //   82: ifne +11 -> 93
    //   85: aload_2
    //   86: invokevirtual 392	java/io/File:mkdirs	()Z
    //   89: pop
    //   90: aload_1
    //   91: astore 6
    //   93: aload 6
    //   95: invokevirtual 389	java/io/File:exists	()Z
    //   98: ifeq +408 -> 506
    //   101: aload_0
    //   102: ldc_w 397
    //   105: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   108: aload_0
    //   109: getstatic 399	com/a/a/b/a/g:b	Lcom/a/a/b/a/g;
    //   112: putfield 48	com/a/a/b/l:p	Lcom/a/a/b/a/g;
    //   115: aload_0
    //   116: getstatic 194	com/a/a/b/d/d:c	Lcom/a/a/b/d/d;
    //   119: aload 6
    //   121: invokevirtual 200	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   124: invokevirtual 203	com/a/a/b/d/d:b	(Ljava/lang/String;)Ljava/lang/String;
    //   127: invokespecial 401	com/a/a/b/l:a	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   130: astore_2
    //   131: aload_2
    //   132: astore_1
    //   133: aload_2
    //   134: astore_3
    //   135: aload_2
    //   136: astore 4
    //   138: aload_2
    //   139: astore 5
    //   141: aload_0
    //   142: getfield 50	com/a/a/b/l:q	Z
    //   145: ifeq +5 -> 150
    //   148: aconst_null
    //   149: areturn
    //   150: aload_1
    //   151: ifnull +40 -> 191
    //   154: aload_1
    //   155: astore_3
    //   156: aload_1
    //   157: astore 4
    //   159: aload_1
    //   160: astore 5
    //   162: aload_1
    //   163: astore_2
    //   164: aload_1
    //   165: invokevirtual 405	android/graphics/Bitmap:getWidth	()I
    //   168: ifle +23 -> 191
    //   171: aload_1
    //   172: astore 7
    //   174: aload_1
    //   175: astore_3
    //   176: aload_1
    //   177: astore 4
    //   179: aload_1
    //   180: astore 5
    //   182: aload_1
    //   183: astore_2
    //   184: aload_1
    //   185: invokevirtual 408	android/graphics/Bitmap:getHeight	()I
    //   188: ifgt +212 -> 400
    //   191: aload_1
    //   192: astore_3
    //   193: aload_1
    //   194: astore 4
    //   196: aload_1
    //   197: astore 5
    //   199: aload_1
    //   200: astore_2
    //   201: aload_0
    //   202: ldc_w 410
    //   205: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   208: aload_1
    //   209: astore_3
    //   210: aload_1
    //   211: astore 4
    //   213: aload_1
    //   214: astore 5
    //   216: aload_1
    //   217: astore_2
    //   218: aload_0
    //   219: getstatic 46	com/a/a/b/a/g:a	Lcom/a/a/b/a/g;
    //   222: putfield 48	com/a/a/b/l:p	Lcom/a/a/b/a/g;
    //   225: aload_1
    //   226: astore_3
    //   227: aload_1
    //   228: astore 4
    //   230: aload_1
    //   231: astore 5
    //   233: aload_1
    //   234: astore_2
    //   235: aload_0
    //   236: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   239: getfield 275	com/a/a/b/d:f	Z
    //   242: ifeq +77 -> 319
    //   245: aload_1
    //   246: astore_3
    //   247: aload_1
    //   248: astore 4
    //   250: aload_1
    //   251: astore 5
    //   253: aload_1
    //   254: astore_2
    //   255: aload_0
    //   256: aload 6
    //   258: invokespecial 412	com/a/a/b/l:a	(Ljava/io/File;)Ljava/lang/String;
    //   261: astore 8
    //   263: aload_1
    //   264: astore 7
    //   266: aload_1
    //   267: astore_3
    //   268: aload_1
    //   269: astore 4
    //   271: aload_1
    //   272: astore 5
    //   274: aload_1
    //   275: astore_2
    //   276: aload_0
    //   277: invokespecial 245	com/a/a/b/l:c	()Z
    //   280: ifne +120 -> 400
    //   283: aload_1
    //   284: astore_3
    //   285: aload_1
    //   286: astore 4
    //   288: aload_1
    //   289: astore 5
    //   291: aload_1
    //   292: astore_2
    //   293: aload_0
    //   294: aload 8
    //   296: invokespecial 401	com/a/a/b/l:a	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   299: astore_1
    //   300: aload_1
    //   301: astore_3
    //   302: aload_1
    //   303: astore 4
    //   305: aload_1
    //   306: astore 5
    //   308: aload_1
    //   309: astore_2
    //   310: aload_0
    //   311: getfield 50	com/a/a/b/l:q	Z
    //   314: ifeq +24 -> 338
    //   317: aconst_null
    //   318: areturn
    //   319: aload_1
    //   320: astore_3
    //   321: aload_1
    //   322: astore 4
    //   324: aload_1
    //   325: astore 5
    //   327: aload_1
    //   328: astore_2
    //   329: aload_0
    //   330: getfield 94	com/a/a/b/l:a	Ljava/lang/String;
    //   333: astore 8
    //   335: goto -72 -> 263
    //   338: aload_1
    //   339: ifnull +40 -> 379
    //   342: aload_1
    //   343: astore_3
    //   344: aload_1
    //   345: astore 4
    //   347: aload_1
    //   348: astore 5
    //   350: aload_1
    //   351: astore_2
    //   352: aload_1
    //   353: invokevirtual 405	android/graphics/Bitmap:getWidth	()I
    //   356: ifle +23 -> 379
    //   359: aload_1
    //   360: astore 7
    //   362: aload_1
    //   363: astore_3
    //   364: aload_1
    //   365: astore 4
    //   367: aload_1
    //   368: astore 5
    //   370: aload_1
    //   371: astore_2
    //   372: aload_1
    //   373: invokevirtual 408	android/graphics/Bitmap:getHeight	()I
    //   376: ifgt +24 -> 400
    //   379: aload_1
    //   380: astore_3
    //   381: aload_1
    //   382: astore 4
    //   384: aload_1
    //   385: astore 5
    //   387: aload_1
    //   388: astore_2
    //   389: aload_0
    //   390: getstatic 417	com/a/a/b/a/b:b	Lcom/a/a/b/a/b;
    //   393: aconst_null
    //   394: invokespecial 419	com/a/a/b/l:a	(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    //   397: aload_1
    //   398: astore 7
    //   400: aload 7
    //   402: areturn
    //   403: astore_1
    //   404: aconst_null
    //   405: astore_1
    //   406: aload_0
    //   407: getstatic 421	com/a/a/b/a/b:c	Lcom/a/a/b/a/b;
    //   410: aconst_null
    //   411: invokespecial 419	com/a/a/b/l:a	(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    //   414: aload_1
    //   415: areturn
    //   416: astore_1
    //   417: aconst_null
    //   418: astore 5
    //   420: aload_1
    //   421: invokestatic 208	com/a/a/c/d:a	(Ljava/lang/Throwable;)V
    //   424: aload_0
    //   425: getstatic 423	com/a/a/b/a/b:a	Lcom/a/a/b/a/b;
    //   428: aload_1
    //   429: invokespecial 419	com/a/a/b/l:a	(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    //   432: aload 6
    //   434: invokevirtual 389	java/io/File:exists	()Z
    //   437: ifeq +9 -> 446
    //   440: aload 6
    //   442: invokevirtual 426	java/io/File:delete	()Z
    //   445: pop
    //   446: aload 5
    //   448: areturn
    //   449: astore_2
    //   450: aconst_null
    //   451: astore_1
    //   452: aload_2
    //   453: invokestatic 208	com/a/a/c/d:a	(Ljava/lang/Throwable;)V
    //   456: aload_0
    //   457: getstatic 428	com/a/a/b/a/b:d	Lcom/a/a/b/a/b;
    //   460: aload_2
    //   461: invokespecial 419	com/a/a/b/l:a	(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    //   464: aload_1
    //   465: areturn
    //   466: astore_2
    //   467: aconst_null
    //   468: astore_1
    //   469: aload_2
    //   470: invokestatic 208	com/a/a/c/d:a	(Ljava/lang/Throwable;)V
    //   473: aload_0
    //   474: getstatic 430	com/a/a/b/a/b:e	Lcom/a/a/b/a/b;
    //   477: aload_2
    //   478: invokespecial 419	com/a/a/b/l:a	(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    //   481: aload_1
    //   482: areturn
    //   483: astore_2
    //   484: aload_3
    //   485: astore_1
    //   486: goto -17 -> 469
    //   489: astore_2
    //   490: aload 4
    //   492: astore_1
    //   493: goto -41 -> 452
    //   496: astore_1
    //   497: goto -77 -> 420
    //   500: astore_1
    //   501: aload_2
    //   502: astore_1
    //   503: goto -97 -> 406
    //   506: aconst_null
    //   507: astore_1
    //   508: goto -358 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	511	0	this	l
    //   16	382	1	localObject1	Object
    //   403	1	1	localIllegalStateException1	IllegalStateException
    //   405	10	1	localBitmap	Bitmap
    //   416	13	1	localIOException1	java.io.IOException
    //   451	42	1	localObject2	Object
    //   496	1	1	localIOException2	java.io.IOException
    //   500	1	1	localIllegalStateException2	IllegalStateException
    //   502	6	1	localObject3	Object
    //   21	368	2	localObject4	Object
    //   449	12	2	localOutOfMemoryError1	OutOfMemoryError
    //   466	12	2	localThrowable1	Throwable
    //   483	1	2	localThrowable2	Throwable
    //   489	13	2	localOutOfMemoryError2	OutOfMemoryError
    //   134	351	3	localObject5	Object
    //   136	355	4	localObject6	Object
    //   139	308	5	localObject7	Object
    //   27	414	6	localObject8	Object
    //   172	229	7	localObject9	Object
    //   261	73	8	str	String
    // Exception table:
    //   from	to	target	type
    //   93	131	403	java/lang/IllegalStateException
    //   93	131	416	java/io/IOException
    //   93	131	449	java/lang/OutOfMemoryError
    //   93	131	466	java/lang/Throwable
    //   141	148	483	java/lang/Throwable
    //   164	171	483	java/lang/Throwable
    //   184	191	483	java/lang/Throwable
    //   201	208	483	java/lang/Throwable
    //   218	225	483	java/lang/Throwable
    //   235	245	483	java/lang/Throwable
    //   255	263	483	java/lang/Throwable
    //   276	283	483	java/lang/Throwable
    //   293	300	483	java/lang/Throwable
    //   310	317	483	java/lang/Throwable
    //   329	335	483	java/lang/Throwable
    //   352	359	483	java/lang/Throwable
    //   372	379	483	java/lang/Throwable
    //   389	397	483	java/lang/Throwable
    //   141	148	489	java/lang/OutOfMemoryError
    //   164	171	489	java/lang/OutOfMemoryError
    //   184	191	489	java/lang/OutOfMemoryError
    //   201	208	489	java/lang/OutOfMemoryError
    //   218	225	489	java/lang/OutOfMemoryError
    //   235	245	489	java/lang/OutOfMemoryError
    //   255	263	489	java/lang/OutOfMemoryError
    //   276	283	489	java/lang/OutOfMemoryError
    //   293	300	489	java/lang/OutOfMemoryError
    //   310	317	489	java/lang/OutOfMemoryError
    //   329	335	489	java/lang/OutOfMemoryError
    //   352	359	489	java/lang/OutOfMemoryError
    //   372	379	489	java/lang/OutOfMemoryError
    //   389	397	489	java/lang/OutOfMemoryError
    //   141	148	496	java/io/IOException
    //   164	171	496	java/io/IOException
    //   184	191	496	java/io/IOException
    //   201	208	496	java/io/IOException
    //   218	225	496	java/io/IOException
    //   235	245	496	java/io/IOException
    //   255	263	496	java/io/IOException
    //   276	283	496	java/io/IOException
    //   293	300	496	java/io/IOException
    //   310	317	496	java/io/IOException
    //   329	335	496	java/io/IOException
    //   352	359	496	java/io/IOException
    //   372	379	496	java/io/IOException
    //   389	397	496	java/io/IOException
    //   141	148	500	java/lang/IllegalStateException
    //   164	171	500	java/lang/IllegalStateException
    //   184	191	500	java/lang/IllegalStateException
    //   201	208	500	java/lang/IllegalStateException
    //   218	225	500	java/lang/IllegalStateException
    //   235	245	500	java/lang/IllegalStateException
    //   255	263	500	java/lang/IllegalStateException
    //   276	283	500	java/lang/IllegalStateException
    //   293	300	500	java/lang/IllegalStateException
    //   310	317	500	java/lang/IllegalStateException
    //   329	335	500	java/lang/IllegalStateException
    //   352	359	500	java/lang/IllegalStateException
    //   372	379	500	java/lang/IllegalStateException
    //   389	397	500	java/lang/IllegalStateException
  }
  
  private void g()
  {
    if (!Thread.interrupted()) {
      g.post(new n(this));
    }
  }
  
  private com.a.a.b.d.c h()
  {
    if (e.g.get()) {
      return j;
    }
    if (e.h.get()) {
      return k;
    }
    return i;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: invokespecial 442	com/a/a/b/l:a	()Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: aload_0
    //   12: invokespecial 444	com/a/a/b/l:b	()Z
    //   15: ifne -5 -> 10
    //   18: aload_0
    //   19: getfield 54	com/a/a/b/l:f	Lcom/a/a/b/k;
    //   22: getfield 447	com/a/a/b/k:g	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_3
    //   26: aload_0
    //   27: ldc_w 449
    //   30: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   33: aload_3
    //   34: invokevirtual 454	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   37: ifeq +10 -> 47
    //   40: aload_0
    //   41: ldc_w 456
    //   44: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   47: aload_3
    //   48: invokevirtual 459	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   51: aload_0
    //   52: invokespecial 245	com/a/a/b/l:c	()Z
    //   55: istore 5
    //   57: iload 5
    //   59: ifeq +8 -> 67
    //   62: aload_3
    //   63: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   66: return
    //   67: aload_0
    //   68: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   71: getfield 465	com/a/a/b/g:p	Lcom/a/a/a/b/c;
    //   74: aload_0
    //   75: getfield 98	com/a/a/b/l:n	Ljava/lang/String;
    //   78: invokeinterface 470 2 0
    //   83: checkcast 330	android/graphics/Bitmap
    //   86: astore_2
    //   87: aload_2
    //   88: ifnonnull +280 -> 368
    //   91: aload_0
    //   92: invokespecial 472	com/a/a/b/l:f	()Landroid/graphics/Bitmap;
    //   95: astore_1
    //   96: aload_0
    //   97: getfield 50	com/a/a/b/l:q	Z
    //   100: istore 5
    //   102: iload 5
    //   104: ifeq +8 -> 112
    //   107: aload_3
    //   108: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   111: return
    //   112: aload_1
    //   113: ifnonnull +8 -> 121
    //   116: aload_3
    //   117: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   120: return
    //   121: aload_0
    //   122: invokespecial 245	com/a/a/b/l:c	()Z
    //   125: ifne +14 -> 139
    //   128: aload_0
    //   129: invokespecial 474	com/a/a/b/l:e	()Z
    //   132: istore 5
    //   134: iload 5
    //   136: ifeq +8 -> 144
    //   139: aload_3
    //   140: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   143: return
    //   144: aload_0
    //   145: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   148: getfield 291	com/a/a/b/d:k	Lcom/a/a/b/e/a;
    //   151: ifnull +211 -> 362
    //   154: iload 4
    //   156: ifeq +41 -> 197
    //   159: aload_0
    //   160: ldc_w 476
    //   163: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   166: aload_0
    //   167: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   170: getfield 291	com/a/a/b/d:k	Lcom/a/a/b/e/a;
    //   173: invokeinterface 321 1 0
    //   178: astore_2
    //   179: aload_2
    //   180: astore_1
    //   181: aload_2
    //   182: ifnonnull +15 -> 197
    //   185: ldc_w 478
    //   188: iconst_0
    //   189: anewarray 4	java/lang/Object
    //   192: invokestatic 250	com/a/a/c/d:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   195: aload_2
    //   196: astore_1
    //   197: aload_1
    //   198: astore_2
    //   199: aload_1
    //   200: ifnull +42 -> 242
    //   203: aload_1
    //   204: astore_2
    //   205: aload_0
    //   206: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   209: getfield 272	com/a/a/b/d:e	Z
    //   212: ifeq +30 -> 242
    //   215: aload_0
    //   216: ldc_w 480
    //   219: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   222: aload_0
    //   223: getfield 62	com/a/a/b/l:h	Lcom/a/a/b/g;
    //   226: getfield 465	com/a/a/b/g:p	Lcom/a/a/a/b/c;
    //   229: aload_0
    //   230: getfield 98	com/a/a/b/l:n	Ljava/lang/String;
    //   233: aload_1
    //   234: invokeinterface 483 3 0
    //   239: pop
    //   240: aload_1
    //   241: astore_2
    //   242: aload_2
    //   243: astore_1
    //   244: aload_2
    //   245: ifnull +60 -> 305
    //   248: aload_2
    //   249: astore_1
    //   250: aload_0
    //   251: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   254: invokevirtual 484	com/a/a/b/d:a	()Z
    //   257: ifeq +48 -> 305
    //   260: aload_0
    //   261: ldc_w 486
    //   264: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   267: aload_0
    //   268: getfield 110	com/a/a/b/l:c	Lcom/a/a/b/d;
    //   271: getfield 294	com/a/a/b/d:l	Lcom/a/a/b/e/a;
    //   274: invokeinterface 321 1 0
    //   279: astore_2
    //   280: aload_2
    //   281: astore_1
    //   282: aload_2
    //   283: ifnonnull +22 -> 305
    //   286: ldc_w 478
    //   289: iconst_1
    //   290: anewarray 4	java/lang/Object
    //   293: dup
    //   294: iconst_0
    //   295: aload_0
    //   296: getfield 98	com/a/a/b/l:n	Ljava/lang/String;
    //   299: aastore
    //   300: invokestatic 250	com/a/a/c/d:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   303: aload_2
    //   304: astore_1
    //   305: aload_3
    //   306: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   309: aload_0
    //   310: invokespecial 245	com/a/a/b/l:c	()Z
    //   313: ifne -303 -> 10
    //   316: aload_0
    //   317: invokespecial 474	com/a/a/b/l:e	()Z
    //   320: ifne -310 -> 10
    //   323: new 488	com/a/a/b/c
    //   326: dup
    //   327: aload_1
    //   328: aload_0
    //   329: getfield 54	com/a/a/b/l:f	Lcom/a/a/b/k;
    //   332: aload_0
    //   333: getfield 52	com/a/a/b/l:e	Lcom/a/a/b/i;
    //   336: aload_0
    //   337: getfield 48	com/a/a/b/l:p	Lcom/a/a/b/a/g;
    //   340: invokespecial 491	com/a/a/b/c:<init>	(Landroid/graphics/Bitmap;Lcom/a/a/b/k;Lcom/a/a/b/i;Lcom/a/a/b/a/g;)V
    //   343: astore_1
    //   344: aload_1
    //   345: aload_0
    //   346: getfield 89	com/a/a/b/l:m	Z
    //   349: putfield 493	com/a/a/b/c:a	Z
    //   352: aload_0
    //   353: getfield 56	com/a/a/b/l:g	Landroid/os/Handler;
    //   356: aload_1
    //   357: invokevirtual 226	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   360: pop
    //   361: return
    //   362: iconst_0
    //   363: istore 4
    //   365: goto -211 -> 154
    //   368: aload_0
    //   369: getstatic 495	com/a/a/b/a/g:c	Lcom/a/a/b/a/g;
    //   372: putfield 48	com/a/a/b/l:p	Lcom/a/a/b/a/g;
    //   375: aload_0
    //   376: ldc_w 497
    //   379: invokespecial 145	com/a/a/b/l:b	(Ljava/lang/String;)V
    //   382: goto -140 -> 242
    //   385: astore_1
    //   386: aload_3
    //   387: invokevirtual 462	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   390: aload_1
    //   391: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	392	0	this	l
    //   95	262	1	localObject1	Object
    //   385	6	1	localObject2	Object
    //   86	218	2	localObject3	Object
    //   25	362	3	localReentrantLock	java.util.concurrent.locks.ReentrantLock
    //   1	363	4	i1	int
    //   55	80	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   51	57	385	finally
    //   67	87	385	finally
    //   91	102	385	finally
    //   121	134	385	finally
    //   144	154	385	finally
    //   159	179	385	finally
    //   185	195	385	finally
    //   205	240	385	finally
    //   250	280	385	finally
    //   286	303	385	finally
    //   368	382	385	finally
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
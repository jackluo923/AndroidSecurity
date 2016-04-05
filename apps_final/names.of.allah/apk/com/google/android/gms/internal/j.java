package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class j
  extends i
{
  private static Method jS;
  private static Method jT;
  private static Method jU;
  private static Method jV;
  private static Method jW;
  private static Method jX;
  private static String jY;
  private static p jZ;
  static boolean ka = false;
  private static long startTime = 0L;
  
  protected j(Context paramContext, n paramn, o paramo)
  {
    super(paramContext, paramn, paramo);
  }
  
  static String a(Context paramContext, n paramn)
  {
    if (jU == null) {
      throw new j.a();
    }
    try
    {
      paramContext = (ByteBuffer)jU.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new j.a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new j.a(paramContext);
      paramContext = paramn.a(paramContext.array(), true);
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new j.a(paramContext);
    }
  }
  
  static ArrayList<Long> a(MotionEvent paramMotionEvent, DisplayMetrics paramDisplayMetrics)
  {
    if ((jV == null) || (paramMotionEvent == null)) {
      throw new j.a();
    }
    try
    {
      paramMotionEvent = (ArrayList)jV.invoke(null, new Object[] { paramMotionEvent, paramDisplayMetrics });
      return paramMotionEvent;
    }
    catch (IllegalAccessException paramMotionEvent)
    {
      throw new j.a(paramMotionEvent);
    }
    catch (InvocationTargetException paramMotionEvent)
    {
      throw new j.a(paramMotionEvent);
    }
  }
  
  /* Error */
  protected static void a(String paramString, Context paramContext, n paramn)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/google/android/gms/internal/j:ka	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +36 -> 44
    //   11: new 76	com/google/android/gms/internal/p
    //   14: dup
    //   15: aload_2
    //   16: aconst_null
    //   17: invokespecial 79	com/google/android/gms/internal/p:<init>	(Lcom/google/android/gms/internal/n;Ljava/security/SecureRandom;)V
    //   20: putstatic 81	com/google/android/gms/internal/j:jZ	Lcom/google/android/gms/internal/p;
    //   23: aload_0
    //   24: putstatic 83	com/google/android/gms/internal/j:jY	Ljava/lang/String;
    //   27: aload_1
    //   28: invokestatic 87	com/google/android/gms/internal/j:e	(Landroid/content/Context;)V
    //   31: invokestatic 91	com/google/android/gms/internal/j:w	()Ljava/lang/Long;
    //   34: invokevirtual 97	java/lang/Long:longValue	()J
    //   37: putstatic 23	com/google/android/gms/internal/j:startTime	J
    //   40: iconst_1
    //   41: putstatic 25	com/google/android/gms/internal/j:ka	Z
    //   44: ldc 2
    //   46: monitorexit
    //   47: return
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    //   54: astore_0
    //   55: goto -11 -> 44
    //   58: astore_0
    //   59: goto -15 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	paramString	String
    //   0	62	1	paramContext	Context
    //   0	62	2	paramn	n
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	7	48	finally
    //   11	44	48	finally
    //   11	44	54	java/lang/UnsupportedOperationException
    //   11	44	58	com/google/android/gms/internal/j$a
  }
  
  static String b(Context paramContext, n paramn)
  {
    if (jX == null) {
      throw new j.a();
    }
    try
    {
      paramContext = (ByteBuffer)jX.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new j.a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new j.a(paramContext);
      paramContext = paramn.a(paramContext.array(), true);
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new j.a(paramContext);
    }
  }
  
  private static String b(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      paramArrayOfByte = new String(jZ.c(paramArrayOfByte, paramString), "UTF-8");
      return paramArrayOfByte;
    }
    catch (p.a paramArrayOfByte)
    {
      throw new j.a(paramArrayOfByte);
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new j.a(paramArrayOfByte);
    }
  }
  
  static String d(Context paramContext)
  {
    if (jW == null) {
      throw new j.a();
    }
    try
    {
      paramContext = (String)jW.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new j.a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new j.a(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new j.a(paramContext);
    }
    return paramContext;
  }
  
  private static void e(Context paramContext)
  {
    try
    {
      arrayOfByte = jZ.b(r.getKey());
      localObject1 = jZ.c(arrayOfByte, r.A());
      localFile2 = paramContext.getCacheDir();
      localFile1 = localFile2;
      if (localFile2 == null)
      {
        localFile2 = paramContext.getDir("dex", 0);
        localFile1 = localFile2;
        if (localFile2 == null) {
          throw new j.a();
        }
      }
    }
    catch (FileNotFoundException paramContext)
    {
      byte[] arrayOfByte;
      File localFile1;
      throw new j.a(paramContext);
      File localFile2 = File.createTempFile("ads", ".jar", localFile1);
      Object localObject2 = new FileOutputStream(localFile2);
      ((FileOutputStream)localObject2).write((byte[])localObject1, 0, localObject1.length);
      ((FileOutputStream)localObject2).close();
      Object localObject3 = new DexClassLoader(localFile2.getAbsolutePath(), localFile1.getAbsolutePath(), null, paramContext.getClassLoader());
      paramContext = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.B()));
      Object localObject1 = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.H()));
      localObject2 = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.F()));
      Class localClass1 = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.L()));
      Class localClass2 = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.D()));
      localObject3 = ((DexClassLoader)localObject3).loadClass(b(arrayOfByte, r.J()));
      jS = paramContext.getMethod(b(arrayOfByte, r.C()), new Class[0]);
      jT = ((Class)localObject1).getMethod(b(arrayOfByte, r.I()), new Class[0]);
      jU = ((Class)localObject2).getMethod(b(arrayOfByte, r.G()), new Class[] { Context.class });
      jV = localClass1.getMethod(b(arrayOfByte, r.M()), new Class[] { MotionEvent.class, DisplayMetrics.class });
      jW = localClass2.getMethod(b(arrayOfByte, r.E()), new Class[] { Context.class });
      jX = ((Class)localObject3).getMethod(b(arrayOfByte, r.K()), new Class[] { Context.class });
      paramContext = localFile2.getName();
      localFile2.delete();
      new File(localFile1, paramContext.replace(".jar", ".dex")).delete();
      return;
    }
    catch (IOException paramContext)
    {
      throw new j.a(paramContext);
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new j.a(paramContext);
    }
    catch (p.a paramContext)
    {
      throw new j.a(paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      throw new j.a(paramContext);
    }
    catch (NullPointerException paramContext)
    {
      throw new j.a(paramContext);
    }
  }
  
  static String v()
  {
    if (jY == null) {
      throw new j.a();
    }
    return jY;
  }
  
  static Long w()
  {
    if (jS == null) {
      throw new j.a();
    }
    try
    {
      Long localLong = (Long)jS.invoke(null, new Object[0]);
      return localLong;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new j.a(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new j.a(localInvocationTargetException);
    }
  }
  
  static String x()
  {
    if (jT == null) {
      throw new j.a();
    }
    try
    {
      String str = (String)jT.invoke(null, new Object[0]);
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new j.a(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new j.a(localInvocationTargetException);
    }
  }
  
  /* Error */
  protected void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokestatic 263	com/google/android/gms/internal/j:x	()Ljava/lang/String;
    //   5: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_2
    //   10: invokestatic 268	com/google/android/gms/internal/j:v	()Ljava/lang/String;
    //   13: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   16: aload_0
    //   17: bipush 25
    //   19: invokestatic 91	com/google/android/gms/internal/j:w	()Ljava/lang/Long;
    //   22: invokevirtual 97	java/lang/Long:longValue	()J
    //   25: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   28: aload_0
    //   29: bipush 24
    //   31: aload_1
    //   32: invokestatic 273	com/google/android/gms/internal/j:d	(Landroid/content/Context;)Ljava/lang/String;
    //   35: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   38: return
    //   39: astore_1
    //   40: return
    //   41: astore_1
    //   42: return
    //   43: astore_2
    //   44: goto -16 -> 28
    //   47: astore_2
    //   48: goto -32 -> 16
    //   51: astore_2
    //   52: goto -44 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	j
    //   0	55	1	paramContext	Context
    //   43	1	2	locala1	j.a
    //   47	1	2	locala2	j.a
    //   51	1	2	locala3	j.a
    // Exception table:
    //   from	to	target	type
    //   0	8	39	java/io/IOException
    //   8	16	39	java/io/IOException
    //   16	28	39	java/io/IOException
    //   28	38	39	java/io/IOException
    //   28	38	41	com/google/android/gms/internal/j$a
    //   16	28	43	com/google/android/gms/internal/j$a
    //   8	16	47	com/google/android/gms/internal/j$a
    //   0	8	51	com/google/android/gms/internal/j$a
  }
  
  /* Error */
  protected void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_2
    //   2: invokestatic 268	com/google/android/gms/internal/j:v	()Ljava/lang/String;
    //   5: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_1
    //   10: invokestatic 263	com/google/android/gms/internal/j:x	()Ljava/lang/String;
    //   13: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   16: invokestatic 91	com/google/android/gms/internal/j:w	()Ljava/lang/Long;
    //   19: invokevirtual 97	java/lang/Long:longValue	()J
    //   22: lstore_3
    //   23: aload_0
    //   24: bipush 25
    //   26: lload_3
    //   27: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   30: getstatic 23	com/google/android/gms/internal/j:startTime	J
    //   33: lconst_0
    //   34: lcmp
    //   35: ifeq +23 -> 58
    //   38: aload_0
    //   39: bipush 17
    //   41: lload_3
    //   42: getstatic 23	com/google/android/gms/internal/j:startTime	J
    //   45: lsub
    //   46: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   49: aload_0
    //   50: bipush 23
    //   52: getstatic 23	com/google/android/gms/internal/j:startTime	J
    //   55: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   58: aload_0
    //   59: getfield 277	com/google/android/gms/internal/j:jO	Landroid/view/MotionEvent;
    //   62: aload_0
    //   63: getfield 281	com/google/android/gms/internal/j:jP	Landroid/util/DisplayMetrics;
    //   66: invokestatic 283	com/google/android/gms/internal/j:a	(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    //   69: astore_2
    //   70: aload_0
    //   71: bipush 14
    //   73: aload_2
    //   74: iconst_0
    //   75: invokevirtual 287	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   78: checkcast 93	java/lang/Long
    //   81: invokevirtual 97	java/lang/Long:longValue	()J
    //   84: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   87: aload_0
    //   88: bipush 15
    //   90: aload_2
    //   91: iconst_1
    //   92: invokevirtual 287	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   95: checkcast 93	java/lang/Long
    //   98: invokevirtual 97	java/lang/Long:longValue	()J
    //   101: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   104: aload_2
    //   105: invokevirtual 291	java/util/ArrayList:size	()I
    //   108: iconst_3
    //   109: if_icmplt +20 -> 129
    //   112: aload_0
    //   113: bipush 16
    //   115: aload_2
    //   116: iconst_2
    //   117: invokevirtual 287	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   120: checkcast 93	java/lang/Long
    //   123: invokevirtual 97	java/lang/Long:longValue	()J
    //   126: invokevirtual 271	com/google/android/gms/internal/j:a	(IJ)V
    //   129: aload_0
    //   130: bipush 27
    //   132: aload_1
    //   133: aload_0
    //   134: getfield 295	com/google/android/gms/internal/j:jQ	Lcom/google/android/gms/internal/n;
    //   137: invokestatic 297	com/google/android/gms/internal/j:a	(Landroid/content/Context;Lcom/google/android/gms/internal/n;)Ljava/lang/String;
    //   140: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   143: aload_0
    //   144: bipush 29
    //   146: aload_1
    //   147: aload_0
    //   148: getfield 295	com/google/android/gms/internal/j:jQ	Lcom/google/android/gms/internal/n;
    //   151: invokestatic 299	com/google/android/gms/internal/j:b	(Landroid/content/Context;Lcom/google/android/gms/internal/n;)Ljava/lang/String;
    //   154: invokevirtual 266	com/google/android/gms/internal/j:a	(ILjava/lang/String;)V
    //   157: return
    //   158: astore_1
    //   159: return
    //   160: astore_1
    //   161: return
    //   162: astore_2
    //   163: goto -20 -> 143
    //   166: astore_2
    //   167: goto -38 -> 129
    //   170: astore_2
    //   171: goto -113 -> 58
    //   174: astore_2
    //   175: goto -159 -> 16
    //   178: astore_2
    //   179: goto -171 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	j
    //   0	182	1	paramContext	Context
    //   69	47	2	localArrayList	ArrayList
    //   162	1	2	locala1	j.a
    //   166	1	2	locala2	j.a
    //   170	1	2	locala3	j.a
    //   174	1	2	locala4	j.a
    //   178	1	2	locala5	j.a
    //   22	20	3	l	long
    // Exception table:
    //   from	to	target	type
    //   0	8	158	java/io/IOException
    //   8	16	158	java/io/IOException
    //   16	58	158	java/io/IOException
    //   58	129	158	java/io/IOException
    //   129	143	158	java/io/IOException
    //   143	157	158	java/io/IOException
    //   143	157	160	com/google/android/gms/internal/j$a
    //   129	143	162	com/google/android/gms/internal/j$a
    //   58	129	166	com/google/android/gms/internal/j$a
    //   16	58	170	com/google/android/gms/internal/j$a
    //   8	16	174	com/google/android/gms/internal/j$a
    //   0	8	178	com/google/android/gms/internal/j$a
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.b.a.a;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class k
{
  static final int a = 11;
  static final int b = 12;
  static final int c = 16;
  static final int d = 26;
  public static final int[] e = new int[0];
  public static final long[] f = new long[0];
  public static final float[] g = new float[0];
  public static final double[] h = new double[0];
  public static final boolean[] i = new boolean[0];
  public static final String[] j = new String[0];
  public static final byte[][] k = new byte[0][];
  public static final byte[] l = new byte[0];
  public static final Integer[] m = new Integer[0];
  public static final Long[] n = new Long[0];
  public static final Float[] o = new Float[0];
  public static final Double[] p = new Double[0];
  public static final Boolean[] q = new Boolean[0];
  
  static int a(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 << 3 | paramInt2;
  }
  
  public static final int a(a parama, int paramInt)
  {
    int i1 = 1;
    int i3 = parama.i();
    parama.b(paramInt);
    if (e == Integer.MAX_VALUE) {}
    for (int i2 = -1;; i2 = e - i2)
    {
      if ((i2 <= 0) || (parama.a() != paramInt)) {
        break label65;
      }
      parama.b(paramInt);
      i1 += 1;
      break;
      i2 = d;
    }
    label65:
    if (i3 > d - b) {
      throw new IllegalArgumentException("Position " + i3 + " is beyond current " + (d - b));
    }
    if (i3 < 0) {
      throw new IllegalArgumentException("Bad position " + i3);
    }
    d = (b + i3);
    return i1;
  }
  
  public static int a(List<j> paramList)
  {
    if (paramList == null) {
      return 0;
    }
    paramList = paramList.iterator();
    j localj;
    int i2;
    for (int i1 = 0; paramList.hasNext(); i1 = b.length + (i1 + i2))
    {
      localj = (j)paramList.next();
      i2 = b.f(a);
    }
    return i1;
  }
  
  private static j a(int paramInt, Object paramObject)
  {
    Object localObject = paramObject.getClass();
    if (localObject == String.class) {}
    for (;;)
    {
      try
      {
        localObject = (String)paramObject;
        paramObject = new byte[b.b((String)localObject)];
        b.a((byte[])paramObject, 0, paramObject.length).a((String)localObject);
        paramInt = paramInt << 3 | 0x2;
        return new j(paramInt, (byte[])paramObject);
      }
      catch (IOException paramObject)
      {
        b localb;
        long l1;
        int i1;
        throw new IllegalArgumentException((Throwable)paramObject);
      }
      if (localObject == Integer.class)
      {
        localObject = (Integer)paramObject;
        paramObject = new byte[b.b(((Integer)localObject).intValue())];
        b.a((byte[])paramObject, 0, paramObject.length).a(((Integer)localObject).intValue());
        paramInt = paramInt << 3 | 0x0;
      }
      else if (localObject == Long.class)
      {
        localObject = (Long)paramObject;
        paramObject = new byte[b.a(((Long)localObject).longValue())];
        b.a((byte[])paramObject, 0, paramObject.length).b(((Long)localObject).longValue());
        paramInt = paramInt << 3 | 0x0;
      }
      else if (localObject == Boolean.class)
      {
        localObject = (Boolean)paramObject;
        ((Boolean)localObject).booleanValue();
        paramObject = new byte[1];
        b.a((byte[])paramObject, 0, paramObject.length).a(((Boolean)localObject).booleanValue());
        paramInt = paramInt << 3 | 0x0;
      }
      else if (localObject == Float.class)
      {
        localObject = (Float)paramObject;
        ((Float)localObject).floatValue();
        paramObject = new byte[4];
        b.a((byte[])paramObject, 0, paramObject.length).a(((Float)localObject).floatValue());
        paramInt = paramInt << 3 | 0x5;
      }
      else if (localObject == Double.class)
      {
        localObject = (Double)paramObject;
        ((Double)localObject).doubleValue();
        paramObject = new byte[8];
        localb = b.a((byte[])paramObject, 0, paramObject.length);
        l1 = Double.doubleToLongBits(((Double)localObject).doubleValue());
        localb.c((int)l1 & 0xFF);
        localb.c((int)(l1 >> 8) & 0xFF);
        localb.c((int)(l1 >> 16) & 0xFF);
        localb.c((int)(l1 >> 24) & 0xFF);
        localb.c((int)(l1 >> 32) & 0xFF);
        localb.c((int)(l1 >> 40) & 0xFF);
        localb.c((int)(l1 >> 48) & 0xFF);
        localb.c((int)(l1 >> 56) & 0xFF);
        paramInt = paramInt << 3 | 0x1;
      }
      else if (localObject == byte[].class)
      {
        localObject = (byte[])paramObject;
        paramObject = new byte[b.f(localObject.length) + localObject.length];
        localb = b.a((byte[])paramObject, 0, paramObject.length);
        localb.e(localObject.length);
        localb.a((byte[])localObject);
        paramInt = paramInt << 3 | 0x2;
      }
      else
      {
        if (!h.class.isAssignableFrom((Class)localObject)) {
          continue;
        }
        localObject = (h)paramObject;
        i1 = ((h)localObject).getSerializedSize();
        paramObject = new byte[b.f(i1) + i1];
        localb = b.a((byte[])paramObject, 0, paramObject.length);
        localb.e(i1);
        localb.a(h.toByteArray((h)localObject));
        paramInt = paramInt << 3 | 0x2;
      }
    }
    throw new IllegalArgumentException("Unhandled extension field type: " + localObject);
  }
  
  public static <T> T a(e<T> parame, List<j> paramList)
  {
    if (paramList == null) {
      return null;
    }
    Object localObject = new ArrayList();
    paramList = paramList.iterator();
    j localj;
    while (paramList.hasNext())
    {
      localj = (j)paramList.next();
      if (a >>> 3 == a) {
        ((List)localObject).add(localj);
      }
    }
    if (((List)localObject).isEmpty()) {
      return null;
    }
    if (b)
    {
      paramList = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        localj = (j)((Iterator)localObject).next();
        paramList.add(a(c, b));
      }
      return (T)d.cast(paramList);
    }
    paramList = (j)((List)localObject).get(((List)localObject).size() - 1);
    return (T)a(c, b);
  }
  
  /* Error */
  private static <T> T a(Class<T> paramClass, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: ifne +5 -> 7
    //   5: aconst_null
    //   6: areturn
    //   7: aload_1
    //   8: iconst_0
    //   9: aload_1
    //   10: arraylength
    //   11: invokestatic 291	com/google/b/a/a/a:a	([BII)Lcom/google/b/a/a/a;
    //   14: astore_2
    //   15: aload_0
    //   16: ldc 57
    //   18: if_acmpne +12 -> 30
    //   21: aload_0
    //   22: aload_2
    //   23: invokevirtual 293	com/google/b/a/a/a:e	()Ljava/lang/String;
    //   26: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   29: areturn
    //   30: aload_0
    //   31: ldc 66
    //   33: if_acmpne +15 -> 48
    //   36: aload_0
    //   37: aload_2
    //   38: invokevirtual 295	com/google/b/a/a/a:f	()I
    //   41: invokestatic 299	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   44: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   47: areturn
    //   48: aload_0
    //   49: ldc 70
    //   51: if_acmpne +15 -> 66
    //   54: aload_0
    //   55: aload_2
    //   56: invokevirtual 301	com/google/b/a/a/a:b	()J
    //   59: invokestatic 304	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   62: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   65: areturn
    //   66: aload_0
    //   67: ldc 82
    //   69: if_acmpne +15 -> 84
    //   72: aload_0
    //   73: aload_2
    //   74: invokevirtual 306	com/google/b/a/a/a:d	()Z
    //   77: invokestatic 309	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   80: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   83: areturn
    //   84: aload_0
    //   85: ldc 74
    //   87: if_acmpne +18 -> 105
    //   90: aload_0
    //   91: aload_2
    //   92: invokevirtual 311	com/google/b/a/a/a:g	()I
    //   95: invokestatic 315	java/lang/Float:intBitsToFloat	(I)F
    //   98: invokestatic 318	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   101: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   104: areturn
    //   105: aload_0
    //   106: ldc 78
    //   108: if_acmpne +18 -> 126
    //   111: aload_0
    //   112: aload_2
    //   113: invokevirtual 320	com/google/b/a/a/a:h	()J
    //   116: invokestatic 324	java/lang/Double:longBitsToDouble	(J)D
    //   119: invokestatic 327	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   122: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   125: areturn
    //   126: aload_0
    //   127: ldc 60
    //   129: if_acmpne +68 -> 197
    //   132: aload_2
    //   133: invokevirtual 295	com/google/b/a/a/a:f	()I
    //   136: istore_3
    //   137: iload_3
    //   138: aload_2
    //   139: getfield 328	com/google/b/a/a/a:c	I
    //   142: aload_2
    //   143: getfield 102	com/google/b/a/a/a:d	I
    //   146: isub
    //   147: if_icmpgt +41 -> 188
    //   150: iload_3
    //   151: ifle +37 -> 188
    //   154: iload_3
    //   155: newarray <illegal type>
    //   157: astore_1
    //   158: aload_2
    //   159: getfield 330	com/google/b/a/a/a:a	[B
    //   162: aload_2
    //   163: getfield 102	com/google/b/a/a/a:d	I
    //   166: aload_1
    //   167: iconst_0
    //   168: iload_3
    //   169: invokestatic 336	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   172: aload_2
    //   173: iload_3
    //   174: aload_2
    //   175: getfield 102	com/google/b/a/a/a:d	I
    //   178: iadd
    //   179: putfield 102	com/google/b/a/a/a:d	I
    //   182: aload_0
    //   183: aload_1
    //   184: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   187: areturn
    //   188: aload_2
    //   189: iload_3
    //   190: invokevirtual 339	com/google/b/a/a/a:c	(I)[B
    //   193: astore_1
    //   194: goto -12 -> 182
    //   197: ldc -33
    //   199: aload_0
    //   200: invokevirtual 229	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   203: istore 4
    //   205: iload 4
    //   207: ifeq +91 -> 298
    //   210: aload_0
    //   211: invokevirtual 342	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   214: checkcast 223	com/google/b/a/a/h
    //   217: astore_1
    //   218: aload_2
    //   219: aload_1
    //   220: invokevirtual 345	com/google/b/a/a/a:a	(Lcom/google/b/a/a/h;)V
    //   223: aload_0
    //   224: aload_1
    //   225: invokevirtual 279	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   228: astore_1
    //   229: aload_1
    //   230: areturn
    //   231: astore_1
    //   232: new 105	java/lang/IllegalArgumentException
    //   235: dup
    //   236: new 107	java/lang/StringBuilder
    //   239: dup
    //   240: ldc_w 347
    //   243: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   246: aload_0
    //   247: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   250: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: aload_1
    //   254: invokespecial 350	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   257: athrow
    //   258: astore_0
    //   259: new 105	java/lang/IllegalArgumentException
    //   262: dup
    //   263: ldc_w 352
    //   266: aload_0
    //   267: invokespecial 350	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   270: athrow
    //   271: astore_1
    //   272: new 105	java/lang/IllegalArgumentException
    //   275: dup
    //   276: new 107	java/lang/StringBuilder
    //   279: dup
    //   280: ldc_w 347
    //   283: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   286: aload_0
    //   287: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: aload_1
    //   294: invokespecial 350	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   297: athrow
    //   298: new 105	java/lang/IllegalArgumentException
    //   301: dup
    //   302: new 107	java/lang/StringBuilder
    //   305: dup
    //   306: ldc -18
    //   308: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   311: aload_0
    //   312: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokespecial 127	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   321: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	322	0	paramClass	Class<T>
    //   0	322	1	paramArrayOfByte	byte[]
    //   14	205	2	locala	a
    //   136	54	3	i1	int
    //   203	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   210	229	231	java/lang/IllegalAccessException
    //   21	30	258	java/io/IOException
    //   36	48	258	java/io/IOException
    //   54	66	258	java/io/IOException
    //   72	84	258	java/io/IOException
    //   90	105	258	java/io/IOException
    //   111	126	258	java/io/IOException
    //   132	150	258	java/io/IOException
    //   154	182	258	java/io/IOException
    //   182	188	258	java/io/IOException
    //   188	194	258	java/io/IOException
    //   197	205	258	java/io/IOException
    //   210	229	258	java/io/IOException
    //   232	258	258	java/io/IOException
    //   272	298	258	java/io/IOException
    //   298	322	258	java/io/IOException
    //   210	229	271	java/lang/InstantiationException
  }
  
  public static <T> void a(e<T> parame, T paramT, List<j> paramList)
  {
    Object localObject = paramList.iterator();
    while (((Iterator)localObject).hasNext())
    {
      j localj = (j)((Iterator)localObject).next();
      if (a == a >>> 3) {
        ((Iterator)localObject).remove();
      }
    }
    if (paramT == null) {}
    for (;;)
    {
      return;
      if (!(paramT instanceof List)) {
        break;
      }
      paramT = ((List)paramT).iterator();
      while (paramT.hasNext())
      {
        localObject = paramT.next();
        paramList.add(a(a, localObject));
      }
    }
    paramList.add(a(a, paramT));
  }
  
  public static void a(List<j> paramList, b paramb)
  {
    if (paramList == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        j localj = (j)paramList.next();
        paramb.c(a >>> 3, a & 0x7);
        paramb.a(b);
      }
    }
  }
  
  public static boolean a(List<j> paramList, a parama, int paramInt)
  {
    int i1 = parama.i();
    boolean bool = parama.b(paramInt);
    int i2 = parama.i() - i1;
    if (i2 == 0) {}
    byte[] arrayOfByte;
    for (parama = l;; parama = arrayOfByte)
    {
      paramList.add(new j(paramInt, parama));
      return bool;
      arrayOfByte = new byte[i2];
      int i3 = b;
      System.arraycopy(a, i1 + i3, arrayOfByte, 0, i2);
    }
  }
  
  public static int b(int paramInt)
  {
    return paramInt >>> 3;
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import java.lang.reflect.Array;
import java.lang.reflect.Type;

final class ax
  implements bg.a
{
  private final bh a;
  private final bk b;
  private final boolean c;
  private final av d;
  private final bd e;
  private ao f;
  
  ax(bh parambh, boolean paramBoolean, bk<ay<?>> parambk, av paramav, bd parambd)
  {
    a = parambh;
    c = paramBoolean;
    b = parambk;
    d = paramav;
    e = parambd;
  }
  
  public final void a()
  {
    at localat = new at;
    localat.<init>();
    a(localat);
  }
  
  private void a(af paramaf, ao paramao)
  {
    Object localObject1 = a;
    localObject1 = ((bh)localObject1).a();
    Object localObject2 = f;
    localObject2 = ((ao)localObject2).d();
    localObject1 = ((ag)localObject1).a(paramaf);
    ((at)localObject2).a((String)localObject1, paramao);
  }
  
  private void a(af paramaf, bi parambi)
  {
    ao localao = d(parambi);
    a(paramaf, localao);
  }
  
  /* Error */
  public final void a(af paramaf, Type paramType, Object paramObject)
  {
    // Byte code:
    //   0: nop
    //   1: aload_1
    //   2: aload_3
    //   3: invokestatic 119	ax:a	(Laf;Ljava/lang/Object;)Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifeq +27 -> 37
    //   13: aload_0
    //   14: getfield 193	ax:c	Z
    //   17: istore 4
    //   19: iload 4
    //   21: ifeq +15 -> 36
    //   24: invokestatic 228	as:h	()Las;
    //   27: astore 4
    //   29: aload_0
    //   30: aload_1
    //   31: aload 4
    //   33: invokespecial 17	ax:a	(Laf;Lao;)V
    //   36: return
    //   37: aload_1
    //   38: aload_3
    //   39: invokestatic 102	ax:b	(Laf;Ljava/lang/Object;)Ljava/lang/Object;
    //   42: astore 4
    //   44: new 66	bi
    //   47: astore 5
    //   49: iconst_0
    //   50: istore 6
    //   52: aload 5
    //   54: aload 4
    //   56: aload_2
    //   57: iload 6
    //   59: invokespecial 44	bi:<init>	(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    //   62: aload_0
    //   63: aload_1
    //   64: aload 5
    //   66: invokespecial 109	ax:a	(Laf;Lbi;)V
    //   69: goto -33 -> 36
    //   72: astore 4
    //   74: aload 4
    //   76: aload_1
    //   77: invokevirtual 167	aa:a	(Laf;)Ljava/lang/IllegalStateException;
    //   80: astore 4
    //   82: aload 4
    //   84: athrow
    //   85: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	ax
    //   0	86	1	paramaf	af
    //   0	86	2	paramType	Type
    //   0	86	3	paramObject	Object
    //   6	14	4	bool1	boolean
    //   27	28	4	localObject	Object
    //   72	3	4	localaa	aa
    //   80	3	4	localIllegalStateException	IllegalStateException
    //   47	18	5	localbi	bi
    //   50	8	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   1	6	72	aa
    //   13	19	72	aa
    //   24	27	72	aa
    //   29	36	72	aa
    //   37	42	72	aa
    //   44	49	72	aa
    //   52	62	72	aa
  }
  
  private void a(ao paramao)
  {
    bm.a(paramao);
    f = paramao;
  }
  
  public final void a(bi parambi)
  {
    if (parambi == null) {}
    for (;;)
    {
      return;
      bd localbd = e;
      boolean bool = localbd.b(parambi);
      if (bool)
      {
        localObject = new aa;
        ((aa)localObject).<init>(parambi);
        throw ((Throwable)localObject);
      }
      Object localObject = e;
      ((bd)localObject).a(parambi);
    }
  }
  
  public final void a(Object paramObject)
  {
    Object localObject;
    if (paramObject == null) {
      localObject = as.h();
    }
    for (;;)
    {
      a((ao)localObject);
      return;
      localObject = new au;
      ((au)localObject).<init>(paramObject);
    }
  }
  
  public final void a(Object paramObject, Type paramType)
  {
    int m = 0;
    ak localak = new ak;
    localak.<init>();
    a(localak);
    int i = Array.getLength(paramObject);
    boolean bool = bw.a(paramType);
    bm.a(bool);
    Object localObject1 = new bs;
    ((bs)localObject1).<init>(paramType);
    localObject1 = ((bs)localObject1).d();
    int j = m;
    if (j < i)
    {
      Object localObject2 = Array.get(paramObject, j);
      Object localObject3 = new bi;
      ((bi)localObject3).<init>(localObject2, (Type)localObject1, m);
      localObject2 = ((bi)localObject3).a();
      if (localObject2 == null)
      {
        localObject2 = f;
        localObject2 = ((ao)localObject2).e();
        localObject3 = as.h();
        ((ak)localObject2).a((ao)localObject3);
      }
      for (;;)
      {
        int k;
        j += 1;
        break;
        localObject2 = d((bi)localObject3);
        localObject3 = f;
        localObject3 = ((ao)localObject3).e();
        ((ak)localObject3).a((ao)localObject2);
      }
    }
  }
  
  private static boolean a(af paramaf, Object paramObject)
  {
    Object localObject = b(paramaf, paramObject);
    if (localObject == null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public final ao b()
  {
    ao localao = f;
    return localao;
  }
  
  private static Object b(af paramaf, Object paramObject)
  {
    try
    {
      Object localObject = paramaf.a(paramObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      localRuntimeException.<init>(localIllegalAccessException);
      throw localRuntimeException;
    }
  }
  
  /* Error */
  public final void b(af paramaf, Type paramType, Object paramObject)
  {
    // Byte code:
    //   0: nop
    //   1: aload_1
    //   2: aload_3
    //   3: invokestatic 119	ax:a	(Laf;Ljava/lang/Object;)Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifeq +27 -> 37
    //   13: aload_0
    //   14: getfield 193	ax:c	Z
    //   17: istore 4
    //   19: iload 4
    //   21: ifeq +15 -> 36
    //   24: invokestatic 228	as:h	()Las;
    //   27: astore 4
    //   29: aload_0
    //   30: aload_1
    //   31: aload 4
    //   33: invokespecial 17	ax:a	(Laf;Lao;)V
    //   36: return
    //   37: aload_1
    //   38: aload_3
    //   39: invokestatic 102	ax:b	(Laf;Ljava/lang/Object;)Ljava/lang/Object;
    //   42: astore 4
    //   44: new 66	bi
    //   47: astore 5
    //   49: iconst_0
    //   50: istore 6
    //   52: aload 5
    //   54: aload 4
    //   56: aload_2
    //   57: iload 6
    //   59: invokespecial 44	bi:<init>	(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    //   62: aload_0
    //   63: aload_1
    //   64: aload 5
    //   66: invokespecial 109	ax:a	(Laf;Lbi;)V
    //   69: goto -33 -> 36
    //   72: astore 4
    //   74: aload 4
    //   76: aload_1
    //   77: invokevirtual 167	aa:a	(Laf;)Ljava/lang/IllegalStateException;
    //   80: astore 4
    //   82: aload 4
    //   84: athrow
    //   85: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	ax
    //   0	86	1	paramaf	af
    //   0	86	2	paramType	Type
    //   0	86	3	paramObject	Object
    //   6	14	4	bool1	boolean
    //   27	28	4	localObject	Object
    //   72	3	4	localaa	aa
    //   80	3	4	localIllegalStateException	IllegalStateException
    //   47	18	5	localbi	bi
    //   50	8	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   1	6	72	aa
    //   13	19	72	aa
    //   24	27	72	aa
    //   29	36	72	aa
    //   37	42	72	aa
    //   44	49	72	aa
    //   52	62	72	aa
  }
  
  public final void b(bi parambi)
  {
    if (parambi != null)
    {
      bd localbd = e;
      localbd.a();
    }
  }
  
  public final boolean c(af paramaf, Type paramType, Object paramObject)
  {
    int k = 1;
    int j = 0;
    try
    {
      ao localao = f;
      boolean bool1 = localao.b();
      if (!bool1)
      {
        localObject4 = new java/lang/IllegalArgumentException;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        str = "condition failed: ";
        localStringBuilder = localStringBuilder.append(str);
        Object localObject1 = localStringBuilder.append(bool1);
        localObject1 = ((StringBuilder)localObject1).toString();
        ((IllegalArgumentException)localObject4).<init>((String)localObject1);
        throw ((Throwable)localObject4);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Object localObject4;
      String str;
      Object localObject2 = new java/lang/RuntimeException;
      ((RuntimeException)localObject2).<init>();
      throw ((Throwable)localObject2);
      localObject2 = paramaf.a(paramObject);
      Object localObject3;
      if (localObject2 == null)
      {
        boolean bool2 = c;
        if (bool2)
        {
          localObject3 = as.h();
          a(paramaf, (ao)localObject3);
        }
        localObject3 = k;
      }
      for (;;)
      {
        return (boolean)localObject3;
        localObject4 = new bi;
        boolean bool3 = false;
        ((bi)localObject4).<init>(localObject3, paramType, bool3);
        localObject3 = e((bi)localObject4);
        if (localObject3 != null)
        {
          a(paramaf, (ao)localObject3);
          localObject3 = k;
        }
        else
        {
          int i = str;
        }
      }
    }
    catch (aa localaa)
    {
      IllegalStateException localIllegalStateException = localaa.a(paramaf);
      throw localIllegalStateException;
    }
  }
  
  /* Error */
  public final boolean c(bi parambi)
  {
    // Byte code:
    //   0: nop
    //   1: iconst_1
    //   2: istore_3
    //   3: aload_1
    //   4: invokevirtual 213	bi:a	()Ljava/lang/Object;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +25 -> 34
    //   12: aload_0
    //   13: getfield 193	ax:c	Z
    //   16: istore_2
    //   17: iload_2
    //   18: ifeq +12 -> 30
    //   21: invokestatic 228	as:h	()Las;
    //   24: astore_2
    //   25: aload_0
    //   26: aload_2
    //   27: invokespecial 31	ax:a	(Lao;)V
    //   30: iload_3
    //   31: istore_2
    //   32: iload_2
    //   33: ireturn
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 148	ax:e	(Lbi;)Lao;
    //   39: astore_2
    //   40: aload_2
    //   41: ifnull +13 -> 54
    //   44: aload_0
    //   45: aload_2
    //   46: invokespecial 31	ax:a	(Lao;)V
    //   49: iload_3
    //   50: istore_2
    //   51: goto -19 -> 32
    //   54: iconst_0
    //   55: istore_2
    //   56: goto -24 -> 32
    //   59: astore_2
    //   60: aconst_null
    //   61: astore_3
    //   62: aload_2
    //   63: aload_3
    //   64: invokevirtual 167	aa:a	(Laf;)Ljava/lang/IllegalStateException;
    //   67: astore_2
    //   68: aload_2
    //   69: athrow
    //   70: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	ax
    //   0	71	1	parambi	bi
    //   7	2	2	localObject1	Object
    //   16	2	2	bool	boolean
    //   24	27	2	localObject2	Object
    //   55	1	2	i	int
    //   59	4	2	localaa	aa
    //   67	2	2	localIllegalStateException	IllegalStateException
    //   2	48	3	j	int
    //   61	3	3	localaf	af
    // Exception table:
    //   from	to	target	type
    //   3	7	59	aa
    //   12	17	59	aa
    //   21	24	59	aa
    //   25	30	59	aa
    //   34	39	59	aa
    //   44	49	59	aa
  }
  
  private ao d(bi parambi)
  {
    Object localObject = a;
    bg localbg = ((bh)localObject).a(parambi);
    localObject = new ax;
    bh localbh = a;
    boolean bool = c;
    bk localbk = b;
    av localav = d;
    bd localbd = e;
    ((ax)localObject).<init>(localbh, bool, localbk, localav, localbd);
    localbg.a((bg.a)localObject);
    localObject = f;
    return (ao)localObject;
  }
  
  private ao e(bi parambi)
  {
    Object localObject1 = b;
    Object localObject3 = parambi.a((bk)localObject1);
    if (localObject3 == null) {
      localObject1 = null;
    }
    for (;;)
    {
      return (ao)localObject1;
      localObject1 = a;
      localObject1 = (ay)localObject1;
      localObject3 = b;
      localObject3 = (bi)localObject3;
      a((bi)localObject3);
      try
      {
        Object localObject4 = ((bi)localObject3).a();
        Type localType = a;
        av localav = d;
        localObject1 = ((ay)localObject1).a(localObject4, localType, localav);
        if (localObject1 == null) {
          localObject1 = as.h();
        }
        b((bi)localObject3);
      }
      finally
      {
        b((bi)localObject3);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ax
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
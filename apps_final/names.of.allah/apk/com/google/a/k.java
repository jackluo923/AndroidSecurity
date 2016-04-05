package com.google.a;

import com.google.a.b.a.t;
import com.google.a.b.a.v;
import com.google.a.b.a.y;
import com.google.a.b.f;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class k
{
  final u a = new l(this);
  final ac b = new m(this);
  private final ThreadLocal<Map<com.google.a.c.a<?>, q<?>>> c = new ThreadLocal();
  private final Map<com.google.a.c.a<?>, ak<?>> d = Collections.synchronizedMap(new HashMap());
  private final List<al> e;
  private final f f;
  private final boolean g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  
  public k()
  {
    this(com.google.a.b.s.a, d.a, Collections.emptyMap(), false, false, false, true, false, false, af.a, Collections.emptyList());
  }
  
  k(com.google.a.b.s params, j paramj, Map<Type, s<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, af paramaf, List<al> paramList)
  {
    f = new f(paramMap);
    g = paramBoolean1;
    i = paramBoolean3;
    h = paramBoolean4;
    j = paramBoolean5;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(y.Q);
    localArrayList.add(com.google.a.b.a.m.a);
    localArrayList.add(params);
    localArrayList.addAll(paramList);
    localArrayList.add(y.x);
    localArrayList.add(y.m);
    localArrayList.add(y.g);
    localArrayList.add(y.i);
    localArrayList.add(y.k);
    paramList = Long.TYPE;
    if (paramaf == af.a)
    {
      paramMap = y.n;
      localArrayList.add(y.a(paramList, Long.class, paramMap));
      paramaf = Double.TYPE;
      if (!paramBoolean6) {
        break label600;
      }
      paramMap = y.p;
      label241:
      localArrayList.add(y.a(paramaf, Double.class, paramMap));
      paramaf = Float.TYPE;
      if (!paramBoolean6) {
        break label612;
      }
    }
    label600:
    label612:
    for (paramMap = y.o;; paramMap = new o(this))
    {
      localArrayList.add(y.a(paramaf, Float.class, paramMap));
      localArrayList.add(y.r);
      localArrayList.add(y.t);
      localArrayList.add(y.z);
      localArrayList.add(y.B);
      localArrayList.add(y.a(BigDecimal.class, y.v));
      localArrayList.add(y.a(BigInteger.class, y.w));
      localArrayList.add(y.D);
      localArrayList.add(y.F);
      localArrayList.add(y.J);
      localArrayList.add(y.O);
      localArrayList.add(y.H);
      localArrayList.add(y.d);
      localArrayList.add(com.google.a.b.a.e.a);
      localArrayList.add(y.M);
      localArrayList.add(v.a);
      localArrayList.add(t.a);
      localArrayList.add(y.K);
      localArrayList.add(com.google.a.b.a.a.a);
      localArrayList.add(y.R);
      localArrayList.add(y.b);
      localArrayList.add(new com.google.a.b.a.c(f));
      localArrayList.add(new com.google.a.b.a.k(f, paramBoolean2));
      localArrayList.add(new com.google.a.b.a.p(f, paramj, params));
      e = Collections.unmodifiableList(localArrayList);
      return;
      paramMap = new p(this);
      break;
      paramMap = new n(this);
      break label241;
    }
  }
  
  /* Error */
  private <T> T a(com.google.a.d.a parama, Type paramType)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 268	com/google/a/d/a:p	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 271	com/google/a/d/a:a	(Z)V
    //   13: aload_1
    //   14: invokevirtual 274	com/google/a/d/a:f	()Lcom/google/a/d/c;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 279	com/google/a/c/a:a	(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;
    //   25: invokevirtual 282	com/google/a/k:a	(Lcom/google/a/c/a;)Lcom/google/a/ak;
    //   28: aload_1
    //   29: invokevirtual 287	com/google/a/ak:a	(Lcom/google/a/d/a;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: invokevirtual 271	com/google/a/d/a:a	(Z)V
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: invokevirtual 271	com/google/a/d/a:a	(Z)V
    //   52: aconst_null
    //   53: areturn
    //   54: new 289	com/google/a/ae
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 292	com/google/a/ae:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: invokevirtual 271	com/google/a/d/a:a	(Z)V
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 289	com/google/a/ae
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 292	com/google/a/ae:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 289	com/google/a/ae
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 292	com/google/a/ae:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	k
    //   0	92	1	parama	com.google.a.d.a
    //   0	92	2	paramType	Type
    //   1	42	3	k	int
    //   6	60	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	18	41	java/io/EOFException
    //   20	33	41	java/io/EOFException
    //   13	18	63	finally
    //   20	33	63	finally
    //   54	63	63	finally
    //   73	82	63	finally
    //   83	92	63	finally
    //   13	18	72	java/lang/IllegalStateException
    //   20	33	72	java/lang/IllegalStateException
    //   13	18	82	java/io/IOException
    //   20	33	82	java/io/IOException
  }
  
  public final <T> ak<T> a(al paramal, com.google.a.c.a<T> parama)
  {
    Iterator localIterator = e.iterator();
    int k = 0;
    while (localIterator.hasNext())
    {
      Object localObject = (al)localIterator.next();
      if (k == 0)
      {
        if (localObject == paramal) {
          k = 1;
        }
      }
      else
      {
        localObject = ((al)localObject).a(this, parama);
        if (localObject != null) {
          return (ak<T>)localObject;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + parama);
  }
  
  public final <T> ak<T> a(com.google.a.c.a<T> parama)
  {
    Object localObject1 = (ak)d.get(parama);
    if (localObject1 != null) {
      return (ak<T>)localObject1;
    }
    Object localObject4 = (Map)c.get();
    int k = 0;
    if (localObject4 == null)
    {
      localObject4 = new HashMap();
      c.set(localObject4);
      k = 1;
    }
    for (;;)
    {
      Object localObject5 = (q)((Map)localObject4).get(parama);
      localObject1 = localObject5;
      if (localObject5 != null) {
        break;
      }
      try
      {
        localObject1 = new q();
        ((Map)localObject4).put(parama, localObject1);
        Iterator localIterator = e.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localObject5 = ((al)localIterator.next()).a(this, parama);
        } while (localObject5 == null);
        if (a != null) {
          throw new AssertionError();
        }
      }
      finally
      {
        ((Map)localObject4).remove(parama);
        if (k != 0) {
          c.remove();
        }
      }
      a = ((ak)localObject5);
      d.put(parama, localObject5);
      ((Map)localObject4).remove(parama);
      Object localObject3 = localObject5;
      if (k == 0) {
        break;
      }
      c.remove();
      return (ak<T>)localObject5;
      throw new IllegalArgumentException("GSON cannot handle " + parama);
    }
  }
  
  public final <T> ak<T> a(Class<T> paramClass)
  {
    return a(com.google.a.c.a.a(paramClass));
  }
  
  public final <T> T a(String paramString, Class<T> paramClass)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return (T)com.google.a.b.af.a(paramClass).cast(paramString);
      com.google.a.d.a locala = new com.google.a.d.a(new StringReader(paramString));
      Object localObject = a(locala, paramClass);
      paramString = (String)localObject;
      if (localObject == null) {
        continue;
      }
      paramString = (String)localObject;
      try
      {
        if (locala.f() == com.google.a.d.c.j) {
          continue;
        }
        throw new x("JSON document was not fully consumed.");
      }
      catch (com.google.a.d.e paramString)
      {
        throw new ae(paramString);
      }
      catch (IOException paramString)
      {
        throw new x(paramString);
      }
    }
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + g + "factories:" + e + ",instanceCreators:" + f + "}";
  }
}

/* Location:
 * Qualified Name:     com.google.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
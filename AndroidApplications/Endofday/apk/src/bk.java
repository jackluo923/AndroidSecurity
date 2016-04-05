import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

final class bk<T>
{
  private static final Logger a;
  private final Map b;
  private final List c;
  private boolean d;
  
  static
  {
    Object localObject = bk.class;
    localObject = ((Class)localObject).getName();
    localObject = Logger.getLogger((String)localObject);
    a = (Logger)localObject;
  }
  
  bk()
  {
    Object localObject = new java/util/HashMap;
    ((HashMap)localObject).<init>();
    b = ((Map)localObject);
    localObject = new java/util/ArrayList;
    ((ArrayList)localObject).<init>();
    c = ((List)localObject);
    boolean bool = true;
    d = bool;
  }
  
  private int a(Class<?> paramClass)
  {
    List localList = c;
    int i = localList.size();
    int m = 1;
    i -= m;
    m = i;
    if (m >= 0)
    {
      Object localObject = c;
      localObject = ((List)localObject).get(m);
      localObject = (bj)localObject;
      localObject = a;
      localObject = (Class)localObject;
      j = paramClass.isAssignableFrom((Class)localObject);
      if (j == 0) {}
    }
    int k;
    for (int j = m;; k = -1)
    {
      return j;
      k = m + -1;
      m = k;
      break;
    }
  }
  
  /* Error */
  public final T a(Type paramType)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 33	bk:b	Ljava/util/Map;
    //   7: astore_3
    //   8: aload_3
    //   9: aload_1
    //   10: invokeinterface 83 2 0
    //   15: astore_3
    //   16: aload_3
    //   17: ifnonnull +97 -> 114
    //   20: aload_1
    //   21: invokestatic 62	bw:b	(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    //   24: astore 5
    //   26: aload 5
    //   28: aload_1
    //   29: if_acmpeq +10 -> 39
    //   32: aload_0
    //   33: aload 5
    //   35: invokevirtual 196	bk:a	(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   38: astore_3
    //   39: aload_3
    //   40: ifnonnull +74 -> 114
    //   43: aload_0
    //   44: getfield 72	bk:c	Ljava/util/List;
    //   47: astore_3
    //   48: aload_3
    //   49: invokeinterface 46 1 0
    //   54: astore 6
    //   56: aload 6
    //   58: invokeinterface 127 1 0
    //   63: istore_3
    //   64: iload_3
    //   65: ifeq +53 -> 118
    //   68: aload 6
    //   70: invokeinterface 28 1 0
    //   75: astore_3
    //   76: aload_3
    //   77: astore_2
    //   78: aload_2
    //   79: checkcast 80	bj
    //   82: astore_2
    //   83: aload_2
    //   84: astore 4
    //   86: aload 4
    //   88: getfield 8	bj:a	Ljava/lang/Object;
    //   91: astore_3
    //   92: aload_3
    //   93: checkcast 92	java/lang/Class
    //   96: astore_3
    //   97: aload_3
    //   98: aload 5
    //   100: invokevirtual 183	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   103: istore_3
    //   104: iload_3
    //   105: ifeq -49 -> 56
    //   108: aload 4
    //   110: getfield 86	bj:b	Ljava/lang/Object;
    //   113: astore_3
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_3
    //   117: areturn
    //   118: aconst_null
    //   119: astore_3
    //   120: goto -6 -> 114
    //   123: astore_3
    //   124: aload_0
    //   125: monitorexit
    //   126: aload_3
    //   127: athrow
    //   128: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	bk
    //   0	129	1	paramType	Type
    //   77	7	2	localObject1	Object
    //   7	42	3	localObject2	Object
    //   63	2	3	bool1	boolean
    //   75	23	3	localObject3	Object
    //   103	2	3	bool2	boolean
    //   113	7	3	localObject4	Object
    //   123	4	3	localObject5	Object
    //   84	25	4	localObject6	Object
    //   24	75	5	localClass	Class
    //   54	15	6	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   3	8	123	finally
    //   20	24	123	finally
    //   32	38	123	finally
    //   43	48	123	finally
    //   56	63	123	finally
    //   68	75	123	finally
    //   78	83	123	finally
    //   86	92	123	finally
    //   97	103	123	finally
    //   108	114	123	finally
  }
  
  public final void a()
  {
    boolean bool = false;
    try
    {
      d = bool;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void a(bj<Class<?>, T> parambj)
  {
    Object localObject5;
    try
    {
      boolean bool = d;
      if (!bool)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject5 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject5);
        throw localIllegalStateException;
      }
    }
    finally {}
    Object localObject2 = a;
    localObject2 = (Class)localObject2;
    int i = b((Class)localObject2);
    Object localObject6;
    Object localObject7;
    if (i >= 0)
    {
      localObject5 = a;
      localObject6 = Level.WARNING;
      localObject7 = "Overriding the existing type handler for {0}";
      Object localObject8 = a;
      ((Logger)localObject5).log((Level)localObject6, (String)localObject7, localObject8);
      localObject5 = c;
      ((List)localObject5).remove(i);
    }
    Object localObject3 = a;
    localObject3 = (Class)localObject3;
    int j = a((Class)localObject3);
    if (j >= 0)
    {
      localObject5 = new java/lang/IllegalArgumentException;
      localObject6 = new java/lang/StringBuilder;
      ((StringBuilder)localObject6).<init>();
      localObject7 = "The specified type handler for type ";
      localObject6 = ((StringBuilder)localObject6).append((String)localObject7);
      localObject7 = a;
      localObject6 = ((StringBuilder)localObject6).append(localObject7);
      localObject7 = " hides the previously registered type hierarchy handler for ";
      localObject6 = ((StringBuilder)localObject6).append((String)localObject7);
      localObject7 = c;
      localObject4 = ((List)localObject7).get(j);
      localObject4 = (bj)localObject4;
      localObject4 = a;
      localObject4 = ((StringBuilder)localObject6).append(localObject4);
      localObject6 = ". Gson does not allow this.";
      localObject4 = ((StringBuilder)localObject4).append((String)localObject6);
      localObject4 = ((StringBuilder)localObject4).toString();
      ((IllegalArgumentException)localObject5).<init>((String)localObject4);
      throw ((Throwable)localObject5);
    }
    Object localObject4 = c;
    int k = 0;
    ((List)localObject4).add(k, parambj);
  }
  
  public final void a(bk<T> parambk)
  {
    Object localObject5;
    try
    {
      boolean bool1 = d;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject5 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject5);
        throw localIllegalStateException;
      }
    }
    finally {}
    Object localObject2 = b;
    localObject2 = ((Map)localObject2).entrySet();
    Iterator localIterator3 = ((Set)localObject2).iterator();
    for (;;)
    {
      boolean bool2 = localIterator3.hasNext();
      if (!bool2) {
        break;
      }
      localObject3 = localIterator3.next();
      localObject3 = (Map.Entry)localObject3;
      localObject5 = b;
      Object localObject8 = ((Map.Entry)localObject3).getKey();
      boolean bool3 = ((Map)localObject5).containsKey(localObject8);
      if (!bool3)
      {
        Object localObject6 = ((Map.Entry)localObject3).getKey();
        localObject6 = (Type)localObject6;
        localObject3 = ((Map.Entry)localObject3).getValue();
        a((Type)localObject6, localObject3);
      }
    }
    Object localObject3 = c;
    Iterator localIterator1 = ((List)localObject3).size();
    int i = 1;
    localIterator1 -= i;
    Iterator localIterator2;
    for (localIterator3 = localIterator1; localIterator3 >= 0; localIterator3 = localIterator2)
    {
      Object localObject4 = c;
      localObject4 = ((List)localObject4).get(localIterator3);
      localObject4 = (bj)localObject4;
      Object localObject7 = a;
      localObject7 = (Class)localObject7;
      int j = b((Class)localObject7);
      if (j < 0) {
        a((bj)localObject4);
      }
      localIterator2 = localIterator3 + -1;
    }
  }
  
  public final void a(Class<?> paramClass, T paramT)
  {
    try
    {
      bj localbj = new bj;
      localbj.<init>(paramClass, paramT);
      a(localbj);
      return;
    }
    finally {}
  }
  
  public final void a(Type paramType, T paramT)
  {
    Object localObject3;
    try
    {
      boolean bool1 = d;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject3 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject3);
        throw localIllegalStateException;
      }
    }
    finally {}
    boolean bool2 = b(paramType);
    if (bool2)
    {
      localObject2 = a;
      localObject3 = Level.WARNING;
      String str = "Overriding the existing type handler for {0}";
      ((Logger)localObject2).log((Level)localObject3, str, paramType);
    }
    Object localObject2 = b;
    ((Map)localObject2).put(paramType, paramT);
  }
  
  /* Error */
  private int b(Class<?> paramClass)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 72	bk:c	Ljava/util/List;
    //   7: astore_2
    //   8: aload_2
    //   9: invokeinterface 102 1 0
    //   14: istore_2
    //   15: iconst_1
    //   16: istore_3
    //   17: iload_2
    //   18: iload_3
    //   19: isub
    //   20: istore_2
    //   21: iload_2
    //   22: istore_3
    //   23: iload_3
    //   24: iflt +51 -> 75
    //   27: aload_0
    //   28: getfield 72	bk:c	Ljava/util/List;
    //   31: astore_2
    //   32: aload_2
    //   33: iload_3
    //   34: invokeinterface 25 2 0
    //   39: astore_2
    //   40: aload_2
    //   41: checkcast 80	bj
    //   44: astore_2
    //   45: aload_2
    //   46: getfield 8	bj:a	Ljava/lang/Object;
    //   49: astore_2
    //   50: aload_1
    //   51: aload_2
    //   52: invokevirtual 90	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   55: istore_2
    //   56: iload_2
    //   57: ifeq +9 -> 66
    //   60: iload_3
    //   61: istore_2
    //   62: aload_0
    //   63: monitorexit
    //   64: iload_2
    //   65: ireturn
    //   66: iload_3
    //   67: iconst_m1
    //   68: iadd
    //   69: istore_2
    //   70: iload_2
    //   71: istore_3
    //   72: goto -49 -> 23
    //   75: iconst_m1
    //   76: istore_2
    //   77: goto -15 -> 62
    //   80: astore_2
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_2
    //   84: athrow
    //   85: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	bk
    //   0	86	1	paramClass	Class<?>
    //   7	2	2	localList	List
    //   14	8	2	i	int
    //   31	21	2	localObject1	Object
    //   55	10	2	j	int
    //   69	8	2	k	int
    //   80	4	2	localObject2	Object
    //   16	56	3	m	int
    // Exception table:
    //   from	to	target	type
    //   3	8	80	finally
    //   27	32	80	finally
    //   40	45	80	finally
    //   50	55	80	finally
  }
  
  public final void b(Type paramType, T paramT)
  {
    try
    {
      boolean bool1 = d;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        String str = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>(str);
        throw localIllegalStateException;
      }
    }
    finally {}
    Map localMap = b;
    boolean bool2 = localMap.containsKey(paramType);
    if (!bool2) {
      a(paramType, paramT);
    }
  }
  
  private boolean b(Type paramType)
  {
    try
    {
      Map localMap = b;
      boolean bool = localMap.containsKey(paramType);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String toString()
  {
    char c2 = ':';
    char c1 = ',';
    int k = 1;
    boolean bool3 = false;
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    Object localObject1 = "{mapForTypeHierarchy:{";
    localStringBuilder.<init>((String)localObject1);
    localObject1 = c;
    Iterator localIterator = ((List)localObject1).iterator();
    int i = k;
    boolean bool1 = localIterator.hasNext();
    if (bool1)
    {
      localObject2 = localIterator.next();
      localObject2 = (bj)localObject2;
      if (i != 0) {}
      for (int j = bool3;; j = localObject3)
      {
        localObject3 = a;
        localObject3 = (Type)localObject3;
        localObject3 = bw.b((Type)localObject3);
        localObject3 = ((Class)localObject3).getSimpleName();
        localObject3 = localStringBuilder.append((String)localObject3);
        ((StringBuilder)localObject3).append(c2);
        localObject2 = b;
        localStringBuilder.append(localObject2);
        localObject3 = j;
        break;
        localStringBuilder.append(c1);
      }
    }
    Object localObject2 = "},map:{";
    localStringBuilder.append((String)localObject2);
    localObject2 = b;
    localObject2 = ((Map)localObject2).entrySet();
    Object localObject3 = ((Set)localObject2).iterator();
    localObject2 = k;
    boolean bool2 = ((Iterator)localObject3).hasNext();
    if (bool2)
    {
      this = ((Iterator)localObject3).next();
      this = (Map.Entry)this;
      if (localObject2 != 0) {}
      for (bool2 = bool3;; bool2 = localObject2)
      {
        localObject2 = getKey();
        localObject2 = (Type)localObject2;
        localObject2 = bw.b((Type)localObject2);
        localObject2 = ((Class)localObject2).getSimpleName();
        localObject2 = localStringBuilder.append((String)localObject2);
        ((StringBuilder)localObject2).append(c2);
        localObject2 = getValue();
        localStringBuilder.append(localObject2);
        localObject2 = bool2;
        break;
        localStringBuilder.append(c1);
      }
    }
    localObject2 = "}";
    localStringBuilder.append((String)localObject2);
    localObject2 = localStringBuilder.toString();
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     bk
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */
package com.a.a.b.a.a;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class d<E>
  extends AbstractQueue<E>
  implements a<E>, Serializable
{
  transient g<E> a;
  transient g<E> b;
  final ReentrantLock c = new ReentrantLock();
  private transient int d;
  private final int e = Integer.MAX_VALUE;
  private final Condition f = c.newCondition();
  private final Condition g = c.newCondition();
  
  public d()
  {
    this((byte)0);
  }
  
  private d(byte paramByte) {}
  
  private E a(long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      Object localObject1;
      for (;;)
      {
        localObject1 = b();
        if (localObject1 != null) {
          break;
        }
        if (paramLong <= 0L) {
          return null;
        }
        paramLong = f.awaitNanos(paramLong);
      }
      return (E)localObject1;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  private boolean a(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    paramE = new g(paramE);
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      for (;;)
      {
        boolean bool = b(paramE);
        if (bool) {
          break;
        }
        if (paramLong <= 0L) {
          return false;
        }
        paramLong = g.awaitNanos(paramLong);
      }
      return true;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  private E b()
  {
    g localg1 = a;
    if (localg1 == null) {
      return null;
    }
    g localg2 = c;
    Object localObject = a;
    a = null;
    c = localg1;
    a = localg2;
    if (localg2 == null) {
      b = null;
    }
    for (;;)
    {
      d -= 1;
      g.signal();
      return (E)localObject;
      b = null;
    }
  }
  
  private boolean b(g<E> paramg)
  {
    if (d >= e) {
      return false;
    }
    g localg = b;
    b = localg;
    b = paramg;
    if (a == null) {
      a = paramg;
    }
    for (;;)
    {
      d += 1;
      f.signal();
      return true;
      c = paramg;
    }
  }
  
  private boolean b(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    g localg = new g(paramE);
    paramE = c;
    paramE.lock();
    try
    {
      boolean bool = b(localg);
      return bool;
    }
    finally
    {
      paramE.unlock();
    }
  }
  
  private E c()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      Object localObject1 = b();
      return (E)localObject1;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  private boolean c(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      for (g localg = a; localg != null; localg = c) {
        if (paramObject.equals(a))
        {
          a(localg);
          return true;
        }
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  private E d()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      for (;;)
      {
        Object localObject = b();
        if (localObject != null) {
          break;
        }
        f.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    return ?;
  }
  
  /* Error */
  private E e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/a/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: astore_2
    //   5: aload_2
    //   6: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   9: aload_0
    //   10: getfield 83	com/a/a/b/a/a/d:a	Lcom/a/a/b/a/a/g;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +11 -> 26
    //   18: aconst_null
    //   19: astore_1
    //   20: aload_2
    //   21: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   24: aload_1
    //   25: areturn
    //   26: aload_0
    //   27: getfield 83	com/a/a/b/a/a/d:a	Lcom/a/a/b/a/a/g;
    //   30: getfield 88	com/a/a/b/a/a/g:a	Ljava/lang/Object;
    //   33: astore_1
    //   34: goto -14 -> 20
    //   37: astore_1
    //   38: aload_2
    //   39: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	d
    //   13	21	1	localObject1	Object
    //   37	6	1	localObject2	Object
    //   4	35	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   9	14	37	finally
    //   26	34	37	finally
  }
  
  public final E a()
  {
    Object localObject = c();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  final void a(g<E> paramg)
  {
    g localg = b;
    Object localObject = c;
    if (localg == null) {
      b();
    }
    do
    {
      return;
      if (localObject != null) {
        break;
      }
      paramg = b;
    } while (paramg == null);
    localg = b;
    localObject = a;
    a = null;
    b = paramg;
    b = localg;
    if (localg == null) {
      a = null;
    }
    for (;;)
    {
      d -= 1;
      g.signal();
      return;
      c = null;
    }
    c = ((g)localObject);
    b = localg;
    a = null;
    d -= 1;
    g.signal();
  }
  
  /* Error */
  public final boolean a(E paramE)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 71	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 72	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: new 74	com/a/a/b/a/a/g
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 77	com/a/a/b/a/a/g:<init>	(Ljava/lang/Object;)V
    //   20: astore_2
    //   21: aload_0
    //   22: getfield 34	com/a/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_1
    //   26: aload_1
    //   27: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   30: aload_0
    //   31: getfield 92	com/a/a/b/a/a/d:d	I
    //   34: istore 4
    //   36: aload_0
    //   37: getfield 45	com/a/a/b/a/a/d:e	I
    //   40: istore 5
    //   42: iload 4
    //   44: iload 5
    //   46: if_icmplt +13 -> 59
    //   49: iconst_0
    //   50: istore 6
    //   52: aload_1
    //   53: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   56: iload 6
    //   58: ireturn
    //   59: aload_0
    //   60: getfield 83	com/a/a/b/a/a/d:a	Lcom/a/a/b/a/a/g;
    //   63: astore_3
    //   64: aload_2
    //   65: aload_3
    //   66: putfield 85	com/a/a/b/a/a/g:c	Lcom/a/a/b/a/a/g;
    //   69: aload_0
    //   70: aload_2
    //   71: putfield 83	com/a/a/b/a/a/d:a	Lcom/a/a/b/a/a/g;
    //   74: aload_0
    //   75: getfield 90	com/a/a/b/a/a/d:b	Lcom/a/a/b/a/a/g;
    //   78: ifnonnull +33 -> 111
    //   81: aload_0
    //   82: aload_2
    //   83: putfield 90	com/a/a/b/a/a/d:b	Lcom/a/a/b/a/a/g;
    //   86: aload_0
    //   87: aload_0
    //   88: getfield 92	com/a/a/b/a/a/d:d	I
    //   91: iconst_1
    //   92: iadd
    //   93: putfield 92	com/a/a/b/a/a/d:d	I
    //   96: aload_0
    //   97: getfield 40	com/a/a/b/a/a/d:f	Ljava/util/concurrent/locks/Condition;
    //   100: invokeinterface 95 1 0
    //   105: iconst_1
    //   106: istore 6
    //   108: goto -56 -> 52
    //   111: aload_3
    //   112: aload_2
    //   113: putfield 96	com/a/a/b/a/a/g:b	Lcom/a/a/b/a/a/g;
    //   116: goto -30 -> 86
    //   119: astore_2
    //   120: aload_1
    //   121: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   124: aload_2
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	d
    //   0	126	1	paramE	E
    //   20	93	2	localg1	g
    //   119	6	2	localObject	Object
    //   63	49	3	localg2	g
    //   34	13	4	i	int
    //   40	7	5	j	int
    //   50	57	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   30	42	119	finally
    //   59	86	119	finally
    //   86	105	119	finally
    //   111	116	119	finally
  }
  
  public boolean add(E paramE)
  {
    if (!b(paramE)) {
      throw new IllegalStateException("Deque full");
    }
    return true;
  }
  
  public void clear()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      g localg;
      for (Object localObject1 = a; localObject1 != null; localObject1 = localg)
      {
        a = null;
        localg = c;
        b = null;
        c = null;
      }
      b = null;
      a = null;
      d = 0;
      g.signalAll();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public boolean contains(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      for (g localg = a; localg != null; localg = c)
      {
        boolean bool = paramObject.equals(a);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public int drainTo(Collection<? super E> paramCollection)
  {
    return drainTo(paramCollection, Integer.MAX_VALUE);
  }
  
  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    if (paramCollection == null) {
      throw new NullPointerException();
    }
    if (paramCollection == this) {
      throw new IllegalArgumentException();
    }
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      int i = Math.min(paramInt, d);
      paramInt = 0;
      while (paramInt < i)
      {
        paramCollection.add(a.a);
        b();
        paramInt += 1;
      }
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E element()
  {
    Object localObject = e();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  public Iterator<E> iterator()
  {
    return new f(this, (byte)0);
  }
  
  public boolean offer(E paramE)
  {
    return b(paramE);
  }
  
  public boolean offer(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    return a(paramE, paramLong, paramTimeUnit);
  }
  
  public E peek()
  {
    return (E)e();
  }
  
  public E poll()
  {
    return (E)c();
  }
  
  public E poll(long paramLong, TimeUnit paramTimeUnit)
  {
    return (E)a(paramLong, paramTimeUnit);
  }
  
  /* Error */
  public void put(E paramE)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 71	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 72	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: new 74	com/a/a/b/a/a/g
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 77	com/a/a/b/a/a/g:<init>	(Ljava/lang/Object;)V
    //   20: astore_2
    //   21: aload_0
    //   22: getfield 34	com/a/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_1
    //   26: aload_1
    //   27: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   30: aload_0
    //   31: aload_2
    //   32: invokespecial 80	com/a/a/b/a/a/d:b	(Lcom/a/a/b/a/a/g;)Z
    //   35: ifne +22 -> 57
    //   38: aload_0
    //   39: getfield 42	com/a/a/b/a/a/d:g	Ljava/util/concurrent/locks/Condition;
    //   42: invokeinterface 114 1 0
    //   47: goto -17 -> 30
    //   50: astore_2
    //   51: aload_1
    //   52: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   55: aload_2
    //   56: athrow
    //   57: aload_1
    //   58: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	d
    //   0	62	1	paramE	E
    //   20	12	2	localg	g
    //   50	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   30	47	50	finally
  }
  
  public int remainingCapacity()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      int i = e;
      int j = d;
      return i - j;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E remove()
  {
    return (E)a();
  }
  
  public boolean remove(Object paramObject)
  {
    return c(paramObject);
  }
  
  public int size()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      int i = d;
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E take()
  {
    return (E)d();
  }
  
  public Object[] toArray()
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    try
    {
      Object[] arrayOfObject = new Object[d];
      int i = 0;
      g localg = a;
      while (localg != null)
      {
        arrayOfObject[i] = a;
        localg = c;
        i += 1;
      }
      return arrayOfObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    ReentrantLock localReentrantLock = c;
    localReentrantLock.lock();
    Object localObject = paramArrayOfT;
    try
    {
      if (paramArrayOfT.length < d) {
        localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), d);
      }
      int i = 0;
      paramArrayOfT = a;
      while (paramArrayOfT != null)
      {
        localObject[i] = a;
        paramArrayOfT = c;
        i += 1;
      }
      if (localObject.length > i) {
        localObject[i] = null;
      }
      return (T[])localObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  /* Error */
  public String toString()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/a/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: astore 4
    //   6: aload 4
    //   8: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   11: aload_0
    //   12: getfield 83	com/a/a/b/a/a/d:a	Lcom/a/a/b/a/a/g;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +11 -> 28
    //   20: aload 4
    //   22: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: ldc -45
    //   27: areturn
    //   28: new 213	java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   35: astore 5
    //   37: aload 5
    //   39: bipush 91
    //   41: invokevirtual 218	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload_1
    //   46: getfield 88	com/a/a/b/a/a/g:a	Ljava/lang/Object;
    //   49: astore_3
    //   50: aload_3
    //   51: astore_2
    //   52: aload_3
    //   53: aload_0
    //   54: if_acmpne +6 -> 60
    //   57: ldc -36
    //   59: astore_2
    //   60: aload 5
    //   62: aload_2
    //   63: invokevirtual 223	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload_1
    //   68: getfield 85	com/a/a/b/a/a/g:c	Lcom/a/a/b/a/a/g;
    //   71: astore_1
    //   72: aload_1
    //   73: ifnonnull +21 -> 94
    //   76: aload 5
    //   78: bipush 93
    //   80: invokevirtual 218	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   83: invokevirtual 225	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore_1
    //   87: aload 4
    //   89: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   92: aload_1
    //   93: areturn
    //   94: aload 5
    //   96: bipush 44
    //   98: invokevirtual 218	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   101: bipush 32
    //   103: invokevirtual 218	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: goto -62 -> 45
    //   110: astore_1
    //   111: aload 4
    //   113: invokevirtual 61	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	d
    //   15	78	1	localObject1	Object
    //   110	7	1	localObject2	Object
    //   51	12	2	localObject3	Object
    //   49	4	3	localObject4	Object
    //   4	108	4	localReentrantLock	ReentrantLock
    //   35	60	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   11	16	110	finally
    //   28	45	110	finally
    //   45	50	110	finally
    //   60	72	110	finally
    //   76	87	110	finally
    //   94	107	110	finally
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.a.a.b.a.a;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

abstract class e
  implements Iterator<E>
{
  g<E> a;
  E b;
  private g<E> d;
  
  /* Error */
  e(d paramd)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 20	com/a/a/b/a/a/e:c	Lcom/a/a/b/a/a/d;
    //   5: aload_0
    //   6: invokespecial 23	java/lang/Object:<init>	()V
    //   9: aload_1
    //   10: getfield 28	com/a/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   13: astore_2
    //   14: aload_2
    //   15: invokevirtual 33	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   18: aload_0
    //   19: aload_0
    //   20: invokevirtual 36	com/a/a/b/a/a/e:a	()Lcom/a/a/b/a/a/g;
    //   23: putfield 38	com/a/a/b/a/a/e:a	Lcom/a/a/b/a/a/g;
    //   26: aload_0
    //   27: getfield 38	com/a/a/b/a/a/e:a	Lcom/a/a/b/a/a/g;
    //   30: ifnonnull +15 -> 45
    //   33: aconst_null
    //   34: astore_1
    //   35: aload_0
    //   36: aload_1
    //   37: putfield 40	com/a/a/b/a/a/e:b	Ljava/lang/Object;
    //   40: aload_2
    //   41: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   44: return
    //   45: aload_0
    //   46: getfield 38	com/a/a/b/a/a/e:a	Lcom/a/a/b/a/a/g;
    //   49: getfield 47	com/a/a/b/a/a/g:a	Ljava/lang/Object;
    //   52: astore_1
    //   53: goto -18 -> 35
    //   56: astore_1
    //   57: aload_2
    //   58: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	e
    //   0	63	1	paramd	d
    //   13	45	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   18	33	56	finally
    //   35	40	56	finally
    //   45	53	56	finally
  }
  
  private void b()
  {
    Object localObject4 = null;
    ReentrantLock localReentrantLock = c.c;
    localReentrantLock.lock();
    label101:
    for (;;)
    {
      try
      {
        Object localObject3 = a;
        g localg = a((g)localObject3);
        if (localg == null)
        {
          localObject1 = null;
          a = ((g)localObject1);
          if (a == null)
          {
            localObject1 = localObject4;
            b = localObject1;
          }
        }
        else
        {
          localObject1 = localg;
          if (a != null) {
            continue;
          }
          if (localg != localObject3) {
            break label101;
          }
          localObject1 = a();
          continue;
        }
        Object localObject1 = a.a;
        continue;
        localObject3 = localg;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }
  
  abstract g<E> a();
  
  abstract g<E> a(g<E> paramg);
  
  public boolean hasNext()
  {
    return a != null;
  }
  
  public E next()
  {
    if (a == null) {
      throw new NoSuchElementException();
    }
    d = a;
    Object localObject = b;
    b();
    return (E)localObject;
  }
  
  public void remove()
  {
    g localg = d;
    if (localg == null) {
      throw new IllegalStateException();
    }
    d = null;
    ReentrantLock localReentrantLock = c.c;
    localReentrantLock.lock();
    try
    {
      if (a != null) {
        c.a(localg);
      }
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
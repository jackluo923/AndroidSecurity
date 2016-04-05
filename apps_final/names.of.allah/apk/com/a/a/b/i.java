package com.a.a.b;

import android.widget.ImageView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class i
{
  final g a;
  Executor b;
  Executor c;
  ExecutorService d;
  final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
  final AtomicBoolean f = new AtomicBoolean(false);
  final AtomicBoolean g = new AtomicBoolean(false);
  final AtomicBoolean h = new AtomicBoolean(false);
  private final Map<String, ReentrantLock> i = new WeakHashMap();
  
  i(g paramg)
  {
    a = paramg;
    b = i;
    c = j;
    d = Executors.newCachedThreadPool();
  }
  
  private Executor b()
  {
    return a.a(a.m, a.n, a.o);
  }
  
  final String a(ImageView paramImageView)
  {
    return (String)e.get(Integer.valueOf(paramImageView.hashCode()));
  }
  
  final ReentrantLock a(String paramString)
  {
    ReentrantLock localReentrantLock2 = (ReentrantLock)i.get(paramString);
    ReentrantLock localReentrantLock1 = localReentrantLock2;
    if (localReentrantLock2 == null)
    {
      localReentrantLock1 = new ReentrantLock();
      i.put(paramString, localReentrantLock1);
    }
    return localReentrantLock1;
  }
  
  final void a()
  {
    if ((!a.k) && (((ExecutorService)b).isShutdown())) {
      b = b();
    }
    if ((!a.l) && (((ExecutorService)c).isShutdown())) {
      c = b();
    }
  }
  
  final void b(ImageView paramImageView)
  {
    e.remove(Integer.valueOf(paramImageView.hashCode()));
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
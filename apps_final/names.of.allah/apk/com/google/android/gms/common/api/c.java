package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hd.b;
import com.google.android.gms.internal.hn;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c
  implements GoogleApiClient
{
  private final Looper DC;
  private final Lock DN = new ReentrantLock();
  private final Condition DO = DN.newCondition();
  private final hd DP = new hd(paramContext, paramLooper, Eg);
  private final Fragment DQ;
  final Queue<c.c<?>> DR = new LinkedList();
  private ConnectionResult DS;
  private int DT;
  private int DU = 4;
  private int DV = 0;
  private boolean DW = false;
  private int DX;
  private long DY = 5000L;
  final Handler DZ;
  private final c.a Dv = new c.1(this);
  private final Bundle Ea = new Bundle();
  private final Map<Api.c<?>, Api.a> Eb = new HashMap();
  private final List<String> Ec;
  private boolean Ed;
  final Set<c.c<?>> Ee = Collections.newSetFromMap(new ConcurrentHashMap());
  final GoogleApiClient.ConnectionCallbacks Ef = new c.2(this);
  private final hd.b Eg = new c.3(this);
  
  public c(Context paramContext, Looper paramLooper, gz paramgz, Map<Api<?>, Api.ApiOptions> paramMap, Fragment paramFragment, Set<GoogleApiClient.ConnectionCallbacks> paramSet, Set<GoogleApiClient.OnConnectionFailedListener> paramSet1)
  {
    DQ = paramFragment;
    DC = paramLooper;
    DZ = new c.b(this, paramLooper);
    paramFragment = paramSet.iterator();
    while (paramFragment.hasNext())
    {
      paramSet = (GoogleApiClient.ConnectionCallbacks)paramFragment.next();
      DP.registerConnectionCallbacks(paramSet);
    }
    paramFragment = paramSet1.iterator();
    while (paramFragment.hasNext())
    {
      paramSet = (GoogleApiClient.OnConnectionFailedListener)paramFragment.next();
      DP.registerConnectionFailedListener(paramSet);
    }
    paramFragment = paramMap.keySet().iterator();
    while (paramFragment.hasNext())
    {
      paramSet = (Api)paramFragment.next();
      paramSet1 = paramSet.eu();
      Object localObject = paramMap.get(paramSet);
      Eb.put(paramSet.ew(), a(paramSet1, localObject, paramContext, paramLooper, paramgz, Ef, new c.4(this, paramSet1)));
    }
    Ec = Collections.unmodifiableList(paramgz.fg());
  }
  
  private static <C extends Api.a, O> C a(Api.b<C, O> paramb, Object paramObject, Context paramContext, Looper paramLooper, gz paramgz, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return paramb.a(paramContext, paramLooper, paramgz, paramObject, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  private <A extends Api.a> void a(c.c<A> paramc)
  {
    boolean bool2 = true;
    DN.lock();
    for (;;)
    {
      try
      {
        if (!isConnected())
        {
          if (eH())
          {
            break label152;
            hn.a(bool1, "GoogleApiClient is not connected yet.");
            if (paramc.ew() != null)
            {
              bool1 = bool2;
              hn.b(bool1, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
              Ee.add(paramc);
              paramc.a(Dv);
              if (!eH()) {
                continue;
              }
              paramc.m(new Status(8));
            }
          }
          else
          {
            bool1 = false;
            continue;
          }
          bool1 = false;
          continue;
          paramc.b(a(paramc.ew()));
          return;
        }
      }
      finally
      {
        DN.unlock();
      }
      label152:
      boolean bool1 = true;
    }
  }
  
  private void aa(int paramInt)
  {
    DN.lock();
    Object localObject2;
    try
    {
      if (DU == 3) {
        break label314;
      }
      if (paramInt != -1) {
        break label183;
      }
      if (isConnecting())
      {
        Iterator localIterator1 = DR.iterator();
        while (localIterator1.hasNext())
        {
          localObject2 = (c.c)localIterator1.next();
          if (((c.c)localObject2).eB() != 1)
          {
            ((c.c)localObject2).cancel();
            localIterator1.remove();
          }
        }
      }
      DR.clear();
    }
    finally
    {
      DN.unlock();
    }
    Iterator localIterator2 = Ee.iterator();
    while (localIterator2.hasNext()) {
      ((c.c)localIterator2.next()).cancel();
    }
    Ee.clear();
    if ((DS == null) && (!DR.isEmpty()))
    {
      DW = true;
      DN.unlock();
      return;
    }
    label183:
    boolean bool1 = isConnecting();
    boolean bool2 = isConnected();
    DU = 3;
    if (bool1)
    {
      if (paramInt == -1) {
        DS = null;
      }
      DO.signalAll();
    }
    Ed = false;
    localIterator2 = Eb.values().iterator();
    while (localIterator2.hasNext())
    {
      localObject2 = (Api.a)localIterator2.next();
      if (((Api.a)localObject2).isConnected()) {
        ((Api.a)localObject2).disconnect();
      }
    }
    Ed = true;
    DU = 4;
    if (bool2)
    {
      if (paramInt != -1) {
        DP.ao(paramInt);
      }
      Ed = false;
    }
    label314:
    DN.unlock();
  }
  
  private void eF()
  {
    DN.lock();
    for (;;)
    {
      try
      {
        DX -= 1;
        if (DX == 0)
        {
          if (DS == null) {
            break label128;
          }
          DW = false;
          aa(3);
          if (eH()) {
            DV -= 1;
          }
          if (eH())
          {
            DZ.sendMessageDelayed(DZ.obtainMessage(1), DY);
            Ed = false;
          }
        }
        else
        {
          return;
        }
        DP.a(DS);
        continue;
        DU = 2;
      }
      finally
      {
        DN.unlock();
      }
      label128:
      eI();
      DO.signalAll();
      eG();
      if (!DW) {
        break;
      }
      DW = false;
      aa(-1);
    }
    if (Ea.isEmpty()) {}
    for (Bundle localBundle = null;; localBundle = Ea)
    {
      DP.c(localBundle);
      break;
    }
  }
  
  private void eG()
  {
    boolean bool;
    if ((isConnected()) || (eH())) {
      bool = true;
    }
    for (;;)
    {
      hn.a(bool, "GoogleApiClient is not connected yet.");
      DN.lock();
      try
      {
        for (;;)
        {
          bool = DR.isEmpty();
          if (bool) {
            break;
          }
          try
          {
            a((c.c)DR.remove());
          }
          catch (DeadObjectException localDeadObjectException)
          {
            Log.w("GoogleApiClientImpl", "Service died while flushing queue", localDeadObjectException);
          }
        }
        bool = false;
      }
      finally
      {
        DN.unlock();
      }
    }
    DN.unlock();
  }
  
  /* Error */
  private boolean eH()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 229 1 0
    //   9: aload_0
    //   10: getfield 77	com/google/android/gms/common/api/c:DV	I
    //   13: istore_2
    //   14: iload_2
    //   15: ifeq +16 -> 31
    //   18: iconst_1
    //   19: istore_3
    //   20: aload_0
    //   21: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   24: invokeinterface 269 1 0
    //   29: iload_3
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_3
    //   33: goto -13 -> 20
    //   36: astore_1
    //   37: aload_0
    //   38: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   41: invokeinterface 269 1 0
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	c
    //   36	11	1	localObject	Object
    //   13	2	2	i	int
    //   19	14	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	14	36	finally
  }
  
  private void eI()
  {
    DN.lock();
    try
    {
      DV = 0;
      DZ.removeMessages(1);
      return;
    }
    finally
    {
      DN.unlock();
    }
  }
  
  public final <C extends Api.a> C a(Api.c<C> paramc)
  {
    paramc = (Api.a)Eb.get(paramc);
    hn.b(paramc, "Appropriate Api was not requested.");
    return paramc;
  }
  
  /* Error */
  public final <A extends Api.a, T extends a.b<? extends Result, A>> T a(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 229 1 0
    //   9: aload_0
    //   10: invokevirtual 232	com/google/android/gms/common/api/c:isConnected	()Z
    //   13: ifeq +20 -> 33
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 396	com/google/android/gms/common/api/c:b	(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    //   21: pop
    //   22: aload_0
    //   23: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   26: invokeinterface 269 1 0
    //   31: aload_1
    //   32: areturn
    //   33: aload_0
    //   34: getfield 73	com/google/android/gms/common/api/c:DR	Ljava/util/Queue;
    //   37: aload_1
    //   38: invokeinterface 397 2 0
    //   43: pop
    //   44: goto -22 -> 22
    //   47: astore_1
    //   48: aload_0
    //   49: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   52: invokeinterface 269 1 0
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	c
    //   0	59	1	paramT	T
    // Exception table:
    //   from	to	target	type
    //   9	22	47	finally
    //   33	44	47	finally
  }
  
  public final <A extends Api.a, T extends a.b<? extends Result, A>> T b(T paramT)
  {
    if ((isConnected()) || (eH())) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "GoogleApiClient is not connected yet.");
      eG();
      try
      {
        a(paramT);
        return paramT;
      }
      catch (DeadObjectException localDeadObjectException)
      {
        aa(1);
      }
    }
    return paramT;
  }
  
  public final ConnectionResult blockingConnect()
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      hn.a(bool, "blockingConnect must not be called on the UI thread");
      DN.lock();
      try
      {
        connect();
        for (;;)
        {
          bool = isConnecting();
          if (!bool) {
            break label86;
          }
          try
          {
            DO.await();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
            localConnectionResult = new ConnectionResult(15, null);
            return localConnectionResult;
          }
        }
        bool = false;
        continue;
        label86:
        if (isConnected())
        {
          localConnectionResult = ConnectionResult.CP;
          return localConnectionResult;
        }
        if (DS != null)
        {
          localConnectionResult = DS;
          return localConnectionResult;
        }
        ConnectionResult localConnectionResult = new ConnectionResult(13, null);
        return localConnectionResult;
      }
      finally
      {
        DN.unlock();
      }
    }
  }
  
  public final ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      hn.a(bool, "blockingConnect must not be called on the UI thread");
      DN.lock();
      try
      {
        connect();
        paramLong = paramTimeUnit.toNanos(paramLong);
        for (;;)
        {
          bool = isConnecting();
          if (!bool) {
            break;
          }
          try
          {
            long l = DO.awaitNanos(paramLong);
            paramLong = l;
            if (l <= 0L)
            {
              paramTimeUnit = new ConnectionResult(14, null);
              return paramTimeUnit;
            }
          }
          catch (InterruptedException paramTimeUnit)
          {
            Thread.currentThread().interrupt();
            paramTimeUnit = new ConnectionResult(15, null);
            return paramTimeUnit;
          }
        }
        bool = false;
        continue;
        if (isConnected())
        {
          paramTimeUnit = ConnectionResult.CP;
          return paramTimeUnit;
        }
        if (DS != null)
        {
          paramTimeUnit = DS;
          return paramTimeUnit;
        }
        paramTimeUnit = new ConnectionResult(13, null);
        return paramTimeUnit;
      }
      finally
      {
        DN.unlock();
      }
    }
  }
  
  public final void connect()
  {
    DN.lock();
    try
    {
      DW = false;
      if (!isConnected())
      {
        boolean bool = isConnecting();
        if (!bool) {}
      }
      else
      {
        return;
      }
      Ed = true;
      DS = null;
      DU = 1;
      Ea.clear();
      DX = Eb.size();
      Iterator localIterator = Eb.values().iterator();
      while (localIterator.hasNext()) {
        ((Api.a)localIterator.next()).connect();
      }
    }
    finally
    {
      DN.unlock();
    }
  }
  
  public final void disconnect()
  {
    eI();
    aa(-1);
  }
  
  public final Looper getLooper()
  {
    return DC;
  }
  
  /* Error */
  public final boolean isConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 229 1 0
    //   9: aload_0
    //   10: getfield 75	com/google/android/gms/common/api/c:DU	I
    //   13: istore_2
    //   14: iload_2
    //   15: iconst_2
    //   16: if_icmpne +16 -> 32
    //   19: iconst_1
    //   20: istore_3
    //   21: aload_0
    //   22: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 269 1 0
    //   30: iload_3
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_3
    //   34: goto -13 -> 21
    //   37: astore_1
    //   38: aload_0
    //   39: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   42: invokeinterface 269 1 0
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	c
    //   37	11	1	localObject	Object
    //   13	4	2	i	int
    //   20	14	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	14	37	finally
  }
  
  /* Error */
  public final boolean isConnecting()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   6: invokeinterface 229 1 0
    //   11: aload_0
    //   12: getfield 75	com/google/android/gms/common/api/c:DU	I
    //   15: istore_2
    //   16: iload_2
    //   17: iconst_1
    //   18: if_icmpne +14 -> 32
    //   21: aload_0
    //   22: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 269 1 0
    //   30: iload_3
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_3
    //   34: goto -13 -> 21
    //   37: astore_1
    //   38: aload_0
    //   39: getfield 60	com/google/android/gms/common/api/c:DN	Ljava/util/concurrent/locks/Lock;
    //   42: invokeinterface 269 1 0
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	c
    //   37	11	1	localObject	Object
    //   15	4	2	i	int
    //   1	33	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	16	37	finally
  }
  
  public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return DP.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return DP.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public final void reconnect()
  {
    disconnect();
    connect();
  }
  
  public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DP.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DP.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public final void stopAutoManage()
  {
    if (DQ != null) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Called stopAutoManage but automatic lifecycle management is not enabled.");
      if (DQ.getActivity() != null)
      {
        DQ.getActivity().getSupportFragmentManager().beginTransaction().remove(DQ).commit();
        disconnect();
      }
      return;
    }
  }
  
  public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DP.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DP.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
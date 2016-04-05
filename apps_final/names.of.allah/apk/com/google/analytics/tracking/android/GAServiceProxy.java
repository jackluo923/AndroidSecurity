package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class GAServiceProxy
  implements AnalyticsGmsCoreClient.OnConnectedListener, AnalyticsGmsCoreClient.OnConnectionFailedListener, ServiceProxy
{
  private static final long FAILED_CONNECT_WAIT_TIME = 3000L;
  private static final int MAX_TRIES = 2;
  private static final long RECONNECT_WAIT_TIME = 5000L;
  private static final long SERVICE_CONNECTION_TIMEOUT = 300000L;
  private volatile AnalyticsClient client;
  private Clock clock;
  private volatile int connectTries;
  private final Context ctx;
  private volatile Timer disconnectCheckTimer;
  private volatile Timer failedConnectTimer;
  private boolean forceLocalDispatch;
  private final GoogleAnalytics gaInstance;
  private long idleTimeout = 300000L;
  private volatile long lastRequestTime;
  private boolean pendingClearHits;
  private boolean pendingDispatch;
  private boolean pendingServiceDisconnect;
  private final Queue<GAServiceProxy.HitParams> queue = new ConcurrentLinkedQueue();
  private volatile Timer reConnectTimer;
  private volatile GAServiceProxy.ConnectState state;
  private AnalyticsStore store;
  private AnalyticsStore testStore;
  private final AnalyticsThread thread;
  
  GAServiceProxy(Context paramContext, AnalyticsThread paramAnalyticsThread)
  {
    this(paramContext, paramAnalyticsThread, null, GoogleAnalytics.getInstance(paramContext));
  }
  
  @VisibleForTesting
  GAServiceProxy(Context paramContext, AnalyticsThread paramAnalyticsThread, AnalyticsStore paramAnalyticsStore, GoogleAnalytics paramGoogleAnalytics)
  {
    testStore = paramAnalyticsStore;
    ctx = paramContext;
    thread = paramAnalyticsThread;
    gaInstance = paramGoogleAnalytics;
    clock = new GAServiceProxy.1(this);
    connectTries = 0;
    state = GAServiceProxy.ConnectState.DISCONNECTED;
  }
  
  private Timer cancelTimer(Timer paramTimer)
  {
    if (paramTimer != null) {
      paramTimer.cancel();
    }
    return null;
  }
  
  private void clearAllTimers()
  {
    reConnectTimer = cancelTimer(reConnectTimer);
    failedConnectTimer = cancelTimer(failedConnectTimer);
    disconnectCheckTimer = cancelTimer(disconnectCheckTimer);
  }
  
  private void connectToService()
  {
    for (;;)
    {
      try
      {
        if ((!forceLocalDispatch) && (client != null))
        {
          GAServiceProxy.ConnectState localConnectState1 = state;
          GAServiceProxy.ConnectState localConnectState2 = GAServiceProxy.ConnectState.CONNECTED_LOCAL;
          if (localConnectState1 != localConnectState2) {
            try
            {
              connectTries += 1;
              cancelTimer(failedConnectTimer);
              state = GAServiceProxy.ConnectState.CONNECTING;
              failedConnectTimer = new Timer("Failed Connect");
              failedConnectTimer.schedule(new GAServiceProxy.FailedConnectTask(this, null), 3000L);
              Log.v("connecting to Analytics service");
              client.connect();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              Log.w("security exception on connectToService");
              useStore();
              continue;
            }
          }
        }
        Log.w("client not initialized.");
      }
      finally {}
      useStore();
    }
  }
  
  private void disconnectFromService()
  {
    try
    {
      if ((client != null) && (state == GAServiceProxy.ConnectState.CONNECTED_SERVICE))
      {
        state = GAServiceProxy.ConnectState.PENDING_DISCONNECT;
        client.disconnect();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void dispatchToStore()
  {
    store.dispatch();
    pendingDispatch = false;
  }
  
  private void fireReconnectAttempt()
  {
    reConnectTimer = cancelTimer(reConnectTimer);
    reConnectTimer = new Timer("Service Reconnect");
    reConnectTimer.schedule(new GAServiceProxy.ReconnectTask(this, null), 5000L);
  }
  
  private void sendQueue()
  {
    for (;;)
    {
      try
      {
        if (!Thread.currentThread().equals(thread.getThread()))
        {
          thread.getQueue().add(new GAServiceProxy.2(this));
          return;
        }
        if (pendingClearHits) {
          clearHits();
        }
        switch (GAServiceProxy.3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[state.ordinal()])
        {
        case 1: 
          if (!queue.isEmpty())
          {
            GAServiceProxy.HitParams localHitParams1 = (GAServiceProxy.HitParams)queue.poll();
            Log.v("Sending hit to store  " + localHitParams1);
            store.putHit(localHitParams1.getWireFormatParams(), localHitParams1.getHitTimeInMilliseconds(), localHitParams1.getPath(), localHitParams1.getCommands());
            continue;
          }
          if (!pendingDispatch) {
            continue;
          }
        }
      }
      finally {}
      dispatchToStore();
      continue;
      if (!queue.isEmpty())
      {
        GAServiceProxy.HitParams localHitParams2 = (GAServiceProxy.HitParams)queue.peek();
        Log.v("Sending hit to service   " + localHitParams2);
        if (!gaInstance.isDryRunEnabled()) {
          client.sendHit(localHitParams2.getWireFormatParams(), localHitParams2.getHitTimeInMilliseconds(), localHitParams2.getPath(), localHitParams2.getCommands());
        }
        for (;;)
        {
          queue.poll();
          break;
          Log.v("Dry run enabled. Hit not actually sent to service.");
        }
      }
      lastRequestTime = clock.currentTimeMillis();
      continue;
      Log.v("Need to reconnect");
      if (!queue.isEmpty()) {
        connectToService();
      }
    }
  }
  
  private void useStore()
  {
    for (;;)
    {
      try
      {
        GAServiceProxy.ConnectState localConnectState1 = state;
        GAServiceProxy.ConnectState localConnectState2 = GAServiceProxy.ConnectState.CONNECTED_LOCAL;
        if (localConnectState1 == localConnectState2) {
          return;
        }
        clearAllTimers();
        Log.v("falling back to local store");
        if (testStore != null)
        {
          store = testStore;
          state = GAServiceProxy.ConnectState.CONNECTED_LOCAL;
          sendQueue();
          continue;
        }
        localGAServiceManager = GAServiceManager.getInstance();
      }
      finally {}
      GAServiceManager localGAServiceManager;
      localGAServiceManager.initialize(ctx, thread);
      store = localGAServiceManager.getStore();
    }
  }
  
  public void clearHits()
  {
    Log.v("clearHits called");
    queue.clear();
    switch (GAServiceProxy.3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[state.ordinal()])
    {
    default: 
      pendingClearHits = true;
      return;
    case 1: 
      store.clearHits(0L);
      pendingClearHits = false;
      return;
    }
    client.clearHits();
    pendingClearHits = false;
  }
  
  public void createService()
  {
    if (client != null) {
      return;
    }
    client = new AnalyticsGmsCoreClient(ctx, this, this);
    connectToService();
  }
  
  void createService(AnalyticsClient paramAnalyticsClient)
  {
    if (client != null) {
      return;
    }
    client = paramAnalyticsClient;
    connectToService();
  }
  
  public void dispatch()
  {
    switch (GAServiceProxy.3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[state.ordinal()])
    {
    default: 
      pendingDispatch = true;
    case 2: 
      return;
    }
    dispatchToStore();
  }
  
  /* Error */
  public void onConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_0
    //   5: getfield 146	com/google/analytics/tracking/android/GAServiceProxy:failedConnectTimer	Ljava/util/Timer;
    //   8: invokespecial 144	com/google/analytics/tracking/android/GAServiceProxy:cancelTimer	(Ljava/util/Timer;)Ljava/util/Timer;
    //   11: putfield 146	com/google/analytics/tracking/android/GAServiceProxy:failedConnectTimer	Ljava/util/Timer;
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 93	com/google/analytics/tracking/android/GAServiceProxy:connectTries	I
    //   19: ldc_w 360
    //   22: invokestatic 179	com/google/analytics/tracking/android/Log:v	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getstatic 194	com/google/analytics/tracking/android/GAServiceProxy$ConnectState:CONNECTED_SERVICE	Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    //   29: putfield 100	com/google/analytics/tracking/android/GAServiceProxy:state	Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    //   32: aload_0
    //   33: getfield 362	com/google/analytics/tracking/android/GAServiceProxy:pendingServiceDisconnect	Z
    //   36: ifeq +15 -> 51
    //   39: aload_0
    //   40: invokespecial 111	com/google/analytics/tracking/android/GAServiceProxy:disconnectFromService	()V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 362	com/google/analytics/tracking/android/GAServiceProxy:pendingServiceDisconnect	Z
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: invokespecial 105	com/google/analytics/tracking/android/GAServiceProxy:sendQueue	()V
    //   55: aload_0
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 115	com/google/analytics/tracking/android/GAServiceProxy:disconnectCheckTimer	Ljava/util/Timer;
    //   61: invokespecial 144	com/google/analytics/tracking/android/GAServiceProxy:cancelTimer	(Ljava/util/Timer;)Ljava/util/Timer;
    //   64: putfield 115	com/google/analytics/tracking/android/GAServiceProxy:disconnectCheckTimer	Ljava/util/Timer;
    //   67: aload_0
    //   68: new 136	java/util/Timer
    //   71: dup
    //   72: ldc_w 364
    //   75: invokespecial 163	java/util/Timer:<init>	(Ljava/lang/String;)V
    //   78: putfield 115	com/google/analytics/tracking/android/GAServiceProxy:disconnectCheckTimer	Ljava/util/Timer;
    //   81: aload_0
    //   82: getfield 115	com/google/analytics/tracking/android/GAServiceProxy:disconnectCheckTimer	Ljava/util/Timer;
    //   85: new 366	com/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask
    //   88: dup
    //   89: aload_0
    //   90: aconst_null
    //   91: invokespecial 367	com/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask:<init>	(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    //   94: aload_0
    //   95: getfield 76	com/google/analytics/tracking/android/GAServiceProxy:idleTimeout	J
    //   98: invokevirtual 172	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   101: goto -53 -> 48
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	GAServiceProxy
    //   104	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	48	104	finally
    //   51	101	104	finally
  }
  
  /* Error */
  public void onConnectionFailed(int paramInt, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getstatic 372	com/google/analytics/tracking/android/GAServiceProxy$ConnectState:PENDING_CONNECTION	Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    //   6: putfield 100	com/google/analytics/tracking/android/GAServiceProxy:state	Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    //   9: aload_0
    //   10: getfield 93	com/google/analytics/tracking/android/GAServiceProxy:connectTries	I
    //   13: iconst_2
    //   14: if_icmpge +36 -> 50
    //   17: new 272	java/lang/StringBuilder
    //   20: dup
    //   21: ldc_w 374
    //   24: invokespecial 275	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: iload_1
    //   28: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   31: ldc_w 379
    //   34: invokevirtual 382	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 283	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 189	com/google/analytics/tracking/android/Log:w	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokespecial 384	com/google/analytics/tracking/android/GAServiceProxy:fireReconnectAttempt	()V
    //   47: aload_0
    //   48: monitorexit
    //   49: return
    //   50: new 272	java/lang/StringBuilder
    //   53: dup
    //   54: ldc_w 374
    //   57: invokespecial 275	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: iload_1
    //   61: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: ldc_w 386
    //   67: invokevirtual 382	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 283	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 189	com/google/analytics/tracking/android/Log:w	(Ljava/lang/String;)V
    //   76: aload_0
    //   77: invokespecial 121	com/google/analytics/tracking/android/GAServiceProxy:useStore	()V
    //   80: goto -33 -> 47
    //   83: astore_2
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_2
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	GAServiceProxy
    //   0	88	1	paramInt	int
    //   0	88	2	paramIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   2	47	83	finally
    //   50	80	83	finally
  }
  
  public void onDisconnected()
  {
    for (;;)
    {
      try
      {
        if (state == GAServiceProxy.ConnectState.PENDING_DISCONNECT)
        {
          Log.v("Disconnected from service");
          clearAllTimers();
          state = GAServiceProxy.ConnectState.DISCONNECTED;
          return;
        }
        Log.v("Unexpected disconnect.");
        state = GAServiceProxy.ConnectState.PENDING_CONNECTION;
        if (connectTries < 2) {
          fireReconnectAttempt();
        } else {
          useStore();
        }
      }
      finally {}
    }
  }
  
  public void putHit(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    Log.v("putHit called");
    queue.add(new GAServiceProxy.HitParams(paramMap, paramLong, paramString, paramList));
    sendQueue();
  }
  
  void setClock(Clock paramClock)
  {
    clock = paramClock;
  }
  
  public void setForceLocalDispatch()
  {
    for (;;)
    {
      try
      {
        boolean bool = forceLocalDispatch;
        if (bool) {
          return;
        }
        Log.v("setForceLocalDispatch called.");
        forceLocalDispatch = true;
        switch (GAServiceProxy.3.$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState[state.ordinal()])
        {
        case 1: 
        case 2: 
          disconnectFromService();
          break;
        case 3: 
          pendingServiceDisconnect = true;
        }
      }
      finally {}
    }
  }
  
  public void setIdleTimeout(long paramLong)
  {
    idleTimeout = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
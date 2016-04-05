package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ConnectionPool
{
  private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000L;
  private static final int MAX_CONNECTIONS_TO_CLEANUP = 2;
  private static final ConnectionPool systemDefault;
  private final LinkedList<Connection> connections = new LinkedList();
  private final Callable<Void> connectionsCleanupCallable = new Callable()
  {
    public Void call()
      throws Exception
    {
      ArrayList localArrayList = new ArrayList(2);
      int i = 0;
      synchronized (ConnectionPool.this)
      {
        ListIterator localListIterator = connections.listIterator(connections.size());
        for (;;)
        {
          Connection localConnection;
          if (localListIterator.hasPrevious())
          {
            localConnection = (Connection)localListIterator.previous();
            if ((!localConnection.isAlive()) || (localConnection.isExpired(keepAliveDurationNs)))
            {
              localListIterator.remove();
              localArrayList.add(localConnection);
              if (localArrayList.size() != 2) {
                continue;
              }
            }
          }
          else
          {
            localListIterator = connections.listIterator(connections.size());
            while ((localListIterator.hasPrevious()) && (i > maxIdleConnections))
            {
              localConnection = (Connection)localListIterator.previous();
              if (localConnection.isIdle())
              {
                localArrayList.add(localConnection);
                localListIterator.remove();
                i -= 1;
              }
            }
          }
          if (localConnection.isIdle()) {
            i += 1;
          }
        }
        ??? = localArrayList.iterator();
        if (((Iterator)???).hasNext()) {
          Util.closeQuietly((Connection)((Iterator)???).next());
        }
      }
      return null;
    }
  };
  private final ExecutorService executorService = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final long keepAliveDurationNs;
  private final int maxIdleConnections;
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      systemDefault = new ConnectionPool(0, l);
      return;
    }
    if (str3 != null)
    {
      systemDefault = new ConnectionPool(Integer.parseInt(str3), l);
      return;
    }
    systemDefault = new ConnectionPool(5, l);
  }
  
  public ConnectionPool(int paramInt, long paramLong)
  {
    maxIdleConnections = paramInt;
    keepAliveDurationNs = (paramLong * 1000L * 1000L);
  }
  
  public static ConnectionPool getDefault()
  {
    return systemDefault;
  }
  
  private void waitForCleanupCallableToRun()
  {
    try
    {
      executorService.submit(new Runnable()
      {
        public void run() {}
      }).get();
      return;
    }
    catch (Exception localException)
    {
      throw new AssertionError();
    }
  }
  
  public void evictAll()
  {
    try
    {
      Object localObject1 = new ArrayList(connections);
      connections.clear();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        Util.closeQuietly((Connection)((Iterator)localObject1).next());
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public Connection get(Address paramAddress)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 73	com/squareup/okhttp/ConnectionPool:connections	Ljava/util/LinkedList;
    //   8: aload_0
    //   9: getfield 73	com/squareup/okhttp/ConnectionPool:connections	Ljava/util/LinkedList;
    //   12: invokevirtual 168	java/util/LinkedList:size	()I
    //   15: invokevirtual 172	java/util/LinkedList:listIterator	(I)Ljava/util/ListIterator;
    //   18: astore 4
    //   20: aload_3
    //   21: astore_2
    //   22: aload 4
    //   24: invokeinterface 177 1 0
    //   29: ifeq +79 -> 108
    //   32: aload 4
    //   34: invokeinterface 180 1 0
    //   39: checkcast 155	com/squareup/okhttp/Connection
    //   42: astore_2
    //   43: aload_2
    //   44: invokevirtual 184	com/squareup/okhttp/Connection:getRoute	()Lcom/squareup/okhttp/Route;
    //   47: invokevirtual 190	com/squareup/okhttp/Route:getAddress	()Lcom/squareup/okhttp/Address;
    //   50: aload_1
    //   51: invokevirtual 196	com/squareup/okhttp/Address:equals	(Ljava/lang/Object;)Z
    //   54: ifeq -34 -> 20
    //   57: aload_2
    //   58: invokevirtual 199	com/squareup/okhttp/Connection:isAlive	()Z
    //   61: ifeq -41 -> 20
    //   64: invokestatic 203	java/lang/System:nanoTime	()J
    //   67: aload_2
    //   68: invokevirtual 206	com/squareup/okhttp/Connection:getIdleStartTimeNs	()J
    //   71: lsub
    //   72: aload_0
    //   73: getfield 102	com/squareup/okhttp/ConnectionPool:keepAliveDurationNs	J
    //   76: lcmp
    //   77: ifge -57 -> 20
    //   80: aload 4
    //   82: invokeinterface 209 1 0
    //   87: aload_2
    //   88: invokevirtual 212	com/squareup/okhttp/Connection:isSpdy	()Z
    //   91: istore 6
    //   93: iload 6
    //   95: ifne +13 -> 108
    //   98: invokestatic 217	com/squareup/okhttp/internal/Platform:get	()Lcom/squareup/okhttp/internal/Platform;
    //   101: aload_2
    //   102: invokevirtual 221	com/squareup/okhttp/Connection:getSocket	()Ljava/net/Socket;
    //   105: invokevirtual 225	com/squareup/okhttp/internal/Platform:tagSocket	(Ljava/net/Socket;)V
    //   108: aload_2
    //   109: ifnull +18 -> 127
    //   112: aload_2
    //   113: invokevirtual 212	com/squareup/okhttp/Connection:isSpdy	()Z
    //   116: ifeq +11 -> 127
    //   119: aload_0
    //   120: getfield 73	com/squareup/okhttp/ConnectionPool:connections	Ljava/util/LinkedList;
    //   123: aload_2
    //   124: invokevirtual 229	java/util/LinkedList:addFirst	(Ljava/lang/Object;)V
    //   127: aload_0
    //   128: getfield 91	com/squareup/okhttp/ConnectionPool:executorService	Ljava/util/concurrent/ExecutorService;
    //   131: aload_0
    //   132: getfield 96	com/squareup/okhttp/ConnectionPool:connectionsCleanupCallable	Ljava/util/concurrent/Callable;
    //   135: invokeinterface 232 2 0
    //   140: pop
    //   141: aload_0
    //   142: monitorexit
    //   143: aload_2
    //   144: areturn
    //   145: astore 5
    //   147: aload_2
    //   148: invokestatic 161	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   151: invokestatic 217	com/squareup/okhttp/internal/Platform:get	()Lcom/squareup/okhttp/internal/Platform;
    //   154: new 234	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   161: ldc -19
    //   163: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload 5
    //   168: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokevirtual 252	com/squareup/okhttp/internal/Platform:logW	(Ljava/lang/String;)V
    //   177: goto -157 -> 20
    //   180: astore_1
    //   181: aload_0
    //   182: monitorexit
    //   183: aload_1
    //   184: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	ConnectionPool
    //   0	185	1	paramAddress	Address
    //   21	127	2	localObject1	Object
    //   3	18	3	localObject2	Object
    //   18	63	4	localListIterator	ListIterator
    //   145	22	5	localSocketException	SocketException
    //   91	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   98	108	145	java/net/SocketException
    //   4	20	180	finally
    //   22	93	180	finally
    //   98	108	180	finally
    //   112	127	180	finally
    //   127	141	180	finally
    //   147	177	180	finally
  }
  
  public int getConnectionCount()
  {
    try
    {
      int i = connections.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  List<Connection> getConnections()
  {
    waitForCleanupCallableToRun();
    try
    {
      ArrayList localArrayList = new ArrayList(connections);
      return localArrayList;
    }
    finally {}
  }
  
  public int getHttpConnectionCount()
  {
    int i = 0;
    try
    {
      Iterator localIterator = connections.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = ((Connection)localIterator.next()).isSpdy();
        if (!bool) {
          i += 1;
        }
      }
      return i;
    }
    finally {}
  }
  
  public int getSpdyConnectionCount()
  {
    int i = 0;
    try
    {
      Iterator localIterator = connections.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = ((Connection)localIterator.next()).isSpdy();
        if (bool) {
          i += 1;
        }
      }
      return i;
    }
    finally {}
  }
  
  public void maybeShare(Connection paramConnection)
  {
    executorService.submit(connectionsCleanupCallable);
    if (!paramConnection.isSpdy()) {}
    while (!paramConnection.isAlive()) {
      return;
    }
    try
    {
      connections.addFirst(paramConnection);
      return;
    }
    finally {}
  }
  
  public void recycle(Connection paramConnection)
  {
    executorService.submit(connectionsCleanupCallable);
    if (paramConnection.isSpdy()) {
      return;
    }
    if (!paramConnection.isAlive())
    {
      Util.closeQuietly(paramConnection);
      return;
    }
    try
    {
      Platform.get().untagSocket(paramConnection.getSocket());
      try
      {
        connections.addFirst(paramConnection);
        paramConnection.resetIdleStartTime();
        return;
      }
      finally {}
      return;
    }
    catch (SocketException localSocketException)
    {
      Platform.get().logW("Unable to untagSocket(): " + localSocketException);
      Util.closeQuietly(paramConnection);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.ConnectionPool
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
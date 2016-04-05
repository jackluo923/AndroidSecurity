package org.java_websocket.server;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.java_websocket.WebSocketImpl;

public class WebSocketServer$WebSocketWorker
  extends Thread
{
  private BlockingQueue<WebSocketImpl> iqueue = new LinkedBlockingQueue();
  
  static
  {
    if (!WebSocketServer.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public WebSocketServer$WebSocketWorker(final WebSocketServer paramWebSocketServer)
  {
    setName("WebSocketWorker-" + getId());
    setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        Thread.getDefaultUncaughtExceptionHandler().uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
      }
    });
  }
  
  public void put(WebSocketImpl paramWebSocketImpl)
    throws InterruptedException
  {
    iqueue.put(paramWebSocketImpl);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_1
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 38	org/java_websocket/server/WebSocketServer$WebSocketWorker:iqueue	Ljava/util/concurrent/BlockingQueue;
    //   8: invokeinterface 90 1 0
    //   13: checkcast 92	org/java_websocket/WebSocketImpl
    //   16: astore_1
    //   17: aload_1
    //   18: astore_2
    //   19: aload_1
    //   20: getfield 95	org/java_websocket/WebSocketImpl:inQueue	Ljava/util/concurrent/BlockingQueue;
    //   23: invokeinterface 98 1 0
    //   28: checkcast 100	java/nio/ByteBuffer
    //   31: astore_3
    //   32: aload_1
    //   33: astore_2
    //   34: getstatic 26	org/java_websocket/server/WebSocketServer$WebSocketWorker:$assertionsDisabled	Z
    //   37: ifne +28 -> 65
    //   40: aload_3
    //   41: ifnonnull +24 -> 65
    //   44: aload_1
    //   45: astore_2
    //   46: new 102	java/lang/AssertionError
    //   49: dup
    //   50: invokespecial 103	java/lang/AssertionError:<init>	()V
    //   53: athrow
    //   54: astore_1
    //   55: aload_0
    //   56: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
    //   59: aload_2
    //   60: aload_1
    //   61: invokestatic 107	org/java_websocket/server/WebSocketServer:access$200	(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/RuntimeException;)V
    //   64: return
    //   65: aload_1
    //   66: aload_3
    //   67: invokevirtual 111	org/java_websocket/WebSocketImpl:decode	(Ljava/nio/ByteBuffer;)V
    //   70: aload_1
    //   71: astore_2
    //   72: aload_0
    //   73: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
    //   76: aload_3
    //   77: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    //   80: goto -78 -> 2
    //   83: astore_1
    //   84: return
    //   85: astore_2
    //   86: aload_0
    //   87: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
    //   90: aload_1
    //   91: aload_2
    //   92: invokestatic 119	org/java_websocket/server/WebSocketServer:access$000	(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    //   95: aload_1
    //   96: astore_2
    //   97: aload_0
    //   98: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
    //   101: aload_3
    //   102: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    //   105: goto -103 -> 2
    //   108: astore_1
    //   109: aload_1
    //   110: invokevirtual 122	java/lang/Throwable:printStackTrace	()V
    //   113: return
    //   114: astore 4
    //   116: aload_1
    //   117: astore_2
    //   118: aload_0
    //   119: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
    //   122: aload_3
    //   123: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    //   126: aload_1
    //   127: astore_2
    //   128: aload 4
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	WebSocketWorker
    //   1	44	1	localWebSocketImpl	WebSocketImpl
    //   54	17	1	localRuntimeException	RuntimeException
    //   83	13	1	localInterruptedException	InterruptedException
    //   108	19	1	localThrowable	Throwable
    //   3	69	2	localObject1	Object
    //   85	7	2	localIOException	java.io.IOException
    //   96	32	2	localObject2	Object
    //   31	92	3	localByteBuffer	java.nio.ByteBuffer
    //   114	15	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   4	17	54	java/lang/RuntimeException
    //   19	32	54	java/lang/RuntimeException
    //   34	40	54	java/lang/RuntimeException
    //   46	54	54	java/lang/RuntimeException
    //   72	80	54	java/lang/RuntimeException
    //   97	105	54	java/lang/RuntimeException
    //   118	126	54	java/lang/RuntimeException
    //   128	131	54	java/lang/RuntimeException
    //   4	17	83	java/lang/InterruptedException
    //   19	32	83	java/lang/InterruptedException
    //   34	40	83	java/lang/InterruptedException
    //   46	54	83	java/lang/InterruptedException
    //   72	80	83	java/lang/InterruptedException
    //   97	105	83	java/lang/InterruptedException
    //   118	126	83	java/lang/InterruptedException
    //   128	131	83	java/lang/InterruptedException
    //   65	70	85	java/io/IOException
    //   4	17	108	java/lang/Throwable
    //   19	32	108	java/lang/Throwable
    //   34	40	108	java/lang/Throwable
    //   46	54	108	java/lang/Throwable
    //   72	80	108	java/lang/Throwable
    //   97	105	108	java/lang/Throwable
    //   118	126	108	java/lang/Throwable
    //   128	131	108	java/lang/Throwable
    //   65	70	114	finally
    //   86	95	114	finally
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.server.WebSocketServer.WebSocketWorker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
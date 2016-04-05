package org.java_websocket.server;

class WebSocketServer$WebSocketWorker$1
  implements Thread.UncaughtExceptionHandler
{
  WebSocketServer$WebSocketWorker$1(WebSocketServer.WebSocketWorker paramWebSocketWorker, WebSocketServer paramWebSocketServer) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.server.WebSocketServer.WebSocketWorker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
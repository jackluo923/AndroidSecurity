package org.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.util.concurrent.BlockingQueue;

public class SocketChannelIOHelper
{
  public static boolean batch(WebSocketImpl paramWebSocketImpl, ByteChannel paramByteChannel)
    throws IOException
  {
    ByteBuffer localByteBuffer = (ByteBuffer)outQueue.peek();
    Object localObject = localByteBuffer;
    if (localByteBuffer == null) {
      if ((paramByteChannel instanceof WrappedByteChannel))
      {
        localObject = (WrappedByteChannel)paramByteChannel;
        if (((WrappedByteChannel)localObject).isNeedWrite()) {
          ((WrappedByteChannel)localObject).writeMore();
        }
      }
    }
    for (;;)
    {
      if ((outQueue.peek() == null) && (paramWebSocketImpl.isClosed())) {}
      do
      {
        try
        {
          paramByteChannel.close();
          if ((paramByteChannel instanceof WrappedByteChannel == true) && (((WrappedByteChannel)paramByteChannel).isNeedWrite())) {
            break;
          }
          return true;
        }
        finally {}
        paramByteChannel.write((ByteBuffer)localObject);
        if (((ByteBuffer)localObject).remaining() > 0) {
          return false;
        }
        outQueue.poll();
        localByteBuffer = (ByteBuffer)outQueue.peek();
        localObject = localByteBuffer;
      } while (localByteBuffer != null);
    }
    return false;
  }
  
  public static boolean read(ByteBuffer paramByteBuffer, WebSocketImpl paramWebSocketImpl, ByteChannel paramByteChannel)
    throws IOException
  {
    paramByteBuffer.clear();
    int i = paramByteChannel.read(paramByteBuffer);
    paramByteBuffer.flip();
    if (i == -1) {
      paramWebSocketImpl.eot();
    }
    while (i == 0) {
      return false;
    }
    return true;
  }
  
  public static boolean readMore(ByteBuffer paramByteBuffer, WebSocketImpl paramWebSocketImpl, WrappedByteChannel paramWrappedByteChannel)
    throws IOException
  {
    paramByteBuffer.clear();
    int i = paramWrappedByteChannel.readMore(paramByteBuffer);
    paramByteBuffer.flip();
    if (i == -1)
    {
      paramWebSocketImpl.eot();
      return false;
    }
    return paramWrappedByteChannel.isNeedRead();
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.SocketChannelIOHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
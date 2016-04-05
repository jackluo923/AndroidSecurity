package org.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import javax.net.ssl.SSLException;

public abstract interface WrappedByteChannel
  extends ByteChannel
{
  public abstract boolean isNeedRead();
  
  public abstract boolean isNeedWrite();
  
  public abstract int readMore(ByteBuffer paramByteBuffer)
    throws SSLException;
  
  public abstract void writeMore()
    throws IOException;
}

/* Location:
 * Qualified Name:     org.java_websocket.WrappedByteChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
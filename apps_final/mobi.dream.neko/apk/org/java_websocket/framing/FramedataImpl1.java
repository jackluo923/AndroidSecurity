package org.java_websocket.framing;

import java.nio.ByteBuffer;
import java.util.Arrays;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.util.Charsetfunctions;

public class FramedataImpl1
  implements FrameBuilder
{
  protected static byte[] emptyarray = new byte[0];
  protected boolean fin;
  protected Framedata.Opcode optcode;
  protected boolean transferemasked;
  private ByteBuffer unmaskedpayload;
  
  public FramedataImpl1() {}
  
  public FramedataImpl1(Framedata.Opcode paramOpcode)
  {
    optcode = paramOpcode;
    unmaskedpayload = ByteBuffer.wrap(emptyarray);
  }
  
  public FramedataImpl1(Framedata paramFramedata)
  {
    fin = paramFramedata.isFin();
    optcode = paramFramedata.getOpcode();
    unmaskedpayload = paramFramedata.getPayloadData();
    transferemasked = paramFramedata.getTransfereMasked();
  }
  
  public void append(Framedata paramFramedata)
    throws InvalidFrameException
  {
    ByteBuffer localByteBuffer1 = paramFramedata.getPayloadData();
    if (unmaskedpayload == null)
    {
      unmaskedpayload = ByteBuffer.allocate(localByteBuffer1.remaining());
      localByteBuffer1.mark();
      unmaskedpayload.put(localByteBuffer1);
      localByteBuffer1.reset();
      fin = paramFramedata.isFin();
      return;
    }
    localByteBuffer1.mark();
    unmaskedpayload.position(unmaskedpayload.limit());
    unmaskedpayload.limit(unmaskedpayload.capacity());
    if (localByteBuffer1.remaining() > unmaskedpayload.remaining())
    {
      ByteBuffer localByteBuffer2 = ByteBuffer.allocate(localByteBuffer1.remaining() + unmaskedpayload.capacity());
      unmaskedpayload.flip();
      localByteBuffer2.put(unmaskedpayload);
      localByteBuffer2.put(localByteBuffer1);
      unmaskedpayload = localByteBuffer2;
    }
    for (;;)
    {
      unmaskedpayload.rewind();
      localByteBuffer1.reset();
      break;
      unmaskedpayload.put(localByteBuffer1);
    }
  }
  
  public Framedata.Opcode getOpcode()
  {
    return optcode;
  }
  
  public ByteBuffer getPayloadData()
  {
    return unmaskedpayload;
  }
  
  public boolean getTransfereMasked()
  {
    return transferemasked;
  }
  
  public boolean isFin()
  {
    return fin;
  }
  
  public void setFin(boolean paramBoolean)
  {
    fin = paramBoolean;
  }
  
  public void setOptcode(Framedata.Opcode paramOpcode)
  {
    optcode = paramOpcode;
  }
  
  public void setPayload(ByteBuffer paramByteBuffer)
    throws InvalidDataException
  {
    unmaskedpayload = paramByteBuffer;
  }
  
  public void setTransferemasked(boolean paramBoolean)
  {
    transferemasked = paramBoolean;
  }
  
  public String toString()
  {
    return "Framedata{ optcode:" + getOpcode() + ", fin:" + isFin() + ", payloadlength:" + unmaskedpayload.limit() + ", payload:" + Arrays.toString(Charsetfunctions.utf8Bytes(new String(unmaskedpayload.array()))) + "}";
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.framing.FramedataImpl1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
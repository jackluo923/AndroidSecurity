package org.java_websocket.drafts;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.java_websocket.WebSocket.Role;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.exceptions.LimitExedeedException;
import org.java_websocket.exceptions.NotSendableException;
import org.java_websocket.framing.CloseFrameBuilder;
import org.java_websocket.framing.FrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.framing.FramedataImpl1;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.ClientHandshakeBuilder;
import org.java_websocket.handshake.HandshakeBuilder;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.handshake.ServerHandshakeBuilder;
import org.java_websocket.util.Base64;
import org.java_websocket.util.Charsetfunctions;

public class Draft_10
  extends Draft
{
  private Framedata fragmentedframe = null;
  private ByteBuffer incompleteframe;
  private final Random reuseableRandom = new Random();
  
  static
  {
    if (!Draft_10.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private byte fromOpcode(Framedata.Opcode paramOpcode)
  {
    if (paramOpcode == Framedata.Opcode.CONTINUOUS) {
      return 0;
    }
    if (paramOpcode == Framedata.Opcode.TEXT) {
      return 1;
    }
    if (paramOpcode == Framedata.Opcode.BINARY) {
      return 2;
    }
    if (paramOpcode == Framedata.Opcode.CLOSING) {
      return 8;
    }
    if (paramOpcode == Framedata.Opcode.PING) {
      return 9;
    }
    if (paramOpcode == Framedata.Opcode.PONG) {
      return 10;
    }
    throw new RuntimeException("Don't know how to handle " + paramOpcode.toString());
  }
  
  private String generateFinalKey(String paramString)
  {
    paramString = paramString.trim();
    paramString = paramString + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      return Base64.encodeBytes(localMessageDigest.digest(paramString.getBytes()));
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  public static int readVersion(Handshakedata paramHandshakedata)
  {
    int i = -1;
    paramHandshakedata = paramHandshakedata.getFieldValue("Sec-WebSocket-Version");
    if (paramHandshakedata.length() > 0) {}
    try
    {
      i = new Integer(paramHandshakedata.trim()).intValue();
      return i;
    }
    catch (NumberFormatException paramHandshakedata) {}
    return -1;
  }
  
  private byte[] toByteArray(long paramLong, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfByte[i] = ((byte)(int)(paramLong >>> paramInt * 8 - 8 - i * 8));
      i += 1;
    }
    return arrayOfByte;
  }
  
  private Framedata.Opcode toOpcode(byte paramByte)
    throws InvalidFrameException
  {
    switch (paramByte)
    {
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      throw new InvalidFrameException("unknow optcode " + (short)paramByte);
    case 0: 
      return Framedata.Opcode.CONTINUOUS;
    case 1: 
      return Framedata.Opcode.TEXT;
    case 2: 
      return Framedata.Opcode.BINARY;
    case 8: 
      return Framedata.Opcode.CLOSING;
    case 9: 
      return Framedata.Opcode.PING;
    }
    return Framedata.Opcode.PONG;
  }
  
  public Draft.HandshakeState acceptHandshakeAsClient(ClientHandshake paramClientHandshake, ServerHandshake paramServerHandshake)
    throws InvalidHandshakeException
  {
    if ((!paramClientHandshake.hasFieldValue("Sec-WebSocket-Key")) || (!paramServerHandshake.hasFieldValue("Sec-WebSocket-Accept"))) {
      return Draft.HandshakeState.NOT_MATCHED;
    }
    paramServerHandshake = paramServerHandshake.getFieldValue("Sec-WebSocket-Accept");
    if (generateFinalKey(paramClientHandshake.getFieldValue("Sec-WebSocket-Key")).equals(paramServerHandshake)) {
      return Draft.HandshakeState.MATCHED;
    }
    return Draft.HandshakeState.NOT_MATCHED;
  }
  
  public Draft.HandshakeState acceptHandshakeAsServer(ClientHandshake paramClientHandshake)
    throws InvalidHandshakeException
  {
    int i = readVersion(paramClientHandshake);
    if ((i == 7) || (i == 8))
    {
      if (basicAccept(paramClientHandshake)) {
        return Draft.HandshakeState.MATCHED;
      }
      return Draft.HandshakeState.NOT_MATCHED;
    }
    return Draft.HandshakeState.NOT_MATCHED;
  }
  
  public ByteBuffer createBinaryFrame(Framedata paramFramedata)
  {
    ByteBuffer localByteBuffer1 = paramFramedata.getPayloadData();
    int j;
    int i;
    label32:
    label44:
    int m;
    label52:
    ByteBuffer localByteBuffer2;
    if (role == WebSocket.Role.CLIENT)
    {
      j = 1;
      if (localByteBuffer1.remaining() > 125) {
        break label144;
      }
      i = 1;
      if (i <= 1) {
        break label166;
      }
      k = i + 1;
      if (j == 0) {
        break label173;
      }
      m = 4;
      localByteBuffer2 = ByteBuffer.allocate(m + (k + 1) + localByteBuffer1.remaining());
      m = fromOpcode(paramFramedata.getOpcode());
      if (!paramFramedata.isFin()) {
        break label179;
      }
    }
    label144:
    label166:
    label173:
    label179:
    for (int k = -128;; k = 0)
    {
      localByteBuffer2.put((byte)((byte)k | m));
      paramFramedata = toByteArray(localByteBuffer1.remaining(), i);
      if (($assertionsDisabled) || (paramFramedata.length == i)) {
        break label185;
      }
      throw new AssertionError();
      j = 0;
      break;
      if (localByteBuffer1.remaining() <= 65535)
      {
        i = 2;
        break label32;
      }
      i = 8;
      break label32;
      k = i;
      break label44;
      m = 0;
      break label52;
    }
    label185:
    if (i == 1)
    {
      k = paramFramedata[0];
      if (j != 0) {}
      for (i = -128;; i = 0)
      {
        localByteBuffer2.put((byte)(i | k));
        if (j == 0) {
          break;
        }
        paramFramedata = ByteBuffer.allocate(4);
        paramFramedata.putInt(reuseableRandom.nextInt());
        localByteBuffer2.put(paramFramedata.array());
        i = 0;
        while (i < localByteBuffer1.limit())
        {
          localByteBuffer2.put((byte)(localByteBuffer1.get() ^ paramFramedata.get(i % 4)));
          i += 1;
        }
      }
    }
    if (i == 2)
    {
      if (j != 0) {}
      for (i = -128;; i = 0)
      {
        localByteBuffer2.put((byte)(i | 0x7E));
        localByteBuffer2.put(paramFramedata);
        break;
      }
    }
    if (i == 8)
    {
      if (j != 0) {}
      for (i = -128;; i = 0)
      {
        localByteBuffer2.put((byte)(i | 0x7F));
        localByteBuffer2.put(paramFramedata);
        break;
      }
    }
    throw new RuntimeException("Size representation not supported/specified");
    localByteBuffer2.put(localByteBuffer1);
    assert (localByteBuffer2.remaining() == 0) : localByteBuffer2.remaining();
    localByteBuffer2.flip();
    return localByteBuffer2;
  }
  
  public List<Framedata> createFrames(String paramString, boolean paramBoolean)
  {
    FramedataImpl1 localFramedataImpl1 = new FramedataImpl1();
    try
    {
      localFramedataImpl1.setPayload(ByteBuffer.wrap(Charsetfunctions.utf8Bytes(paramString)));
      localFramedataImpl1.setFin(true);
      localFramedataImpl1.setOptcode(Framedata.Opcode.TEXT);
      localFramedataImpl1.setTransferemasked(paramBoolean);
      return Collections.singletonList(localFramedataImpl1);
    }
    catch (InvalidDataException paramString)
    {
      throw new NotSendableException(paramString);
    }
  }
  
  public List<Framedata> createFrames(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    FramedataImpl1 localFramedataImpl1 = new FramedataImpl1();
    try
    {
      localFramedataImpl1.setPayload(paramByteBuffer);
      localFramedataImpl1.setFin(true);
      localFramedataImpl1.setOptcode(Framedata.Opcode.BINARY);
      localFramedataImpl1.setTransferemasked(paramBoolean);
      return Collections.singletonList(localFramedataImpl1);
    }
    catch (InvalidDataException paramByteBuffer)
    {
      throw new NotSendableException(paramByteBuffer);
    }
  }
  
  public Draft.CloseHandshakeType getCloseHandshakeType()
  {
    return Draft.CloseHandshakeType.TWOWAY;
  }
  
  public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder paramClientHandshakeBuilder)
  {
    paramClientHandshakeBuilder.put("Upgrade", "websocket");
    paramClientHandshakeBuilder.put("Connection", "Upgrade");
    paramClientHandshakeBuilder.put("Sec-WebSocket-Version", "8");
    byte[] arrayOfByte = new byte[16];
    reuseableRandom.nextBytes(arrayOfByte);
    paramClientHandshakeBuilder.put("Sec-WebSocket-Key", Base64.encodeBytes(arrayOfByte));
    return paramClientHandshakeBuilder;
  }
  
  public HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake paramClientHandshake, ServerHandshakeBuilder paramServerHandshakeBuilder)
    throws InvalidHandshakeException
  {
    paramServerHandshakeBuilder.put("Upgrade", "websocket");
    paramServerHandshakeBuilder.put("Connection", paramClientHandshake.getFieldValue("Connection"));
    paramServerHandshakeBuilder.setHttpStatusMessage("Switching Protocols");
    paramClientHandshake = paramClientHandshake.getFieldValue("Sec-WebSocket-Key");
    if (paramClientHandshake == null) {
      throw new InvalidHandshakeException("missing Sec-WebSocket-Key");
    }
    paramServerHandshakeBuilder.put("Sec-WebSocket-Accept", generateFinalKey(paramClientHandshake));
    return paramServerHandshakeBuilder;
  }
  
  public void reset()
  {
    incompleteframe = null;
  }
  
  /* Error */
  public List<Framedata> translateFrame(ByteBuffer paramByteBuffer)
    throws LimitExedeedException, InvalidDataException
  {
    // Byte code:
    //   0: new 364	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 365	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   12: ifnull +124 -> 136
    //   15: aload_1
    //   16: invokevirtual 368	java/nio/ByteBuffer:mark	()Ljava/nio/Buffer;
    //   19: pop
    //   20: aload_1
    //   21: invokevirtual 212	java/nio/ByteBuffer:remaining	()I
    //   24: istore 4
    //   26: aload_0
    //   27: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   30: invokevirtual 212	java/nio/ByteBuffer:remaining	()I
    //   33: istore 5
    //   35: iload 5
    //   37: iload 4
    //   39: if_icmple +37 -> 76
    //   42: aload_0
    //   43: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   46: aload_1
    //   47: invokevirtual 244	java/nio/ByteBuffer:array	()[B
    //   50: aload_1
    //   51: invokevirtual 371	java/nio/ByteBuffer:position	()I
    //   54: iload 4
    //   56: invokevirtual 374	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   59: pop
    //   60: aload_1
    //   61: aload_1
    //   62: invokevirtual 371	java/nio/ByteBuffer:position	()I
    //   65: iload 4
    //   67: iadd
    //   68: invokevirtual 377	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   71: pop
    //   72: invokestatic 381	java/util/Collections:emptyList	()Ljava/util/List;
    //   75: areturn
    //   76: aload_0
    //   77: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   80: aload_1
    //   81: invokevirtual 244	java/nio/ByteBuffer:array	()[B
    //   84: aload_1
    //   85: invokevirtual 371	java/nio/ByteBuffer:position	()I
    //   88: iload 5
    //   90: invokevirtual 374	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   93: pop
    //   94: aload_1
    //   95: aload_1
    //   96: invokevirtual 371	java/nio/ByteBuffer:position	()I
    //   99: iload 5
    //   101: iadd
    //   102: invokevirtual 377	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   105: pop
    //   106: aload_3
    //   107: aload_0
    //   108: aload_0
    //   109: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   112: invokevirtual 384	java/nio/ByteBuffer:duplicate	()Ljava/nio/ByteBuffer;
    //   115: iconst_0
    //   116: invokevirtual 377	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   119: checkcast 209	java/nio/ByteBuffer
    //   122: invokevirtual 388	org/java_websocket/drafts/Draft_10:translateSingleFrame	(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;
    //   125: invokeinterface 393 2 0
    //   130: pop
    //   131: aload_0
    //   132: aconst_null
    //   133: putfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   136: aload_3
    //   137: astore_2
    //   138: aload_1
    //   139: invokevirtual 396	java/nio/ByteBuffer:hasRemaining	()Z
    //   142: ifeq +132 -> 274
    //   145: aload_1
    //   146: invokevirtual 368	java/nio/ByteBuffer:mark	()Ljava/nio/Buffer;
    //   149: pop
    //   150: aload_3
    //   151: aload_0
    //   152: aload_1
    //   153: invokevirtual 388	org/java_websocket/drafts/Draft_10:translateSingleFrame	(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;
    //   156: invokeinterface 393 2 0
    //   161: pop
    //   162: goto -26 -> 136
    //   165: astore_2
    //   166: aload_1
    //   167: invokevirtual 398	java/nio/ByteBuffer:reset	()Ljava/nio/Buffer;
    //   170: pop
    //   171: aload_0
    //   172: aload_0
    //   173: aload_2
    //   174: invokevirtual 401	org/java_websocket/drafts/Draft_10$IncompleteException:getPreferedSize	()I
    //   177: invokevirtual 405	org/java_websocket/drafts/Draft_10:checkAlloc	(I)I
    //   180: invokestatic 216	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   183: putfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   186: aload_0
    //   187: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   190: aload_1
    //   191: invokevirtual 262	java/nio/ByteBuffer:put	(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    //   194: pop
    //   195: aload_3
    //   196: areturn
    //   197: astore_2
    //   198: aload_0
    //   199: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   202: invokevirtual 250	java/nio/ByteBuffer:limit	()I
    //   205: pop
    //   206: aload_0
    //   207: aload_2
    //   208: invokevirtual 401	org/java_websocket/drafts/Draft_10$IncompleteException:getPreferedSize	()I
    //   211: invokevirtual 405	org/java_websocket/drafts/Draft_10:checkAlloc	(I)I
    //   214: invokestatic 216	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   217: astore_2
    //   218: getstatic 25	org/java_websocket/drafts/Draft_10:$assertionsDisabled	Z
    //   221: ifne +25 -> 246
    //   224: aload_2
    //   225: invokevirtual 250	java/nio/ByteBuffer:limit	()I
    //   228: aload_0
    //   229: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   232: invokevirtual 250	java/nio/ByteBuffer:limit	()I
    //   235: if_icmpgt +11 -> 246
    //   238: new 233	java/lang/AssertionError
    //   241: dup
    //   242: invokespecial 234	java/lang/AssertionError:<init>	()V
    //   245: athrow
    //   246: aload_0
    //   247: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   250: invokevirtual 408	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   253: pop
    //   254: aload_2
    //   255: aload_0
    //   256: getfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   259: invokevirtual 262	java/nio/ByteBuffer:put	(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    //   262: pop
    //   263: aload_0
    //   264: aload_2
    //   265: putfield 358	org/java_websocket/drafts/Draft_10:incompleteframe	Ljava/nio/ByteBuffer;
    //   268: aload_0
    //   269: aload_1
    //   270: invokevirtual 410	org/java_websocket/drafts/Draft_10:translateFrame	(Ljava/nio/ByteBuffer;)Ljava/util/List;
    //   273: astore_2
    //   274: aload_2
    //   275: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	Draft_10
    //   0	276	1	paramByteBuffer	ByteBuffer
    //   137	1	2	localLinkedList1	java.util.LinkedList
    //   165	9	2	localIncompleteException1	IncompleteException
    //   197	11	2	localIncompleteException2	IncompleteException
    //   217	58	2	localObject	Object
    //   7	189	3	localLinkedList2	java.util.LinkedList
    //   24	44	4	i	int
    //   33	69	5	j	int
    // Exception table:
    //   from	to	target	type
    //   150	162	165	org/java_websocket/drafts/Draft_10$IncompleteException
    //   15	35	197	org/java_websocket/drafts/Draft_10$IncompleteException
    //   42	76	197	org/java_websocket/drafts/Draft_10$IncompleteException
    //   76	136	197	org/java_websocket/drafts/Draft_10$IncompleteException
  }
  
  public Framedata translateSingleFrame(ByteBuffer paramByteBuffer)
    throws Draft_10.IncompleteException, InvalidDataException
  {
    int n = paramByteBuffer.remaining();
    int j = 2;
    if (n < 2) {
      throw new IncompleteException(2);
    }
    int m = paramByteBuffer.get();
    if (m >> 8 != 0) {}
    for (boolean bool = true;; bool = false)
    {
      i = (byte)((m & 0x7F) >> 4);
      if (i == 0) {
        break;
      }
      throw new InvalidFrameException("bad rsv " + i);
    }
    int i = paramByteBuffer.get();
    if ((i & 0xFFFFFF80) != 0) {}
    Framedata.Opcode localOpcode;
    for (int k = 1;; k = 0)
    {
      i = (byte)(i & 0x7F);
      localOpcode = toOpcode((byte)(m & 0xF));
      if ((bool) || ((localOpcode != Framedata.Opcode.PING) && (localOpcode != Framedata.Opcode.PONG) && (localOpcode != Framedata.Opcode.CLOSING))) {
        break;
      }
      throw new InvalidFrameException("control frames may no be fragmented");
    }
    if ((i >= 0) && (i <= 125)) {
      if (k == 0) {
        break label412;
      }
    }
    label412:
    for (m = 4;; m = 0)
    {
      j = j + m + i;
      if (n >= j) {
        break label418;
      }
      throw new IncompleteException(j);
      if ((localOpcode == Framedata.Opcode.PING) || (localOpcode == Framedata.Opcode.PONG) || (localOpcode == Framedata.Opcode.CLOSING)) {
        throw new InvalidFrameException("more than 125 octets");
      }
      if (i == 126)
      {
        j = 2 + 2;
        if (n < j) {
          throw new IncompleteException(j);
        }
        localObject = new byte[3];
        localObject[1] = paramByteBuffer.get();
        localObject[2] = paramByteBuffer.get();
        i = new BigInteger((byte[])localObject).intValue();
        break;
      }
      j = 2 + 8;
      if (n < j) {
        throw new IncompleteException(j);
      }
      localObject = new byte[8];
      i = 0;
      while (i < 8)
      {
        localObject[i] = paramByteBuffer.get();
        i += 1;
      }
      long l = new BigInteger((byte[])localObject).longValue();
      if (l > 2147483647L) {
        throw new LimitExedeedException("Payloadsize is to big...");
      }
      i = (int)l;
      break;
    }
    label418:
    Object localObject = ByteBuffer.allocate(checkAlloc(i));
    if (k != 0)
    {
      byte[] arrayOfByte = new byte[4];
      paramByteBuffer.get(arrayOfByte);
      j = 0;
      while (j < i)
      {
        ((ByteBuffer)localObject).put((byte)(paramByteBuffer.get() ^ arrayOfByte[(j % 4)]));
        j += 1;
      }
    }
    ((ByteBuffer)localObject).put(paramByteBuffer.array(), paramByteBuffer.position(), ((ByteBuffer)localObject).limit());
    paramByteBuffer.position(paramByteBuffer.position() + ((ByteBuffer)localObject).limit());
    if (localOpcode == Framedata.Opcode.CLOSING) {
      paramByteBuffer = new CloseFrameBuilder();
    }
    for (;;)
    {
      ((ByteBuffer)localObject).flip();
      paramByteBuffer.setPayload((ByteBuffer)localObject);
      return paramByteBuffer;
      paramByteBuffer = new FramedataImpl1();
      paramByteBuffer.setFin(bool);
      paramByteBuffer.setOptcode(localOpcode);
    }
  }
  
  private class IncompleteException
    extends Throwable
  {
    private static final long serialVersionUID = 7330519489840500997L;
    private int preferedsize;
    
    public IncompleteException(int paramInt)
    {
      preferedsize = paramInt;
    }
    
    public int getPreferedSize()
    {
      return preferedsize;
    }
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.drafts.Draft_10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
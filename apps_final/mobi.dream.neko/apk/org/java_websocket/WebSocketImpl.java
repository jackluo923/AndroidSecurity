package org.java_websocket;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.java_websocket.drafts.Draft;
import org.java_websocket.drafts.Draft.CloseHandshakeType;
import org.java_websocket.drafts.Draft.HandshakeState;
import org.java_websocket.drafts.Draft_10;
import org.java_websocket.drafts.Draft_17;
import org.java_websocket.drafts.Draft_75;
import org.java_websocket.drafts.Draft_76;
import org.java_websocket.exceptions.IncompleteHandshakeException;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.framing.CloseFrame;
import org.java_websocket.framing.CloseFrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.ClientHandshakeBuilder;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.handshake.ServerHandshakeBuilder;
import org.java_websocket.server.WebSocketServer.WebSocketWorker;
import org.java_websocket.util.Charsetfunctions;

public class WebSocketImpl
  extends WebSocket
{
  public ByteChannel channel;
  private volatile boolean closeHandshakeSent = false;
  private volatile boolean connectionClosed = false;
  private Draft draft = null;
  private volatile boolean handshakeComplete = false;
  private ClientHandshake handshakerequest = null;
  public final BlockingQueue<ByteBuffer> inQueue = new LinkedBlockingQueue();
  public SelectionKey key;
  private List<Draft> knownDrafts;
  public final BlockingQueue<ByteBuffer> outQueue = new LinkedBlockingQueue();
  private WebSocket.Role role;
  public final Socket socket;
  private Framedata tempContiniousFrame;
  private ByteBuffer tmpHandshakeBytes;
  public volatile WebSocketServer.WebSocketWorker workerThread;
  private final WebSocketListener wsl;
  
  static
  {
    if (!WebSocketImpl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public WebSocketImpl(WebSocketListener paramWebSocketListener, List<Draft> paramList, Socket paramSocket)
  {
    this(paramWebSocketListener, (Draft)null, paramSocket);
    role = WebSocket.Role.SERVER;
    if ((knownDrafts == null) || (paramList.isEmpty()))
    {
      knownDrafts = new ArrayList(1);
      knownDrafts.add(new Draft_17());
      knownDrafts.add(new Draft_10());
      knownDrafts.add(new Draft_76());
      knownDrafts.add(new Draft_75());
      return;
    }
    knownDrafts = paramList;
  }
  
  public WebSocketImpl(WebSocketListener paramWebSocketListener, Draft paramDraft, Socket paramSocket)
  {
    wsl = paramWebSocketListener;
    role = WebSocket.Role.CLIENT;
    draft = paramDraft;
    socket = paramSocket;
  }
  
  private void decodeFrames(ByteBuffer paramByteBuffer)
  {
    for (;;)
    {
      Framedata localFramedata;
      int i;
      try
      {
        Iterator localIterator = draft.translateFrame(paramByteBuffer).iterator();
        if (localIterator.hasNext())
        {
          localFramedata = (Framedata)localIterator.next();
          if (DEBUG) {
            System.out.println("matched frame: " + localFramedata);
          }
          paramByteBuffer = localFramedata.getOpcode();
          if (paramByteBuffer != Framedata.Opcode.CLOSING) {
            break label180;
          }
          i = 1005;
          paramByteBuffer = "";
          if ((localFramedata instanceof CloseFrame))
          {
            paramByteBuffer = (CloseFrame)localFramedata;
            i = paramByteBuffer.getCloseCode();
            paramByteBuffer = paramByteBuffer.getMessage();
          }
          if (closeHandshakeSent) {
            closeConnection(i, paramByteBuffer, true);
          }
        }
        else
        {
          return;
        }
      }
      catch (InvalidDataException paramByteBuffer)
      {
        wsl.onWebsocketError(this, paramByteBuffer);
        close(paramByteBuffer);
      }
      if (draft.getCloseHandshakeType() == Draft.CloseHandshakeType.TWOWAY) {
        close(i, paramByteBuffer);
      }
      closeConnection(i, paramByteBuffer, false);
      continue;
      label180:
      if (paramByteBuffer == Framedata.Opcode.PING)
      {
        wsl.onWebsocketPing(this, localFramedata);
      }
      else if (paramByteBuffer == Framedata.Opcode.PONG)
      {
        wsl.onWebsocketPong(this, localFramedata);
      }
      else if (tempContiniousFrame == null)
      {
        if (localFramedata.getOpcode() == Framedata.Opcode.CONTINUOUS) {
          throw new InvalidFrameException("unexpected continious frame");
        }
        if (localFramedata.isFin()) {
          deliverMessage(localFramedata);
        } else {
          tempContiniousFrame = localFramedata;
        }
      }
      else
      {
        if (localFramedata.getOpcode() != Framedata.Opcode.CONTINUOUS) {
          break;
        }
        tempContiniousFrame.append(localFramedata);
        if (localFramedata.isFin())
        {
          deliverMessage(tempContiniousFrame);
          tempContiniousFrame = null;
        }
      }
    }
    throw new InvalidDataException(1002, "non control or continious frame expected");
  }
  
  private boolean decodeHandshake(ByteBuffer paramByteBuffer)
    throws IOException
  {
    ByteBuffer localByteBuffer;
    if (tmpHandshakeBytes == null)
    {
      localByteBuffer = paramByteBuffer;
      localByteBuffer.mark();
    }
    for (;;)
    {
      try
      {
        if ((draft == null) && (isFlashEdgeCase(localByteBuffer) == Draft.HandshakeState.MATCHED))
        {
          write(ByteBuffer.wrap(Charsetfunctions.utf8Bytes(wsl.getFlashPolicy(this))));
          close(-3, "");
          return false;
          if (tmpHandshakeBytes.remaining() < paramByteBuffer.remaining())
          {
            localByteBuffer = ByteBuffer.allocate(tmpHandshakeBytes.capacity() + paramByteBuffer.remaining());
            tmpHandshakeBytes.flip();
            localByteBuffer.put(tmpHandshakeBytes);
            tmpHandshakeBytes = localByteBuffer;
          }
          tmpHandshakeBytes.put(paramByteBuffer);
          tmpHandshakeBytes.flip();
          localByteBuffer = tmpHandshakeBytes;
        }
      }
      catch (IncompleteHandshakeException localIncompleteHandshakeException)
      {
        Object localObject1;
        Draft localDraft;
        Object localObject2;
        Object localObject3;
        Draft.HandshakeState localHandshakeState2;
        Draft.HandshakeState localHandshakeState1;
        if (tmpHandshakeBytes != null) {
          continue;
        }
        localByteBuffer.reset();
        int j = localIncompleteHandshakeException.getPreferedSize();
        if (j != 0) {
          continue;
        }
        int i = localByteBuffer.capacity() + 16;
        tmpHandshakeBytes = ByteBuffer.allocate(i);
        tmpHandshakeBytes.put(paramByteBuffer);
        continue;
        i = j;
        if ($assertionsDisabled) {
          continue;
        }
        i = j;
        if (localIncompleteHandshakeException.getPreferedSize() >= localByteBuffer.remaining()) {
          continue;
        }
        throw new AssertionError();
        tmpHandshakeBytes.position(tmpHandshakeBytes.limit());
        tmpHandshakeBytes.limit(tmpHandshakeBytes.capacity());
        continue;
        continue;
      }
      try
      {
        if (role == WebSocket.Role.SERVER) {
          if (draft == null)
          {
            localObject1 = knownDrafts.iterator();
            if (((Iterator)localObject1).hasNext()) {
              localDraft = (Draft)((Iterator)localObject1).next();
            }
          }
        }
      }
      catch (InvalidHandshakeException localInvalidHandshakeException1)
      {
        close(localInvalidHandshakeException1);
        continue;
      }
      try
      {
        localDraft.setParseMode(role);
        localByteBuffer.reset();
        localObject2 = localDraft.translateHandshake(localByteBuffer);
        if (!(localObject2 instanceof ClientHandshake))
        {
          closeConnection(1002, "wrong http function", false);
          return false;
        }
        localObject2 = (ClientHandshake)localObject2;
        localObject3 = localDraft.acceptHandshakeAsServer((ClientHandshake)localObject2);
        localHandshakeState2 = Draft.HandshakeState.MATCHED;
        if (localObject3 == localHandshakeState2)
        {
          try
          {
            localObject3 = wsl.onWebsocketHandshakeReceivedAsServer(this, localDraft, (ClientHandshake)localObject2);
            write(localDraft.createHandshake(localDraft.postProcessHandshakeResponseAsServer((ClientHandshake)localObject2, (ServerHandshakeBuilder)localObject3), role));
            draft = localDraft;
            open((Handshakedata)localObject2);
            return true;
          }
          catch (InvalidDataException localInvalidDataException2)
          {
            closeConnection(localInvalidDataException2.getCloseCode(), localInvalidDataException2.getMessage(), false);
            return false;
          }
          if (draft != null) {
            break label706;
          }
          close(1002, "no draft matches");
        }
      }
      catch (InvalidHandshakeException localInvalidHandshakeException2) {}
    }
    localObject1 = draft.translateHandshake(localByteBuffer);
    if (!(localObject1 instanceof ClientHandshake))
    {
      closeConnection(1002, "wrong http function", false);
      return false;
    }
    localObject1 = (ClientHandshake)localObject1;
    if (draft.acceptHandshakeAsServer((ClientHandshake)localObject1) == Draft.HandshakeState.MATCHED)
    {
      open((Handshakedata)localObject1);
      return true;
    }
    close(1002, "the handshake did finaly not match");
    return false;
    if (role == WebSocket.Role.CLIENT)
    {
      draft.setParseMode(role);
      localObject1 = draft.translateHandshake(localByteBuffer);
      if (!(localObject1 instanceof ServerHandshake))
      {
        closeConnection(1002, "Wwrong http function", false);
        return false;
      }
      localObject1 = (ServerHandshake)localObject1;
      localHandshakeState1 = draft.acceptHandshakeAsClient(handshakerequest, (ServerHandshake)localObject1);
      localObject2 = Draft.HandshakeState.MATCHED;
      if (localHandshakeState1 == localObject2) {
        try
        {
          wsl.onWebsocketHandshakeReceivedAsClient(this, handshakerequest, (ServerHandshake)localObject1);
          open((Handshakedata)localObject1);
          return true;
        }
        catch (InvalidDataException localInvalidDataException1)
        {
          closeConnection(localInvalidDataException1.getCloseCode(), localInvalidDataException1.getMessage(), false);
          return false;
        }
      }
      close(1002, "draft " + draft + " refuses handshake");
    }
    return false;
    label706:
    return false;
  }
  
  private void deliverMessage(Framedata paramFramedata)
    throws InvalidDataException
  {
    try
    {
      if (paramFramedata.getOpcode() == Framedata.Opcode.TEXT)
      {
        wsl.onWebsocketMessage(this, Charsetfunctions.stringUtf8(paramFramedata.getPayloadData()));
        return;
      }
      if (paramFramedata.getOpcode() == Framedata.Opcode.BINARY)
      {
        wsl.onWebsocketMessage(this, paramFramedata.getPayloadData());
        return;
      }
    }
    catch (RuntimeException paramFramedata)
    {
      wsl.onWebsocketError(this, paramFramedata);
      return;
    }
    if (DEBUG) {
      System.out.println("Ignoring frame:" + paramFramedata.toString());
    }
    if (!$assertionsDisabled) {
      throw new AssertionError();
    }
  }
  
  private Draft.HandshakeState isFlashEdgeCase(ByteBuffer paramByteBuffer)
    throws IncompleteHandshakeException
  {
    paramByteBuffer.mark();
    if (paramByteBuffer.limit() > Draft.FLASH_POLICY_REQUEST.length) {
      return Draft.HandshakeState.NOT_MATCHED;
    }
    if (paramByteBuffer.limit() < Draft.FLASH_POLICY_REQUEST.length) {
      throw new IncompleteHandshakeException(Draft.FLASH_POLICY_REQUEST.length);
    }
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      if (Draft.FLASH_POLICY_REQUEST[i] != paramByteBuffer.get())
      {
        paramByteBuffer.reset();
        return Draft.HandshakeState.NOT_MATCHED;
      }
      i += 1;
    }
    return Draft.HandshakeState.MATCHED;
  }
  
  private void open(Handshakedata paramHandshakedata)
    throws IOException
  {
    if (DEBUG) {
      System.out.println("open using draft: " + draft.getClass().getSimpleName());
    }
    handshakeComplete = true;
    wsl.onWebsocketOpen(this, paramHandshakedata);
  }
  
  private void send(Collection<Framedata> paramCollection)
  {
    if (!handshakeComplete) {
      throw new NotYetConnectedException();
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      sendFrame((Framedata)paramCollection.next());
    }
  }
  
  private void write(ByteBuffer paramByteBuffer)
  {
    PrintStream localPrintStream;
    StringBuilder localStringBuilder;
    if (DEBUG)
    {
      localPrintStream = System.out;
      localStringBuilder = new StringBuilder().append("write(").append(paramByteBuffer.remaining()).append("): {");
      if (paramByteBuffer.remaining() <= 1000) {
        break label93;
      }
    }
    label93:
    for (String str = "too big to display";; str = new String(paramByteBuffer.array()))
    {
      localPrintStream.println(str + "}");
      outQueue.add(paramByteBuffer);
      wsl.onWriteDemand(this);
      return;
    }
  }
  
  private void write(List<ByteBuffer> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      write((ByteBuffer)paramList.next());
    }
  }
  
  public void close(int paramInt)
  {
    close(paramInt, "");
  }
  
  public void close(int paramInt, String paramString)
  {
    if (!closeHandshakeSent)
    {
      if (!handshakeComplete) {
        break label118;
      }
      if (paramInt == 1006)
      {
        closeConnection(paramInt, true);
        closeHandshakeSent = true;
      }
    }
    else
    {
      return;
    }
    if (draft.getCloseHandshakeType() != Draft.CloseHandshakeType.NONE) {}
    for (;;)
    {
      try
      {
        sendFrame(new CloseFrameBuilder(paramInt, paramString));
        if (paramInt == 1002) {
          closeConnection(paramInt, false);
        }
        closeHandshakeSent = true;
        tmpHandshakeBytes = null;
        return;
      }
      catch (InvalidDataException paramString)
      {
        wsl.onWebsocketError(this, paramString);
        closeConnection(1006, "generated frame is invalid", false);
        continue;
      }
      closeConnection(paramInt, false);
      continue;
      label118:
      if (paramInt == -3) {
        closeConnection(-3, true);
      } else {
        closeConnection(-1, false);
      }
    }
  }
  
  public void close(InvalidDataException paramInvalidDataException)
  {
    close(paramInvalidDataException.getCloseCode(), paramInvalidDataException.getMessage());
  }
  
  /* Error */
  protected void closeConnection(int paramInt, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 99	org/java_websocket/WebSocketImpl:connectionClosed	Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: iconst_1
    //   18: putfield 99	org/java_websocket/WebSocketImpl:connectionClosed	Z
    //   21: aload_0
    //   22: getfield 112	org/java_websocket/WebSocketImpl:wsl	Lorg/java_websocket/WebSocketListener;
    //   25: aload_0
    //   26: invokeinterface 478 2 0
    //   31: aload_0
    //   32: getfield 112	org/java_websocket/WebSocketImpl:wsl	Lorg/java_websocket/WebSocketListener;
    //   35: aload_0
    //   36: iload_1
    //   37: aload_2
    //   38: iload_3
    //   39: invokeinterface 503 5 0
    //   44: aload_0
    //   45: getfield 101	org/java_websocket/WebSocketImpl:draft	Lorg/java_websocket/drafts/Draft;
    //   48: ifnull +10 -> 58
    //   51: aload_0
    //   52: getfield 101	org/java_websocket/WebSocketImpl:draft	Lorg/java_websocket/drafts/Draft;
    //   55: invokevirtual 505	org/java_websocket/drafts/Draft:reset	()V
    //   58: aload_0
    //   59: aconst_null
    //   60: putfield 234	org/java_websocket/WebSocketImpl:tempContiniousFrame	Lorg/java_websocket/framing/Framedata;
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 103	org/java_websocket/WebSocketImpl:handshakerequest	Lorg/java_websocket/handshake/ClientHandshake;
    //   68: goto -55 -> 13
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	WebSocketImpl
    //   0	76	1	paramInt	int
    //   0	76	2	paramString	String
    //   0	76	3	paramBoolean	boolean
    //   6	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	8	71	finally
    //   16	58	71	finally
    //   58	68	71	finally
  }
  
  protected void closeConnection(int paramInt, boolean paramBoolean)
  {
    closeConnection(paramInt, "", paramBoolean);
  }
  
  public void decode(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if ((!paramByteBuffer.hasRemaining()) || (connectionClosed)) {}
    label156:
    label170:
    for (;;)
    {
      return;
      String str;
      if (DEBUG)
      {
        PrintStream localPrintStream = System.out;
        StringBuilder localStringBuilder = new StringBuilder().append("process(").append(paramByteBuffer.remaining()).append("): {");
        if (paramByteBuffer.remaining() > 1000)
        {
          str = "too big to display";
          localPrintStream.println(str + "}");
        }
      }
      else
      {
        if (!handshakeComplete) {
          break label156;
        }
        decodeFrames(paramByteBuffer);
      }
      for (;;)
      {
        if (($assertionsDisabled) || (isClosing()) || (isClosed()) || (!paramByteBuffer.hasRemaining())) {
          break label170;
        }
        throw new AssertionError();
        str = new String(paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.remaining());
        break;
        if (decodeHandshake(paramByteBuffer)) {
          decodeFrames(paramByteBuffer);
        }
      }
    }
  }
  
  public void eot()
  {
    if (draft == null)
    {
      closeConnection(1006, true);
      return;
    }
    if (draft.getCloseHandshakeType() == Draft.CloseHandshakeType.NONE)
    {
      closeConnection(1000, true);
      return;
    }
    if (draft.getCloseHandshakeType() == Draft.CloseHandshakeType.ONEWAY)
    {
      if (role == WebSocket.Role.SERVER)
      {
        closeConnection(1006, true);
        return;
      }
      closeConnection(1000, true);
      return;
    }
    closeConnection(1006, true);
  }
  
  public Draft getDraft()
  {
    return draft;
  }
  
  public InetSocketAddress getLocalSocketAddress()
  {
    return (InetSocketAddress)socket.getLocalSocketAddress();
  }
  
  public int getReadyState()
  {
    if (isConnecting()) {
      return 0;
    }
    if (isOpen()) {
      return 1;
    }
    if (isClosing()) {
      return 2;
    }
    if (isClosed()) {
      return 3;
    }
    if (!$assertionsDisabled) {
      throw new AssertionError();
    }
    return -1;
  }
  
  public InetSocketAddress getRemoteSocketAddress()
  {
    return (InetSocketAddress)socket.getRemoteSocketAddress();
  }
  
  public boolean hasBufferedData()
  {
    return !outQueue.isEmpty();
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public boolean isClosed()
  {
    return connectionClosed;
  }
  
  public boolean isClosing()
  {
    return (!connectionClosed) && (closeHandshakeSent);
  }
  
  public boolean isConnecting()
  {
    return (!connectionClosed) && (!closeHandshakeSent) && (!handshakeComplete);
  }
  
  public boolean isOpen()
  {
    return (!connectionClosed) && (!closeHandshakeSent) && (handshakeComplete);
  }
  
  public void send(String paramString)
    throws NotYetConnectedException
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }
    Draft localDraft = draft;
    if (role == WebSocket.Role.CLIENT) {}
    for (boolean bool = true;; bool = false)
    {
      send(localDraft.createFrames(paramString, bool));
      return;
    }
  }
  
  public void send(ByteBuffer paramByteBuffer)
    throws IllegalArgumentException, NotYetConnectedException
  {
    if (paramByteBuffer == null) {
      throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }
    Draft localDraft = draft;
    if (role == WebSocket.Role.CLIENT) {}
    for (boolean bool = true;; bool = false)
    {
      send(localDraft.createFrames(paramByteBuffer, bool));
      return;
    }
  }
  
  public void send(byte[] paramArrayOfByte)
    throws IllegalArgumentException, NotYetConnectedException
  {
    send(ByteBuffer.wrap(paramArrayOfByte));
  }
  
  public void sendFrame(Framedata paramFramedata)
  {
    if (DEBUG) {
      System.out.println("send frame: " + paramFramedata);
    }
    write(draft.createBinaryFrame(paramFramedata));
  }
  
  public void startHandshake(ClientHandshakeBuilder paramClientHandshakeBuilder)
    throws InvalidHandshakeException
  {
    if (handshakeComplete) {
      throw new IllegalStateException("Handshake has already been sent.");
    }
    handshakerequest = draft.postProcessHandshakeRequestAsClient(paramClientHandshakeBuilder);
    try
    {
      wsl.onWebsocketHandshakeSentAsClient(this, handshakerequest);
      write(draft.createHandshake(handshakerequest, role));
      return;
    }
    catch (InvalidDataException paramClientHandshakeBuilder)
    {
      throw new InvalidHandshakeException("Handshake data rejected by client.");
    }
  }
  
  public String toString()
  {
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.WebSocketImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
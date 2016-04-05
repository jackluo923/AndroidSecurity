package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.io.IOContext;

@Deprecated
public abstract class StreamBasedParserBase
  extends JsonParserBase
{
  protected boolean _bufferRecyclable;
  protected byte[] _inputBuffer;
  protected InputStream _inputStream;
  
  protected StreamBasedParserBase(IOContext paramIOContext, int paramInt1, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1);
    _inputStream = paramInputStream;
    _inputBuffer = paramArrayOfByte;
    _inputPtr = paramInt2;
    _inputEnd = paramInt3;
    _bufferRecyclable = paramBoolean;
  }
  
  protected void _closeInput()
    throws IOException
  {
    if (_inputStream != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _inputStream.close();
      }
      _inputStream = null;
    }
  }
  
  protected final boolean _loadToHaveAtLeast(int paramInt)
    throws IOException
  {
    if (_inputStream == null) {
      return false;
    }
    int i = _inputEnd - _inputPtr;
    if ((i > 0) && (_inputPtr > 0))
    {
      _currInputProcessed += _inputPtr;
      _currInputRowStart -= _inputPtr;
      System.arraycopy(_inputBuffer, _inputPtr, _inputBuffer, 0, i);
      _inputEnd = i;
      label79:
      _inputPtr = 0;
    }
    for (;;)
    {
      if (_inputEnd >= paramInt) {
        break label184;
      }
      int j = _inputStream.read(_inputBuffer, _inputEnd, _inputBuffer.length - _inputEnd);
      if (j < 1)
      {
        _closeInput();
        if (j != 0) {
          break;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + i + " bytes");
        _inputEnd = 0;
        break label79;
      }
      _inputEnd += j;
    }
    label184:
    return true;
  }
  
  protected void _releaseBuffers()
    throws IOException
  {
    super._releaseBuffers();
    if (_bufferRecyclable)
    {
      byte[] arrayOfByte = _inputBuffer;
      if (arrayOfByte != null)
      {
        _inputBuffer = null;
        _ioContext.releaseReadIOBuffer(arrayOfByte);
      }
    }
  }
  
  public Object getInputSource()
  {
    return _inputStream;
  }
  
  protected final boolean loadMore()
    throws IOException
  {
    boolean bool2 = false;
    _currInputProcessed += _inputEnd;
    _currInputRowStart -= _inputEnd;
    boolean bool1 = bool2;
    int i;
    if (_inputStream != null)
    {
      i = _inputStream.read(_inputBuffer, 0, _inputBuffer.length);
      if (i <= 0) {
        break label74;
      }
      _inputPtr = 0;
      _inputEnd = i;
      bool1 = true;
    }
    label74:
    do
    {
      return bool1;
      _closeInput();
      bool1 = bool2;
    } while (i != 0);
    throw new IOException("InputStream.read() returned 0 characters when trying to read " + _inputBuffer.length + " bytes");
  }
  
  public int releaseBuffered(OutputStream paramOutputStream)
    throws IOException
  {
    int i = _inputEnd - _inputPtr;
    if (i < 1) {
      return 0;
    }
    int j = _inputPtr;
    paramOutputStream.write(_inputBuffer, j, i);
    return i;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.StreamBasedParserBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
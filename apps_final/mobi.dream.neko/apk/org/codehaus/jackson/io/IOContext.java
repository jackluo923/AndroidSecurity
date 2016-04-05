package org.codehaus.jackson.io;

import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.util.BufferRecycler;
import org.codehaus.jackson.util.BufferRecycler.ByteBufferType;
import org.codehaus.jackson.util.BufferRecycler.CharBufferType;
import org.codehaus.jackson.util.TextBuffer;

public final class IOContext
{
  protected final BufferRecycler _bufferRecycler;
  protected char[] _concatCBuffer = null;
  protected JsonEncoding _encoding;
  protected final boolean _managedResource;
  protected char[] _nameCopyBuffer = null;
  protected byte[] _readIOBuffer = null;
  protected final Object _sourceRef;
  protected char[] _tokenCBuffer = null;
  protected byte[] _writeEncodingBuffer = null;
  
  public IOContext(BufferRecycler paramBufferRecycler, Object paramObject, boolean paramBoolean)
  {
    _bufferRecycler = paramBufferRecycler;
    _sourceRef = paramObject;
    _managedResource = paramBoolean;
  }
  
  public final char[] allocConcatBuffer()
  {
    if (_concatCBuffer != null) {
      throw new IllegalStateException("Trying to call allocConcatBuffer() second time");
    }
    _concatCBuffer = _bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.CONCAT_BUFFER);
    return _concatCBuffer;
  }
  
  public final char[] allocNameCopyBuffer(int paramInt)
  {
    if (_nameCopyBuffer != null) {
      throw new IllegalStateException("Trying to call allocNameCopyBuffer() second time");
    }
    _nameCopyBuffer = _bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.NAME_COPY_BUFFER, paramInt);
    return _nameCopyBuffer;
  }
  
  public final byte[] allocReadIOBuffer()
  {
    if (_readIOBuffer != null) {
      throw new IllegalStateException("Trying to call allocReadIOBuffer() second time");
    }
    _readIOBuffer = _bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.READ_IO_BUFFER);
    return _readIOBuffer;
  }
  
  public final char[] allocTokenBuffer()
  {
    if (_tokenCBuffer != null) {
      throw new IllegalStateException("Trying to call allocTokenBuffer() second time");
    }
    _tokenCBuffer = _bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.TOKEN_BUFFER);
    return _tokenCBuffer;
  }
  
  public final byte[] allocWriteEncodingBuffer()
  {
    if (_writeEncodingBuffer != null) {
      throw new IllegalStateException("Trying to call allocWriteEncodingBuffer() second time");
    }
    _writeEncodingBuffer = _bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.WRITE_ENCODING_BUFFER);
    return _writeEncodingBuffer;
  }
  
  public final TextBuffer constructTextBuffer()
  {
    return new TextBuffer(_bufferRecycler);
  }
  
  public final JsonEncoding getEncoding()
  {
    return _encoding;
  }
  
  public final Object getSourceReference()
  {
    return _sourceRef;
  }
  
  public final boolean isResourceManaged()
  {
    return _managedResource;
  }
  
  public final void releaseConcatBuffer(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar != null)
    {
      if (paramArrayOfChar != _concatCBuffer) {
        throw new IllegalArgumentException("Trying to release buffer not owned by the context");
      }
      _concatCBuffer = null;
      _bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.CONCAT_BUFFER, paramArrayOfChar);
    }
  }
  
  public final void releaseNameCopyBuffer(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar != null)
    {
      if (paramArrayOfChar != _nameCopyBuffer) {
        throw new IllegalArgumentException("Trying to release buffer not owned by the context");
      }
      _nameCopyBuffer = null;
      _bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.NAME_COPY_BUFFER, paramArrayOfChar);
    }
  }
  
  public final void releaseReadIOBuffer(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte != _readIOBuffer) {
        throw new IllegalArgumentException("Trying to release buffer not owned by the context");
      }
      _readIOBuffer = null;
      _bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.READ_IO_BUFFER, paramArrayOfByte);
    }
  }
  
  public final void releaseTokenBuffer(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar != null)
    {
      if (paramArrayOfChar != _tokenCBuffer) {
        throw new IllegalArgumentException("Trying to release buffer not owned by the context");
      }
      _tokenCBuffer = null;
      _bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.TOKEN_BUFFER, paramArrayOfChar);
    }
  }
  
  public final void releaseWriteEncodingBuffer(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte != _writeEncodingBuffer) {
        throw new IllegalArgumentException("Trying to release buffer not owned by the context");
      }
      _writeEncodingBuffer = null;
      _bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.WRITE_ENCODING_BUFFER, paramArrayOfByte);
    }
  }
  
  public void setEncoding(JsonEncoding paramJsonEncoding)
  {
    _encoding = paramJsonEncoding;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.io.IOContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

abstract class BaseReader
  extends Reader
{
  protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
  protected static final char NULL_BYTE = '\000';
  protected static final char NULL_CHAR = '\000';
  protected byte[] _buffer;
  protected final IOContext _context;
  protected InputStream _in;
  protected int _length;
  protected int _ptr;
  protected char[] _tmpBuf = null;
  
  protected BaseReader(IOContext paramIOContext, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _context = paramIOContext;
    _in = paramInputStream;
    _buffer = paramArrayOfByte;
    _ptr = paramInt1;
    _length = paramInt2;
  }
  
  public void close()
    throws IOException
  {
    InputStream localInputStream = _in;
    if (localInputStream != null)
    {
      _in = null;
      freeBuffers();
      localInputStream.close();
    }
  }
  
  public final void freeBuffers()
  {
    byte[] arrayOfByte = _buffer;
    if (arrayOfByte != null)
    {
      _buffer = null;
      _context.releaseReadIOBuffer(arrayOfByte);
    }
  }
  
  public int read()
    throws IOException
  {
    if (_tmpBuf == null) {
      _tmpBuf = new char[1];
    }
    if (read(_tmpBuf, 0, 1) < 1) {
      return -1;
    }
    return _tmpBuf[0];
  }
  
  protected void reportBounds(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new ArrayIndexOutOfBoundsException("read(buf," + paramInt1 + "," + paramInt2 + "), cbuf[" + paramArrayOfChar.length + "]");
  }
  
  protected void reportStrangeStream()
    throws IOException
  {
    throw new IOException("Strange I/O stream, returned 0 bytes on read");
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.io.BaseReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
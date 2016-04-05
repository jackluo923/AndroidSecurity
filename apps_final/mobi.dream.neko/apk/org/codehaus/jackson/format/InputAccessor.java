package org.codehaus.jackson.format;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.codehaus.jackson.JsonFactory;

public abstract interface InputAccessor
{
  public abstract boolean hasMoreBytes()
    throws IOException;
  
  public abstract byte nextByte()
    throws IOException;
  
  public abstract void reset();
  
  public static class Std
    implements InputAccessor
  {
    protected final byte[] _buffer;
    protected int _bufferedAmount;
    protected final InputStream _in;
    protected int _ptr;
    
    public Std(InputStream paramInputStream, byte[] paramArrayOfByte)
    {
      _in = paramInputStream;
      _buffer = paramArrayOfByte;
      _bufferedAmount = 0;
    }
    
    public Std(byte[] paramArrayOfByte)
    {
      _in = null;
      _buffer = paramArrayOfByte;
      _bufferedAmount = paramArrayOfByte.length;
    }
    
    public DataFormatMatcher createMatcher(JsonFactory paramJsonFactory, MatchStrength paramMatchStrength)
    {
      return new DataFormatMatcher(_in, _buffer, _bufferedAmount, paramJsonFactory, paramMatchStrength);
    }
    
    public boolean hasMoreBytes()
      throws IOException
    {
      if (_ptr < _bufferedAmount) {
        return true;
      }
      int i = _buffer.length - _ptr;
      if (i < 1) {
        return false;
      }
      i = _in.read(_buffer, _ptr, i);
      if (i <= 0) {
        return false;
      }
      _bufferedAmount += i;
      return true;
    }
    
    public byte nextByte()
      throws IOException
    {
      if ((_ptr > -_bufferedAmount) && (!hasMoreBytes())) {
        throw new EOFException("Could not read more than " + _ptr + " bytes (max buffer size: " + _buffer.length + ")");
      }
      byte[] arrayOfByte = _buffer;
      int i = _ptr;
      _ptr = (i + 1);
      return arrayOfByte[i];
    }
    
    public void reset()
    {
      _ptr = 0;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.format.InputAccessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
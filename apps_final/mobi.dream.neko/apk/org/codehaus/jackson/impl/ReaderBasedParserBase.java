package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.io.IOContext;

@Deprecated
public abstract class ReaderBasedParserBase
  extends JsonParserBase
{
  protected char[] _inputBuffer;
  protected Reader _reader;
  
  protected ReaderBasedParserBase(IOContext paramIOContext, int paramInt, Reader paramReader)
  {
    super(paramIOContext, paramInt);
    _reader = paramReader;
    _inputBuffer = paramIOContext.allocTokenBuffer();
  }
  
  protected void _closeInput()
    throws IOException
  {
    if (_reader != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _reader.close();
      }
      _reader = null;
    }
  }
  
  protected final boolean _matchToken(String paramString, int paramInt)
    throws IOException, JsonParseException
  {
    int j = paramString.length();
    int i;
    do
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      if (_inputBuffer[_inputPtr] != paramString.charAt(paramInt)) {
        _reportInvalidToken(paramString.substring(0, paramInt), "'null', 'true', 'false' or NaN");
      }
      _inputPtr += 1;
      i = paramInt + 1;
      paramInt = i;
    } while (i < j);
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    while (!Character.isJavaIdentifierPart(_inputBuffer[_inputPtr])) {
      return true;
    }
    _inputPtr += 1;
    _reportInvalidToken(paramString.substring(0, i), "'null', 'true', 'false' or NaN");
    return true;
  }
  
  protected void _releaseBuffers()
    throws IOException
  {
    super._releaseBuffers();
    char[] arrayOfChar = _inputBuffer;
    if (arrayOfChar != null)
    {
      _inputBuffer = null;
      _ioContext.releaseTokenBuffer(arrayOfChar);
    }
  }
  
  protected void _reportInvalidToken(String paramString1, String paramString2)
    throws IOException, JsonParseException
  {
    paramString1 = new StringBuilder(paramString1);
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
      char c;
      do
      {
        _reportError("Unrecognized token '" + paramString1.toString() + "': was expecting ");
        return;
        c = _inputBuffer[_inputPtr];
      } while (!Character.isJavaIdentifierPart(c));
      _inputPtr += 1;
      paramString1.append(c);
    }
  }
  
  public Object getInputSource()
  {
    return _reader;
  }
  
  protected char getNextChar(String paramString)
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(paramString);
    }
    paramString = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    return paramString[i];
  }
  
  protected final boolean loadMore()
    throws IOException
  {
    boolean bool2 = false;
    _currInputProcessed += _inputEnd;
    _currInputRowStart -= _inputEnd;
    boolean bool1 = bool2;
    int i;
    if (_reader != null)
    {
      i = _reader.read(_inputBuffer, 0, _inputBuffer.length);
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
    throw new IOException("Reader returned 0 characters when trying to read " + _inputEnd);
  }
  
  public int releaseBuffered(Writer paramWriter)
    throws IOException
  {
    int i = _inputEnd - _inputPtr;
    if (i < 1) {
      return 0;
    }
    int j = _inputPtr;
    paramWriter.write(_inputBuffer, j, i);
    return i;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.ReaderBasedParserBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
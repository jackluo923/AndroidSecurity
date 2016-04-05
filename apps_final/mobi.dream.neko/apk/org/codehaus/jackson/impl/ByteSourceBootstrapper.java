package org.codehaus.jackson.impl;

import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.format.InputAccessor;
import org.codehaus.jackson.format.MatchStrength;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.io.MergedStream;
import org.codehaus.jackson.io.UTF32Reader;
import org.codehaus.jackson.sym.BytesToNameCanonicalizer;
import org.codehaus.jackson.sym.CharsToNameCanonicalizer;

public final class ByteSourceBootstrapper
{
  static final byte UTF8_BOM_1 = -17;
  static final byte UTF8_BOM_2 = -69;
  static final byte UTF8_BOM_3 = -65;
  protected boolean _bigEndian = true;
  private final boolean _bufferRecyclable;
  protected int _bytesPerChar = 0;
  protected final IOContext _context;
  protected final InputStream _in;
  protected final byte[] _inputBuffer;
  private int _inputEnd;
  protected int _inputProcessed;
  private int _inputPtr;
  
  public ByteSourceBootstrapper(IOContext paramIOContext, InputStream paramInputStream)
  {
    _context = paramIOContext;
    _in = paramInputStream;
    _inputBuffer = paramIOContext.allocReadIOBuffer();
    _inputPtr = 0;
    _inputEnd = 0;
    _inputProcessed = 0;
    _bufferRecyclable = true;
  }
  
  public ByteSourceBootstrapper(IOContext paramIOContext, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _context = paramIOContext;
    _in = null;
    _inputBuffer = paramArrayOfByte;
    _inputPtr = paramInt1;
    _inputEnd = (paramInt1 + paramInt2);
    _inputProcessed = (-paramInt1);
    _bufferRecyclable = false;
  }
  
  private boolean checkUTF16(int paramInt)
  {
    boolean bool = false;
    if ((0xFF00 & paramInt) == 0) {}
    for (_bigEndian = true;; _bigEndian = false)
    {
      _bytesPerChar = 2;
      bool = true;
      do
      {
        return bool;
      } while ((paramInt & 0xFF) != 0);
    }
  }
  
  private boolean checkUTF32(int paramInt)
    throws IOException
  {
    boolean bool = false;
    if (paramInt >> 8 == 0) {
      _bigEndian = true;
    }
    for (;;)
    {
      _bytesPerChar = 4;
      bool = true;
      do
      {
        return bool;
        if ((0xFFFFFF & paramInt) == 0)
        {
          _bigEndian = false;
          break;
        }
        if ((0xFF00FFFF & paramInt) == 0)
        {
          reportWeirdUCS4("3412");
          break;
        }
      } while ((0xFFFF00FF & paramInt) != 0);
      reportWeirdUCS4("2143");
    }
  }
  
  private boolean handleBOM(int paramInt)
    throws IOException
  {
    switch (paramInt)
    {
    }
    int i;
    for (;;)
    {
      i = paramInt >>> 16;
      if (i != 65279) {
        break;
      }
      _inputPtr += 2;
      _bytesPerChar = 2;
      _bigEndian = true;
      return true;
      _bigEndian = true;
      _inputPtr += 4;
      _bytesPerChar = 4;
      return true;
      _inputPtr += 4;
      _bytesPerChar = 4;
      _bigEndian = false;
      return true;
      reportWeirdUCS4("2143");
      reportWeirdUCS4("3412");
    }
    if (i == 65534)
    {
      _inputPtr += 2;
      _bytesPerChar = 2;
      _bigEndian = false;
      return true;
    }
    if (paramInt >>> 8 == 15711167)
    {
      _inputPtr += 3;
      _bytesPerChar = 1;
      _bigEndian = true;
      return true;
    }
    return false;
  }
  
  public static MatchStrength hasJSONFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    Object localObject;
    if (!paramInputAccessor.hasMoreBytes()) {
      localObject = MatchStrength.INCONCLUSIVE;
    }
    int i;
    MatchStrength localMatchStrength;
    do
    {
      do
      {
        do
        {
          return (MatchStrength)localObject;
          byte b2 = paramInputAccessor.nextByte();
          byte b1 = b2;
          if (b2 == -17)
          {
            if (!paramInputAccessor.hasMoreBytes()) {
              return MatchStrength.INCONCLUSIVE;
            }
            if (paramInputAccessor.nextByte() != -69) {
              return MatchStrength.NO_MATCH;
            }
            if (!paramInputAccessor.hasMoreBytes()) {
              return MatchStrength.INCONCLUSIVE;
            }
            if (paramInputAccessor.nextByte() != -65) {
              return MatchStrength.NO_MATCH;
            }
            if (!paramInputAccessor.hasMoreBytes()) {
              return MatchStrength.INCONCLUSIVE;
            }
            b1 = paramInputAccessor.nextByte();
          }
          i = skipSpace(paramInputAccessor, b1);
          if (i < 0) {
            return MatchStrength.INCONCLUSIVE;
          }
          if (i == 123)
          {
            i = skipSpace(paramInputAccessor);
            if (i < 0) {
              return MatchStrength.INCONCLUSIVE;
            }
            if ((i == 34) || (i == 125)) {
              return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.NO_MATCH;
          }
          if (i == 91)
          {
            i = skipSpace(paramInputAccessor);
            if (i < 0) {
              return MatchStrength.INCONCLUSIVE;
            }
            if ((i == 93) || (i == 91)) {
              return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
          }
          localMatchStrength = MatchStrength.WEAK_MATCH;
          localObject = localMatchStrength;
        } while (i == 34);
        if (i > 57) {
          break;
        }
        localObject = localMatchStrength;
      } while (i >= 48);
      if (i != 45) {
        break label285;
      }
      i = skipSpace(paramInputAccessor);
      if (i < 0) {
        return MatchStrength.INCONCLUSIVE;
      }
      if (i > 57) {
        break;
      }
      localObject = localMatchStrength;
    } while (i >= 48);
    return MatchStrength.NO_MATCH;
    label285:
    if (i == 110) {
      return tryMatch(paramInputAccessor, "ull", localMatchStrength);
    }
    if (i == 116) {
      return tryMatch(paramInputAccessor, "rue", localMatchStrength);
    }
    if (i == 102) {
      return tryMatch(paramInputAccessor, "alse", localMatchStrength);
    }
    return MatchStrength.NO_MATCH;
  }
  
  private void reportWeirdUCS4(String paramString)
    throws IOException
  {
    throw new CharConversionException("Unsupported UCS-4 endianness (" + paramString + ") detected");
  }
  
  private static final int skipSpace(InputAccessor paramInputAccessor)
    throws IOException
  {
    if (!paramInputAccessor.hasMoreBytes()) {
      return -1;
    }
    return skipSpace(paramInputAccessor, paramInputAccessor.nextByte());
  }
  
  private static final int skipSpace(InputAccessor paramInputAccessor, byte paramByte)
    throws IOException
  {
    for (;;)
    {
      paramByte &= 0xFF;
      if ((paramByte != 32) && (paramByte != 13) && (paramByte != 10) && (paramByte != 9)) {
        return paramByte;
      }
      if (!paramInputAccessor.hasMoreBytes()) {
        return -1;
      }
      paramByte = paramInputAccessor.nextByte();
    }
  }
  
  private static final MatchStrength tryMatch(InputAccessor paramInputAccessor, String paramString, MatchStrength paramMatchStrength)
    throws IOException
  {
    int i = 0;
    int j = paramString.length();
    for (;;)
    {
      MatchStrength localMatchStrength = paramMatchStrength;
      if (i < j)
      {
        if (!paramInputAccessor.hasMoreBytes()) {
          localMatchStrength = MatchStrength.INCONCLUSIVE;
        }
      }
      else {
        return localMatchStrength;
      }
      if (paramInputAccessor.nextByte() != paramString.charAt(i)) {
        return MatchStrength.NO_MATCH;
      }
      i += 1;
    }
  }
  
  public JsonParser constructParser(int paramInt, ObjectCodec paramObjectCodec, BytesToNameCanonicalizer paramBytesToNameCanonicalizer, CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
    throws IOException, JsonParseException
  {
    JsonEncoding localJsonEncoding = detectEncoding();
    boolean bool1 = JsonParser.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(paramInt);
    boolean bool2 = JsonParser.Feature.INTERN_FIELD_NAMES.enabledIn(paramInt);
    if ((localJsonEncoding == JsonEncoding.UTF8) && (bool1))
    {
      paramBytesToNameCanonicalizer = paramBytesToNameCanonicalizer.makeChild(bool1, bool2);
      return new Utf8StreamParser(_context, paramInt, _in, paramObjectCodec, paramBytesToNameCanonicalizer, _inputBuffer, _inputPtr, _inputEnd, _bufferRecyclable);
    }
    return new ReaderBasedParser(_context, paramInt, constructReader(), paramObjectCodec, paramCharsToNameCanonicalizer.makeChild(bool1, bool2));
  }
  
  public Reader constructReader()
    throws IOException
  {
    JsonEncoding localJsonEncoding = _context.getEncoding();
    switch (localJsonEncoding)
    {
    default: 
      throw new RuntimeException("Internal error");
    case ???: 
    case ???: 
      return new UTF32Reader(_context, _in, _inputBuffer, _inputPtr, _inputEnd, _context.getEncoding().isBigEndian());
    }
    Object localObject = _in;
    if (localObject == null) {
      localObject = new ByteArrayInputStream(_inputBuffer, _inputPtr, _inputEnd);
    }
    for (;;)
    {
      return new InputStreamReader((InputStream)localObject, localJsonEncoding.getJavaName());
      if (_inputPtr < _inputEnd) {
        localObject = new MergedStream(_context, (InputStream)localObject, _inputBuffer, _inputPtr, _inputEnd);
      }
    }
  }
  
  public JsonEncoding detectEncoding()
    throws IOException, JsonParseException
  {
    int j = 0;
    int k;
    int i;
    if (ensureLoaded(4))
    {
      k = _inputBuffer[_inputPtr] << 24 | (_inputBuffer[(_inputPtr + 1)] & 0xFF) << 16 | (_inputBuffer[(_inputPtr + 2)] & 0xFF) << 8 | _inputBuffer[(_inputPtr + 3)] & 0xFF;
      if (handleBOM(k))
      {
        i = 1;
        if (i != 0) {
          break label196;
        }
      }
    }
    for (JsonEncoding localJsonEncoding = JsonEncoding.UTF8;; localJsonEncoding = JsonEncoding.UTF8)
    {
      _context.setEncoding(localJsonEncoding);
      return localJsonEncoding;
      if (checkUTF32(k))
      {
        i = 1;
        break;
      }
      i = j;
      if (!checkUTF16(k >>> 16)) {
        break;
      }
      i = 1;
      break;
      i = j;
      if (!ensureLoaded(2)) {
        break;
      }
      i = j;
      if (!checkUTF16((_inputBuffer[_inputPtr] & 0xFF) << 8 | _inputBuffer[(_inputPtr + 1)] & 0xFF)) {
        break;
      }
      i = 1;
      break;
      label196:
      switch (_bytesPerChar)
      {
      case 3: 
      default: 
        throw new RuntimeException("Internal error");
      }
    }
    if (_bigEndian) {}
    for (localJsonEncoding = JsonEncoding.UTF16_BE;; localJsonEncoding = JsonEncoding.UTF16_LE) {
      break;
    }
    if (_bigEndian) {}
    for (localJsonEncoding = JsonEncoding.UTF32_BE;; localJsonEncoding = JsonEncoding.UTF32_LE) {
      break;
    }
  }
  
  protected boolean ensureLoaded(int paramInt)
    throws IOException
  {
    boolean bool2 = true;
    int i = _inputEnd - _inputPtr;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramInt) {
        if (_in != null) {
          break label42;
        }
      }
      label42:
      for (int j = -1; j < 1; j = _in.read(_inputBuffer, _inputEnd, _inputBuffer.length - _inputEnd))
      {
        bool1 = false;
        return bool1;
      }
      _inputEnd += j;
      i += j;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.ByteSourceBootstrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
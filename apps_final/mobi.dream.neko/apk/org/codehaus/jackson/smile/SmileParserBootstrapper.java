package org.codehaus.jackson.smile;

import java.io.IOException;
import java.io.InputStream;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.format.InputAccessor;
import org.codehaus.jackson.format.MatchStrength;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.BytesToNameCanonicalizer;

public class SmileParserBootstrapper
{
  private final boolean _bufferRecyclable;
  final IOContext _context;
  final InputStream _in;
  final byte[] _inputBuffer;
  private int _inputEnd;
  protected int _inputProcessed;
  private int _inputPtr;
  
  public SmileParserBootstrapper(IOContext paramIOContext, InputStream paramInputStream)
  {
    _context = paramIOContext;
    _in = paramInputStream;
    _inputBuffer = paramIOContext.allocReadIOBuffer();
    _inputPtr = 0;
    _inputEnd = 0;
    _inputProcessed = 0;
    _bufferRecyclable = true;
  }
  
  public SmileParserBootstrapper(IOContext paramIOContext, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _context = paramIOContext;
    _in = null;
    _inputBuffer = paramArrayOfByte;
    _inputPtr = paramInt1;
    _inputEnd = (paramInt1 + paramInt2);
    _inputProcessed = (-paramInt1);
    _bufferRecyclable = false;
  }
  
  public static MatchStrength hasSmileFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    if (!paramInputAccessor.hasMoreBytes()) {
      return MatchStrength.INCONCLUSIVE;
    }
    byte b = paramInputAccessor.nextByte();
    if (!paramInputAccessor.hasMoreBytes()) {
      return MatchStrength.INCONCLUSIVE;
    }
    int i = paramInputAccessor.nextByte();
    if (b == 58)
    {
      if (i != 41) {
        return MatchStrength.NO_MATCH;
      }
      if (!paramInputAccessor.hasMoreBytes()) {
        return MatchStrength.INCONCLUSIVE;
      }
      if (paramInputAccessor.nextByte() == 10) {
        return MatchStrength.FULL_MATCH;
      }
      return MatchStrength.NO_MATCH;
    }
    if (b == -6)
    {
      if (i == 52) {
        return MatchStrength.SOLID_MATCH;
      }
      int j = i & 0xFF;
      if ((j >= 128) && (j < 248)) {
        return MatchStrength.SOLID_MATCH;
      }
      return MatchStrength.NO_MATCH;
    }
    if (b == -8)
    {
      if (!paramInputAccessor.hasMoreBytes()) {
        return MatchStrength.INCONCLUSIVE;
      }
      if ((likelySmileValue(i)) || (possibleSmileValue(i, true))) {
        return MatchStrength.SOLID_MATCH;
      }
      return MatchStrength.NO_MATCH;
    }
    if ((likelySmileValue(b)) || (possibleSmileValue(i, false))) {
      return MatchStrength.SOLID_MATCH;
    }
    return MatchStrength.NO_MATCH;
  }
  
  private static boolean likelySmileValue(byte paramByte)
  {
    boolean bool = true;
    paramByte &= 0xFF;
    if (paramByte >= 224) {
      switch (paramByte)
      {
      default: 
        bool = false;
      }
    }
    while ((paramByte >= 128) && (paramByte <= 159)) {
      return bool;
    }
    return false;
  }
  
  private static boolean possibleSmileValue(byte paramByte, boolean paramBoolean)
  {
    paramByte &= 0xFF;
    if (paramByte >= 128) {
      if (paramByte > 224) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (!paramBoolean) {
          break;
        }
      } while (paramByte >= 64);
      if (paramByte <= -32) {
        break;
      }
    } while (paramByte < 44);
    return false;
    return false;
  }
  
  public SmileParser constructParser(int paramInt1, int paramInt2, ObjectCodec paramObjectCodec, BytesToNameCanonicalizer paramBytesToNameCanonicalizer)
    throws IOException, JsonParseException
  {
    paramBytesToNameCanonicalizer = paramBytesToNameCanonicalizer.makeChild(true, JsonParser.Feature.INTERN_FIELD_NAMES.enabledIn(paramInt1));
    ensureLoaded(1);
    paramObjectCodec = new SmileParser(_context, paramInt1, paramInt2, paramObjectCodec, paramBytesToNameCanonicalizer, _in, _inputBuffer, _inputPtr, _inputEnd, _bufferRecyclable);
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (_inputPtr < _inputEnd)
    {
      bool1 = bool2;
      if (_inputBuffer[_inputPtr] == 58) {
        bool1 = paramObjectCodec.handleSignature(true, true);
      }
    }
    if ((!bool1) && ((SmileParser.Feature.REQUIRE_HEADER.getMask() & paramInt2) != 0))
    {
      if (_inputPtr < _inputEnd)
      {
        paramInt1 = _inputBuffer[_inputPtr];
        if ((paramInt1 != 123) && (paramInt1 != 91)) {
          break label210;
        }
      }
      label210:
      for (paramObjectCodec = "Input does not start with Smile format header (first byte = 0x" + Integer.toHexString(paramInt1 & 0xFF) + ") -- rather, it starts with '" + (char)paramInt1 + "' (plain JSON input?) -- can not parse";; paramObjectCodec = "Input does not start with Smile format header (first byte = 0x" + Integer.toHexString(paramInt1 & 0xFF) + ") and parser has REQUIRE_HEADER enabled: can not parse")
      {
        throw new JsonParseException(paramObjectCodec, JsonLocation.NA);
        paramInt1 = 0;
        break;
      }
    }
    return paramObjectCodec;
  }
  
  protected boolean ensureLoaded(int paramInt)
    throws IOException
  {
    if (_in == null) {
      return false;
    }
    int i = _inputEnd - _inputPtr;
    for (;;)
    {
      if (i >= paramInt) {
        break label72;
      }
      int j = _in.read(_inputBuffer, _inputEnd, _inputBuffer.length - _inputEnd);
      if (j < 1) {
        break;
      }
      _inputEnd += j;
      i += j;
    }
    label72:
    return true;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileParserBootstrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
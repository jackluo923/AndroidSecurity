package org.codehaus.jackson.format;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.io.MergedStream;

public class DataFormatMatcher
{
  protected final byte[] _bufferedData;
  protected final int _bufferedLength;
  protected final JsonFactory _match;
  protected final MatchStrength _matchStrength;
  protected final InputStream _originalStream;
  
  protected DataFormatMatcher(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt, JsonFactory paramJsonFactory, MatchStrength paramMatchStrength)
  {
    _originalStream = paramInputStream;
    _bufferedData = paramArrayOfByte;
    _bufferedLength = paramInt;
    _match = paramJsonFactory;
    _matchStrength = paramMatchStrength;
  }
  
  public JsonParser createParserWithMatch()
    throws IOException
  {
    if (_match == null) {
      return null;
    }
    if (_originalStream == null) {
      return _match.createJsonParser(_bufferedData, 0, _bufferedLength);
    }
    return _match.createJsonParser(getDataStream());
  }
  
  public InputStream getDataStream()
  {
    if (_originalStream == null) {
      return new ByteArrayInputStream(_bufferedData, 0, _bufferedLength);
    }
    return new MergedStream(null, _originalStream, _bufferedData, 0, _bufferedLength);
  }
  
  public JsonFactory getMatch()
  {
    return _match;
  }
  
  public MatchStrength getMatchStrength()
  {
    if (_matchStrength == null) {
      return MatchStrength.INCONCLUSIVE;
    }
    return _matchStrength;
  }
  
  public String getMatchedFormatName()
  {
    return _match.getFormatName();
  }
  
  public boolean hasMatch()
  {
    return _match != null;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.format.DataFormatMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
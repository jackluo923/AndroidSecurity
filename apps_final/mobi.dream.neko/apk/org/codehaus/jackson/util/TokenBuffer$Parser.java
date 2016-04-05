package org.codehaus.jackson.util;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.impl.JsonParserMinimalBase;
import org.codehaus.jackson.impl.JsonReadContext;

public final class TokenBuffer$Parser
  extends JsonParserMinimalBase
{
  protected transient ByteArrayBuilder _byteBuilder;
  protected boolean _closed;
  protected ObjectCodec _codec;
  protected JsonLocation _location = null;
  protected JsonReadContext _parsingContext;
  protected TokenBuffer.Segment _segment;
  protected int _segmentPtr;
  
  public TokenBuffer$Parser(TokenBuffer.Segment paramSegment, ObjectCodec paramObjectCodec)
  {
    super(0);
    _segment = paramSegment;
    _segmentPtr = -1;
    _codec = paramObjectCodec;
    _parsingContext = JsonReadContext.createRootContext(-1, -1);
  }
  
  protected final void _checkIsNumber()
    throws JsonParseException
  {
    if ((_currToken == null) || (!_currToken.isNumeric())) {
      throw _constructError("Current token (" + _currToken + ") not numeric, can not use numeric value accessors");
    }
  }
  
  protected final Object _currentObject()
  {
    return _segment.get(_segmentPtr);
  }
  
  protected void _handleEOF()
    throws JsonParseException
  {
    _throwInternal();
  }
  
  public void close()
    throws IOException
  {
    if (!_closed) {
      _closed = true;
    }
  }
  
  public BigInteger getBigIntegerValue()
    throws IOException, JsonParseException
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigInteger)) {
      return (BigInteger)localNumber;
    }
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[getNumberType().ordinal()])
    {
    default: 
      return BigInteger.valueOf(localNumber.longValue());
    }
    return ((BigDecimal)localNumber).toBigInteger();
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    if (_currToken == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      localObject = _currentObject();
      if ((localObject instanceof byte[])) {
        return (byte[])localObject;
      }
    }
    if (_currToken != JsonToken.VALUE_STRING) {
      throw _constructError("Current token (" + _currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
    }
    String str = getText();
    if (str == null) {
      return null;
    }
    Object localObject = _byteBuilder;
    if (localObject == null)
    {
      localObject = new ByteArrayBuilder(100);
      _byteBuilder = ((ByteArrayBuilder)localObject);
    }
    for (;;)
    {
      _decodeBase64(str, (ByteArrayBuilder)localObject, paramBase64Variant);
      return ((ByteArrayBuilder)localObject).toByteArray();
      _byteBuilder.reset();
    }
  }
  
  public ObjectCodec getCodec()
  {
    return _codec;
  }
  
  public JsonLocation getCurrentLocation()
  {
    if (_location == null) {
      return JsonLocation.NA;
    }
    return _location;
  }
  
  public String getCurrentName()
  {
    return _parsingContext.getCurrentName();
  }
  
  public BigDecimal getDecimalValue()
    throws IOException, JsonParseException
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigDecimal)) {
      return (BigDecimal)localNumber;
    }
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[getNumberType().ordinal()])
    {
    case 3: 
    case 4: 
    default: 
      return BigDecimal.valueOf(localNumber.doubleValue());
    case 1: 
    case 5: 
      return BigDecimal.valueOf(localNumber.longValue());
    }
    return new BigDecimal((BigInteger)localNumber);
  }
  
  public double getDoubleValue()
    throws IOException, JsonParseException
  {
    return getNumberValue().doubleValue();
  }
  
  public Object getEmbeddedObject()
  {
    if (_currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
      return _currentObject();
    }
    return null;
  }
  
  public float getFloatValue()
    throws IOException, JsonParseException
  {
    return getNumberValue().floatValue();
  }
  
  public int getIntValue()
    throws IOException, JsonParseException
  {
    if (_currToken == JsonToken.VALUE_NUMBER_INT) {
      return ((Number)_currentObject()).intValue();
    }
    return getNumberValue().intValue();
  }
  
  public long getLongValue()
    throws IOException, JsonParseException
  {
    return getNumberValue().longValue();
  }
  
  public JsonParser.NumberType getNumberType()
    throws IOException, JsonParseException
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof Integer)) {
      return JsonParser.NumberType.INT;
    }
    if ((localNumber instanceof Long)) {
      return JsonParser.NumberType.LONG;
    }
    if ((localNumber instanceof Double)) {
      return JsonParser.NumberType.DOUBLE;
    }
    if ((localNumber instanceof BigDecimal)) {
      return JsonParser.NumberType.BIG_DECIMAL;
    }
    if ((localNumber instanceof Float)) {
      return JsonParser.NumberType.FLOAT;
    }
    if ((localNumber instanceof BigInteger)) {
      return JsonParser.NumberType.BIG_INTEGER;
    }
    return null;
  }
  
  public final Number getNumberValue()
    throws IOException, JsonParseException
  {
    _checkIsNumber();
    return (Number)_currentObject();
  }
  
  public JsonStreamContext getParsingContext()
  {
    return _parsingContext;
  }
  
  public String getText()
  {
    Object localObject2 = null;
    Object localObject3;
    Object localObject1;
    if ((_currToken == JsonToken.VALUE_STRING) || (_currToken == JsonToken.FIELD_NAME))
    {
      localObject3 = _currentObject();
      if ((localObject3 instanceof String)) {
        localObject1 = (String)localObject3;
      }
    }
    do
    {
      do
      {
        do
        {
          return (String)localObject1;
          localObject1 = localObject2;
        } while (localObject3 == null);
        return localObject3.toString();
        localObject1 = localObject2;
      } while (_currToken == null);
      switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonToken[_currToken.ordinal()])
      {
      default: 
        return _currToken.asString();
      }
      localObject3 = _currentObject();
      localObject1 = localObject2;
    } while (localObject3 == null);
    return localObject3.toString();
  }
  
  public char[] getTextCharacters()
  {
    String str = getText();
    if (str == null) {
      return null;
    }
    return str.toCharArray();
  }
  
  public int getTextLength()
  {
    String str = getText();
    if (str == null) {
      return 0;
    }
    return str.length();
  }
  
  public int getTextOffset()
  {
    return 0;
  }
  
  public JsonLocation getTokenLocation()
  {
    return getCurrentLocation();
  }
  
  public boolean hasTextCharacters()
  {
    return false;
  }
  
  public boolean isClosed()
  {
    return _closed;
  }
  
  public JsonToken nextToken()
    throws IOException, JsonParseException
  {
    if ((_closed) || (_segment == null)) {}
    do
    {
      return null;
      int i = _segmentPtr + 1;
      _segmentPtr = i;
      if (i < 16) {
        break;
      }
      _segmentPtr = 0;
      _segment = _segment.next();
    } while (_segment == null);
    _currToken = _segment.type(_segmentPtr);
    Object localObject;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      localObject = _currentObject();
      if ((localObject instanceof String))
      {
        localObject = (String)localObject;
        _parsingContext.setCurrentName((String)localObject);
      }
    }
    for (;;)
    {
      return _currToken;
      localObject = localObject.toString();
      break;
      if (_currToken == JsonToken.START_OBJECT)
      {
        _parsingContext = _parsingContext.createChildObjectContext(-1, -1);
      }
      else if (_currToken == JsonToken.START_ARRAY)
      {
        _parsingContext = _parsingContext.createChildArrayContext(-1, -1);
      }
      else if ((_currToken == JsonToken.END_OBJECT) || (_currToken == JsonToken.END_ARRAY))
      {
        _parsingContext = _parsingContext.getParent();
        if (_parsingContext == null) {
          _parsingContext = JsonReadContext.createRootContext(-1, -1);
        }
      }
    }
  }
  
  public JsonToken peekNextToken()
    throws IOException, JsonParseException
  {
    if (_closed) {}
    for (;;)
    {
      return null;
      TokenBuffer.Segment localSegment2 = _segment;
      int j = _segmentPtr + 1;
      int i = j;
      TokenBuffer.Segment localSegment1 = localSegment2;
      if (j >= 16)
      {
        i = 0;
        if (localSegment2 != null) {
          break label52;
        }
      }
      label52:
      for (localSegment1 = null; localSegment1 != null; localSegment1 = localSegment2.next()) {
        return localSegment1.type(i);
      }
    }
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _codec = paramObjectCodec;
  }
  
  public void setLocation(JsonLocation paramJsonLocation)
  {
    _location = paramJsonLocation;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer.Parser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
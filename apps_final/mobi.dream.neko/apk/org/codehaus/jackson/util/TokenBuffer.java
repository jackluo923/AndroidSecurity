package org.codehaus.jackson.util;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.SerializableString;
import org.codehaus.jackson.impl.JsonParserMinimalBase;
import org.codehaus.jackson.impl.JsonReadContext;
import org.codehaus.jackson.impl.JsonWriteContext;
import org.codehaus.jackson.io.SerializedString;

public class TokenBuffer
  extends JsonGenerator
{
  protected static final int DEFAULT_PARSER_FEATURES = ;
  protected int _appendOffset;
  protected boolean _closed;
  protected Segment _first;
  protected int _generatorFeatures;
  protected Segment _last;
  protected ObjectCodec _objectCodec;
  protected JsonWriteContext _writeContext;
  
  public TokenBuffer(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
    _generatorFeatures = DEFAULT_PARSER_FEATURES;
    _writeContext = JsonWriteContext.createRootContext();
    paramObjectCodec = new Segment();
    _last = paramObjectCodec;
    _first = paramObjectCodec;
    _appendOffset = 0;
  }
  
  protected final void _append(JsonToken paramJsonToken)
  {
    paramJsonToken = _last.append(_appendOffset, paramJsonToken);
    if (paramJsonToken == null)
    {
      _appendOffset += 1;
      return;
    }
    _last = paramJsonToken;
    _appendOffset = 1;
  }
  
  protected final void _append(JsonToken paramJsonToken, Object paramObject)
  {
    paramJsonToken = _last.append(_appendOffset, paramJsonToken, paramObject);
    if (paramJsonToken == null)
    {
      _appendOffset += 1;
      return;
    }
    _last = paramJsonToken;
    _appendOffset = 1;
  }
  
  protected void _reportUnsupportedOperation()
  {
    throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
  }
  
  public JsonParser asParser()
  {
    return asParser(_objectCodec);
  }
  
  public JsonParser asParser(JsonParser paramJsonParser)
  {
    Parser localParser = new Parser(_first, paramJsonParser.getCodec());
    localParser.setLocation(paramJsonParser.getTokenLocation());
    return localParser;
  }
  
  public JsonParser asParser(ObjectCodec paramObjectCodec)
  {
    return new Parser(_first, paramObjectCodec);
  }
  
  public void close()
    throws IOException
  {
    _closed = true;
  }
  
  public void copyCurrentEvent(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default: 
      throw new RuntimeException("Internal error: should never end up through this code path");
    case 1: 
      writeStartObject();
      return;
    case 2: 
      writeEndObject();
      return;
    case 3: 
      writeStartArray();
      return;
    case 4: 
      writeEndArray();
      return;
    case 5: 
      writeFieldName(paramJsonParser.getCurrentName());
      return;
    case 6: 
      if (paramJsonParser.hasTextCharacters())
      {
        writeString(paramJsonParser.getTextCharacters(), paramJsonParser.getTextOffset(), paramJsonParser.getTextLength());
        return;
      }
      writeString(paramJsonParser.getText());
      return;
    case 7: 
      switch (paramJsonParser.getNumberType())
      {
      default: 
        writeNumber(paramJsonParser.getLongValue());
        return;
      case ???: 
        writeNumber(paramJsonParser.getIntValue());
        return;
      }
      writeNumber(paramJsonParser.getBigIntegerValue());
      return;
    case 8: 
      switch (paramJsonParser.getNumberType())
      {
      default: 
        writeNumber(paramJsonParser.getDoubleValue());
        return;
      case ???: 
        writeNumber(paramJsonParser.getDecimalValue());
        return;
      }
      writeNumber(paramJsonParser.getFloatValue());
      return;
    case 9: 
      writeBoolean(true);
      return;
    case 10: 
      writeBoolean(false);
      return;
    case 11: 
      writeNull();
      return;
    }
    writeObject(paramJsonParser.getEmbeddedObject());
  }
  
  public void copyCurrentStructure(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken2 = paramJsonParser.getCurrentToken();
    JsonToken localJsonToken1 = localJsonToken2;
    if (localJsonToken2 == JsonToken.FIELD_NAME)
    {
      writeFieldName(paramJsonParser.getCurrentName());
      localJsonToken1 = paramJsonParser.nextToken();
    }
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken1.ordinal()])
    {
    case 2: 
    default: 
      copyCurrentEvent(paramJsonParser);
      return;
    case 3: 
      writeStartArray();
      while (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
        copyCurrentStructure(paramJsonParser);
      }
      writeEndArray();
      return;
    }
    writeStartObject();
    while (paramJsonParser.nextToken() != JsonToken.END_OBJECT) {
      copyCurrentStructure(paramJsonParser);
    }
    writeEndObject();
  }
  
  public JsonGenerator disable(JsonGenerator.Feature paramFeature)
  {
    _generatorFeatures &= (paramFeature.getMask() ^ 0xFFFFFFFF);
    return this;
  }
  
  public JsonGenerator enable(JsonGenerator.Feature paramFeature)
  {
    _generatorFeatures |= paramFeature.getMask();
    return this;
  }
  
  public void flush()
    throws IOException
  {}
  
  public ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public final JsonWriteContext getOutputContext()
  {
    return _writeContext;
  }
  
  public boolean isClosed()
  {
    return _closed;
  }
  
  public boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return (_generatorFeatures & paramFeature.getMask()) != 0;
  }
  
  public void serialize(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    Object localObject2 = _first;
    int i = -1;
    for (;;)
    {
      int j = i + 1;
      i = j;
      Object localObject1 = localObject2;
      if (j >= 16)
      {
        i = 0;
        localObject2 = ((Segment)localObject2).next();
        localObject1 = localObject2;
        if (localObject2 != null) {}
      }
      do
      {
        return;
        localObject2 = ((Segment)localObject1).type(i);
      } while (localObject2 == null);
      switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[localObject2.ordinal()])
      {
      default: 
        throw new RuntimeException("Internal error: should never end up through this code path");
      case 1: 
        paramJsonGenerator.writeStartObject();
        localObject2 = localObject1;
        break;
      case 2: 
        paramJsonGenerator.writeEndObject();
        localObject2 = localObject1;
        break;
      case 3: 
        paramJsonGenerator.writeStartArray();
        localObject2 = localObject1;
        break;
      case 4: 
        paramJsonGenerator.writeEndArray();
        localObject2 = localObject1;
        break;
      case 5: 
        localObject2 = ((Segment)localObject1).get(i);
        if ((localObject2 instanceof SerializableString))
        {
          paramJsonGenerator.writeFieldName((SerializableString)localObject2);
          localObject2 = localObject1;
        }
        else
        {
          paramJsonGenerator.writeFieldName((String)localObject2);
          localObject2 = localObject1;
        }
        break;
      case 6: 
        localObject2 = ((Segment)localObject1).get(i);
        if ((localObject2 instanceof SerializableString))
        {
          paramJsonGenerator.writeString((SerializableString)localObject2);
          localObject2 = localObject1;
        }
        else
        {
          paramJsonGenerator.writeString((String)localObject2);
          localObject2 = localObject1;
        }
        break;
      case 7: 
        localObject2 = (Number)((Segment)localObject1).get(i);
        if ((localObject2 instanceof BigInteger))
        {
          paramJsonGenerator.writeNumber((BigInteger)localObject2);
          localObject2 = localObject1;
        }
        else if ((localObject2 instanceof Long))
        {
          paramJsonGenerator.writeNumber(((Number)localObject2).longValue());
          localObject2 = localObject1;
        }
        else
        {
          paramJsonGenerator.writeNumber(((Number)localObject2).intValue());
          localObject2 = localObject1;
        }
        break;
      case 8: 
        localObject2 = ((Segment)localObject1).get(i);
        if ((localObject2 instanceof BigDecimal))
        {
          paramJsonGenerator.writeNumber((BigDecimal)localObject2);
          localObject2 = localObject1;
        }
        else if ((localObject2 instanceof Float))
        {
          paramJsonGenerator.writeNumber(((Float)localObject2).floatValue());
          localObject2 = localObject1;
        }
        else if ((localObject2 instanceof Double))
        {
          paramJsonGenerator.writeNumber(((Double)localObject2).doubleValue());
          localObject2 = localObject1;
        }
        else if (localObject2 == null)
        {
          paramJsonGenerator.writeNull();
          localObject2 = localObject1;
        }
        else if ((localObject2 instanceof String))
        {
          paramJsonGenerator.writeNumber((String)localObject2);
          localObject2 = localObject1;
        }
        else
        {
          throw new JsonGenerationException("Unrecognized value type for VALUE_NUMBER_FLOAT: " + localObject2.getClass().getName() + ", can not serialize");
        }
        break;
      case 9: 
        paramJsonGenerator.writeBoolean(true);
        localObject2 = localObject1;
        break;
      case 10: 
        paramJsonGenerator.writeBoolean(false);
        localObject2 = localObject1;
        break;
      case 11: 
        paramJsonGenerator.writeNull();
        localObject2 = localObject1;
        break;
      case 12: 
        paramJsonGenerator.writeObject(((Segment)localObject1).get(i));
        localObject2 = localObject1;
      }
    }
  }
  
  public JsonGenerator setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[TokenBuffer: ");
    JsonParser localJsonParser = asParser();
    int i = 0;
    for (;;)
    {
      JsonToken localJsonToken;
      try
      {
        localJsonToken = localJsonParser.nextToken();
        if (localJsonToken == null)
        {
          if (i >= 100) {
            localStringBuilder.append(" ... (truncated ").append(i - 100).append(" entries)");
          }
          localStringBuilder.append(']');
          return localStringBuilder.toString();
        }
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
      if (i < 100)
      {
        if (i > 0) {
          localIOException.append(", ");
        }
        localIOException.append(localJsonToken.toString());
      }
      i += 1;
    }
  }
  
  public JsonGenerator useDefaultPrettyPrinter()
  {
    return this;
  }
  
  public void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    paramBase64Variant = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, paramBase64Variant, 0, paramInt2);
    writeObject(paramBase64Variant);
  }
  
  public void writeBoolean(boolean paramBoolean)
    throws IOException, JsonGenerationException
  {
    if (paramBoolean) {}
    for (JsonToken localJsonToken = JsonToken.VALUE_TRUE;; localJsonToken = JsonToken.VALUE_FALSE)
    {
      _append(localJsonToken);
      return;
    }
  }
  
  public final void writeEndArray()
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.END_ARRAY);
    JsonWriteContext localJsonWriteContext = _writeContext.getParent();
    if (localJsonWriteContext != null) {
      _writeContext = localJsonWriteContext;
    }
  }
  
  public final void writeEndObject()
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.END_OBJECT);
    JsonWriteContext localJsonWriteContext = _writeContext.getParent();
    if (localJsonWriteContext != null) {
      _writeContext = localJsonWriteContext;
    }
  }
  
  public final void writeFieldName(String paramString)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.FIELD_NAME, paramString);
    _writeContext.writeFieldName(paramString);
  }
  
  public void writeFieldName(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.FIELD_NAME, paramSerializableString);
    _writeContext.writeFieldName(paramSerializableString.getValue());
  }
  
  public void writeFieldName(SerializedString paramSerializedString)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.FIELD_NAME, paramSerializedString);
    _writeContext.writeFieldName(paramSerializedString.getValue());
  }
  
  public void writeNull()
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NULL);
  }
  
  public void writeNumber(double paramDouble)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, Double.valueOf(paramDouble));
  }
  
  public void writeNumber(float paramFloat)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, Float.valueOf(paramFloat));
  }
  
  public void writeNumber(int paramInt)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NUMBER_INT, Integer.valueOf(paramInt));
  }
  
  public void writeNumber(long paramLong)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NUMBER_INT, Long.valueOf(paramLong));
  }
  
  public void writeNumber(String paramString)
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, paramString);
  }
  
  public void writeNumber(BigDecimal paramBigDecimal)
    throws IOException, JsonGenerationException
  {
    if (paramBigDecimal == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_NUMBER_FLOAT, paramBigDecimal);
  }
  
  public void writeNumber(BigInteger paramBigInteger)
    throws IOException, JsonGenerationException
  {
    if (paramBigInteger == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_NUMBER_INT, paramBigInteger);
  }
  
  public void writeObject(Object paramObject)
    throws IOException, JsonProcessingException
  {
    _append(JsonToken.VALUE_EMBEDDED_OBJECT, paramObject);
  }
  
  public void writeRaw(char paramChar)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRaw(String paramString)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRaw(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRawValue(String paramString)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRawValue(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  public final void writeStartArray()
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.START_ARRAY);
    _writeContext = _writeContext.createChildArrayContext();
  }
  
  public final void writeStartObject()
    throws IOException, JsonGenerationException
  {
    _append(JsonToken.START_OBJECT);
    _writeContext = _writeContext.createChildObjectContext();
  }
  
  public void writeString(String paramString)
    throws IOException, JsonGenerationException
  {
    if (paramString == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_STRING, paramString);
  }
  
  public void writeString(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException
  {
    if (paramSerializableString == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_STRING, paramSerializableString);
  }
  
  public void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    writeString(new String(paramArrayOfChar, paramInt1, paramInt2));
  }
  
  public void writeTree(JsonNode paramJsonNode)
    throws IOException, JsonProcessingException
  {
    _append(JsonToken.VALUE_EMBEDDED_OBJECT, paramJsonNode);
  }
  
  public void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _reportUnsupportedOperation();
  }
  
  protected static final class Parser
    extends JsonParserMinimalBase
  {
    protected transient ByteArrayBuilder _byteBuilder;
    protected boolean _closed;
    protected ObjectCodec _codec;
    protected JsonLocation _location = null;
    protected JsonReadContext _parsingContext;
    protected TokenBuffer.Segment _segment;
    protected int _segmentPtr;
    
    public Parser(TokenBuffer.Segment paramSegment, ObjectCodec paramObjectCodec)
    {
      super();
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
  
  protected static final class Segment
  {
    public static final int TOKENS_PER_SEGMENT = 16;
    private static final JsonToken[] TOKEN_TYPES_BY_INDEX = new JsonToken[16];
    protected Segment _next;
    protected long _tokenTypes;
    protected final Object[] _tokens = new Object[16];
    
    static
    {
      JsonToken[] arrayOfJsonToken = JsonToken.values();
      System.arraycopy(arrayOfJsonToken, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, arrayOfJsonToken.length - 1));
    }
    
    public Segment append(int paramInt, JsonToken paramJsonToken)
    {
      if (paramInt < 16)
      {
        set(paramInt, paramJsonToken);
        return null;
      }
      _next = new Segment();
      _next.set(0, paramJsonToken);
      return _next;
    }
    
    public Segment append(int paramInt, JsonToken paramJsonToken, Object paramObject)
    {
      if (paramInt < 16)
      {
        set(paramInt, paramJsonToken, paramObject);
        return null;
      }
      _next = new Segment();
      _next.set(0, paramJsonToken, paramObject);
      return _next;
    }
    
    public Object get(int paramInt)
    {
      return _tokens[paramInt];
    }
    
    public Segment next()
    {
      return _next;
    }
    
    public void set(int paramInt, JsonToken paramJsonToken)
    {
      long l2 = paramJsonToken.ordinal();
      long l1 = l2;
      if (paramInt > 0) {
        l1 = l2 << (paramInt << 2);
      }
      _tokenTypes |= l1;
    }
    
    public void set(int paramInt, JsonToken paramJsonToken, Object paramObject)
    {
      _tokens[paramInt] = paramObject;
      long l2 = paramJsonToken.ordinal();
      long l1 = l2;
      if (paramInt > 0) {
        l1 = l2 << (paramInt << 2);
      }
      _tokenTypes |= l1;
    }
    
    public JsonToken type(int paramInt)
    {
      long l2 = _tokenTypes;
      long l1 = l2;
      if (paramInt > 0) {
        l1 = l2 >> (paramInt << 2);
      }
      paramInt = (int)l1;
      return TOKEN_TYPES_BY_INDEX[(paramInt & 0xF)];
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
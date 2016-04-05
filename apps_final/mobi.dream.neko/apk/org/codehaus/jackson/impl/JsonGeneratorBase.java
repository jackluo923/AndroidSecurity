package org.codehaus.jackson.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.PrettyPrinter;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.util.DefaultPrettyPrinter;
import org.codehaus.jackson.util.VersionUtil;

public abstract class JsonGeneratorBase
  extends JsonGenerator
{
  protected boolean _cfgNumbersAsStrings;
  protected boolean _closed;
  protected int _features;
  protected ObjectCodec _objectCodec;
  protected JsonWriteContext _writeContext;
  
  protected JsonGeneratorBase(int paramInt, ObjectCodec paramObjectCodec)
  {
    _features = paramInt;
    _writeContext = JsonWriteContext.createRootContext();
    _objectCodec = paramObjectCodec;
    _cfgNumbersAsStrings = isEnabled(JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS);
  }
  
  protected void _cantHappen()
  {
    throw new RuntimeException("Internal error: should never end up through this code path");
  }
  
  protected abstract void _releaseBuffers();
  
  protected void _reportError(String paramString)
    throws JsonGenerationException
  {
    throw new JsonGenerationException(paramString);
  }
  
  protected void _reportUnsupportedOperation()
  {
    throw new UnsupportedOperationException("Operation not supported by generator of type " + getClass().getName());
  }
  
  protected final void _throwInternal()
  {
    throw new RuntimeException("Internal error: this code path should never get executed");
  }
  
  protected abstract void _verifyValueWrite(String paramString)
    throws IOException, JsonGenerationException;
  
  @Deprecated
  protected void _writeEndArray()
    throws IOException, JsonGenerationException
  {}
  
  @Deprecated
  protected void _writeEndObject()
    throws IOException, JsonGenerationException
  {}
  
  protected void _writeSimpleObject(Object paramObject)
    throws IOException, JsonGenerationException
  {
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if ((paramObject instanceof String))
    {
      writeString((String)paramObject);
      return;
    }
    if ((paramObject instanceof Number))
    {
      Number localNumber = (Number)paramObject;
      if ((localNumber instanceof Integer))
      {
        writeNumber(localNumber.intValue());
        return;
      }
      if ((localNumber instanceof Long))
      {
        writeNumber(localNumber.longValue());
        return;
      }
      if ((localNumber instanceof Double))
      {
        writeNumber(localNumber.doubleValue());
        return;
      }
      if ((localNumber instanceof Float))
      {
        writeNumber(localNumber.floatValue());
        return;
      }
      if ((localNumber instanceof Short))
      {
        writeNumber(localNumber.shortValue());
        return;
      }
      if ((localNumber instanceof Byte))
      {
        writeNumber(localNumber.byteValue());
        return;
      }
      if ((localNumber instanceof BigInteger))
      {
        writeNumber((BigInteger)localNumber);
        return;
      }
      if ((localNumber instanceof BigDecimal))
      {
        writeNumber((BigDecimal)localNumber);
        return;
      }
      if ((localNumber instanceof AtomicInteger))
      {
        writeNumber(((AtomicInteger)localNumber).get());
        return;
      }
      if ((localNumber instanceof AtomicLong)) {
        writeNumber(((AtomicLong)localNumber).get());
      }
    }
    else
    {
      if ((paramObject instanceof byte[]))
      {
        writeBinary((byte[])paramObject);
        return;
      }
      if ((paramObject instanceof Boolean))
      {
        writeBoolean(((Boolean)paramObject).booleanValue());
        return;
      }
      if ((paramObject instanceof AtomicBoolean))
      {
        writeBoolean(((AtomicBoolean)paramObject).get());
        return;
      }
    }
    throw new IllegalStateException("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed " + paramObject.getClass().getName() + ")");
  }
  
  @Deprecated
  protected void _writeStartArray()
    throws IOException, JsonGenerationException
  {}
  
  @Deprecated
  protected void _writeStartObject()
    throws IOException, JsonGenerationException
  {}
  
  public void close()
    throws IOException
  {
    _closed = true;
  }
  
  public final void copyCurrentEvent(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == null) {
      _reportError("No current event to copy");
    }
    switch (localJsonToken)
    {
    default: 
      _cantHappen();
      return;
    case ???: 
      writeStartObject();
      return;
    case ???: 
      writeEndObject();
      return;
    case ???: 
      writeStartArray();
      return;
    case ???: 
      writeEndArray();
      return;
    case ???: 
      writeFieldName(paramJsonParser.getCurrentName());
      return;
    case ???: 
      if (paramJsonParser.hasTextCharacters())
      {
        writeString(paramJsonParser.getTextCharacters(), paramJsonParser.getTextOffset(), paramJsonParser.getTextLength());
        return;
      }
      writeString(paramJsonParser.getText());
      return;
    case ???: 
      switch (1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      default: 
        writeNumber(paramJsonParser.getLongValue());
        return;
      case 1: 
        writeNumber(paramJsonParser.getIntValue());
        return;
      }
      writeNumber(paramJsonParser.getBigIntegerValue());
      return;
    case ???: 
      switch (1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      default: 
        writeNumber(paramJsonParser.getDoubleValue());
        return;
      case 3: 
        writeNumber(paramJsonParser.getDecimalValue());
        return;
      }
      writeNumber(paramJsonParser.getFloatValue());
      return;
    case ???: 
      writeBoolean(true);
      return;
    case ???: 
      writeBoolean(false);
      return;
    case ???: 
      writeNull();
      return;
    }
    writeObject(paramJsonParser.getEmbeddedObject());
  }
  
  public final void copyCurrentStructure(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken2 = paramJsonParser.getCurrentToken();
    JsonToken localJsonToken1 = localJsonToken2;
    if (localJsonToken2 == JsonToken.FIELD_NAME)
    {
      writeFieldName(paramJsonParser.getCurrentName());
      localJsonToken1 = paramJsonParser.nextToken();
    }
    switch (localJsonToken1)
    {
    case ???: 
    default: 
      copyCurrentEvent(paramJsonParser);
      return;
    case ???: 
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
    _features &= (paramFeature.getMask() ^ 0xFFFFFFFF);
    if (paramFeature == JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
      _cfgNumbersAsStrings = false;
    }
    while (paramFeature != JsonGenerator.Feature.ESCAPE_NON_ASCII) {
      return this;
    }
    setHighestNonEscapedChar(0);
    return this;
  }
  
  public JsonGenerator enable(JsonGenerator.Feature paramFeature)
  {
    _features |= paramFeature.getMask();
    if (paramFeature == JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS) {
      _cfgNumbersAsStrings = true;
    }
    while (paramFeature != JsonGenerator.Feature.ESCAPE_NON_ASCII) {
      return this;
    }
    setHighestNonEscapedChar(127);
    return this;
  }
  
  public abstract void flush()
    throws IOException;
  
  public final ObjectCodec getCodec()
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
  
  public final boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return (_features & paramFeature.getMask()) != 0;
  }
  
  public JsonGenerator setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
    return this;
  }
  
  public JsonGenerator useDefaultPrettyPrinter()
  {
    return setPrettyPrinter(new DefaultPrettyPrinter());
  }
  
  public Version version()
  {
    return VersionUtil.versionFor(getClass());
  }
  
  public void writeEndArray()
    throws IOException, JsonGenerationException
  {
    if (!_writeContext.inArray()) {
      _reportError("Current context not an ARRAY but " + _writeContext.getTypeDesc());
    }
    if (_cfgPrettyPrinter != null) {
      _cfgPrettyPrinter.writeEndArray(this, _writeContext.getEntryCount());
    }
    for (;;)
    {
      _writeContext = _writeContext.getParent();
      return;
      _writeEndArray();
    }
  }
  
  public void writeEndObject()
    throws IOException, JsonGenerationException
  {
    if (!_writeContext.inObject()) {
      _reportError("Current context not an object but " + _writeContext.getTypeDesc());
    }
    _writeContext = _writeContext.getParent();
    if (_cfgPrettyPrinter != null)
    {
      _cfgPrettyPrinter.writeEndObject(this, _writeContext.getEntryCount());
      return;
    }
    _writeEndObject();
  }
  
  public void writeObject(Object paramObject)
    throws IOException, JsonProcessingException
  {
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if (_objectCodec != null)
    {
      _objectCodec.writeValue(this, paramObject);
      return;
    }
    _writeSimpleObject(paramObject);
  }
  
  public void writeRawValue(String paramString)
    throws IOException, JsonGenerationException
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramString);
  }
  
  public void writeRawValue(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramString, paramInt1, paramInt2);
  }
  
  public void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeStartArray()
    throws IOException, JsonGenerationException
  {
    _verifyValueWrite("start an array");
    _writeContext = _writeContext.createChildArrayContext();
    if (_cfgPrettyPrinter != null)
    {
      _cfgPrettyPrinter.writeStartArray(this);
      return;
    }
    _writeStartArray();
  }
  
  public void writeStartObject()
    throws IOException, JsonGenerationException
  {
    _verifyValueWrite("start an object");
    _writeContext = _writeContext.createChildObjectContext();
    if (_cfgPrettyPrinter != null)
    {
      _cfgPrettyPrinter.writeStartObject(this);
      return;
    }
    _writeStartObject();
  }
  
  public void writeTree(JsonNode paramJsonNode)
    throws IOException, JsonProcessingException
  {
    if (paramJsonNode == null)
    {
      writeNull();
      return;
    }
    if (_objectCodec == null) {
      throw new IllegalStateException("No ObjectCodec defined for the generator, can not serialize JsonNode-based trees");
    }
    _objectCodec.writeTree(this, paramJsonNode);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.JsonGeneratorBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
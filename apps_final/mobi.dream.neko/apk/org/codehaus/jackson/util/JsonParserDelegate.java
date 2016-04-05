package org.codehaus.jackson.util;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.FormatSchema;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.Version;

public class JsonParserDelegate
  extends JsonParser
{
  protected JsonParser delegate;
  
  public JsonParserDelegate(JsonParser paramJsonParser)
  {
    delegate = paramJsonParser;
  }
  
  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    return delegate.canUseSchema(paramFormatSchema);
  }
  
  public void clearCurrentToken()
  {
    delegate.clearCurrentToken();
  }
  
  public void close()
    throws IOException
  {
    delegate.close();
  }
  
  public JsonParser disable(JsonParser.Feature paramFeature)
  {
    delegate.disable(paramFeature);
    return this;
  }
  
  public JsonParser enable(JsonParser.Feature paramFeature)
  {
    delegate.enable(paramFeature);
    return this;
  }
  
  public BigInteger getBigIntegerValue()
    throws IOException, JsonParseException
  {
    return delegate.getBigIntegerValue();
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    return delegate.getBinaryValue(paramBase64Variant);
  }
  
  public boolean getBooleanValue()
    throws IOException, JsonParseException
  {
    return delegate.getBooleanValue();
  }
  
  public byte getByteValue()
    throws IOException, JsonParseException
  {
    return delegate.getByteValue();
  }
  
  public ObjectCodec getCodec()
  {
    return delegate.getCodec();
  }
  
  public JsonLocation getCurrentLocation()
  {
    return delegate.getCurrentLocation();
  }
  
  public String getCurrentName()
    throws IOException, JsonParseException
  {
    return delegate.getCurrentName();
  }
  
  public JsonToken getCurrentToken()
  {
    return delegate.getCurrentToken();
  }
  
  public BigDecimal getDecimalValue()
    throws IOException, JsonParseException
  {
    return delegate.getDecimalValue();
  }
  
  public double getDoubleValue()
    throws IOException, JsonParseException
  {
    return delegate.getDoubleValue();
  }
  
  public Object getEmbeddedObject()
    throws IOException, JsonParseException
  {
    return delegate.getEmbeddedObject();
  }
  
  public float getFloatValue()
    throws IOException, JsonParseException
  {
    return delegate.getFloatValue();
  }
  
  public Object getInputSource()
  {
    return delegate.getInputSource();
  }
  
  public int getIntValue()
    throws IOException, JsonParseException
  {
    return delegate.getIntValue();
  }
  
  public JsonToken getLastClearedToken()
  {
    return delegate.getLastClearedToken();
  }
  
  public long getLongValue()
    throws IOException, JsonParseException
  {
    return delegate.getLongValue();
  }
  
  public JsonParser.NumberType getNumberType()
    throws IOException, JsonParseException
  {
    return delegate.getNumberType();
  }
  
  public Number getNumberValue()
    throws IOException, JsonParseException
  {
    return delegate.getNumberValue();
  }
  
  public JsonStreamContext getParsingContext()
  {
    return delegate.getParsingContext();
  }
  
  public short getShortValue()
    throws IOException, JsonParseException
  {
    return delegate.getShortValue();
  }
  
  public String getText()
    throws IOException, JsonParseException
  {
    return delegate.getText();
  }
  
  public char[] getTextCharacters()
    throws IOException, JsonParseException
  {
    return delegate.getTextCharacters();
  }
  
  public int getTextLength()
    throws IOException, JsonParseException
  {
    return delegate.getTextLength();
  }
  
  public int getTextOffset()
    throws IOException, JsonParseException
  {
    return delegate.getTextOffset();
  }
  
  public JsonLocation getTokenLocation()
  {
    return delegate.getTokenLocation();
  }
  
  public boolean hasCurrentToken()
  {
    return delegate.hasCurrentToken();
  }
  
  public boolean isClosed()
  {
    return delegate.isClosed();
  }
  
  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return delegate.isEnabled(paramFeature);
  }
  
  public JsonToken nextToken()
    throws IOException, JsonParseException
  {
    return delegate.nextToken();
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    delegate.setCodec(paramObjectCodec);
  }
  
  public void setSchema(FormatSchema paramFormatSchema)
  {
    delegate.setSchema(paramFormatSchema);
  }
  
  public JsonParser skipChildren()
    throws IOException, JsonParseException
  {
    delegate.skipChildren();
    return this;
  }
  
  public Version version()
  {
    return delegate.version();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.JsonParserDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
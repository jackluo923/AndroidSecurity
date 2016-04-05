package org.codehaus.jackson.util;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.FormatSchema;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.SerializableString;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.io.SerializedString;

public class JsonGeneratorDelegate
  extends JsonGenerator
{
  protected JsonGenerator delegate;
  
  public JsonGeneratorDelegate(JsonGenerator paramJsonGenerator)
  {
    delegate = paramJsonGenerator;
  }
  
  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    return delegate.canUseSchema(paramFormatSchema);
  }
  
  public void close()
    throws IOException
  {
    delegate.close();
  }
  
  public void copyCurrentEvent(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    delegate.copyCurrentEvent(paramJsonParser);
  }
  
  public void copyCurrentStructure(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    delegate.copyCurrentStructure(paramJsonParser);
  }
  
  public JsonGenerator disable(JsonGenerator.Feature paramFeature)
  {
    return delegate.disable(paramFeature);
  }
  
  public JsonGenerator enable(JsonGenerator.Feature paramFeature)
  {
    return delegate.enable(paramFeature);
  }
  
  public void flush()
    throws IOException
  {
    delegate.flush();
  }
  
  public ObjectCodec getCodec()
  {
    return delegate.getCodec();
  }
  
  public JsonStreamContext getOutputContext()
  {
    return delegate.getOutputContext();
  }
  
  public Object getOutputTarget()
  {
    return delegate.getOutputTarget();
  }
  
  public boolean isClosed()
  {
    return delegate.isClosed();
  }
  
  public boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return delegate.isEnabled(paramFeature);
  }
  
  public JsonGenerator setCodec(ObjectCodec paramObjectCodec)
  {
    delegate.setCodec(paramObjectCodec);
    return this;
  }
  
  public void setSchema(FormatSchema paramFormatSchema)
  {
    delegate.setSchema(paramFormatSchema);
  }
  
  public JsonGenerator useDefaultPrettyPrinter()
  {
    delegate.useDefaultPrettyPrinter();
    return this;
  }
  
  public Version version()
  {
    return delegate.version();
  }
  
  public void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeBinary(paramBase64Variant, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void writeBoolean(boolean paramBoolean)
    throws IOException, JsonGenerationException
  {
    delegate.writeBoolean(paramBoolean);
  }
  
  public void writeEndArray()
    throws IOException, JsonGenerationException
  {
    delegate.writeEndArray();
  }
  
  public void writeEndObject()
    throws IOException, JsonGenerationException
  {
    delegate.writeEndObject();
  }
  
  public void writeFieldName(String paramString)
    throws IOException, JsonGenerationException
  {
    delegate.writeFieldName(paramString);
  }
  
  public void writeFieldName(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException
  {
    delegate.writeFieldName(paramSerializableString);
  }
  
  public void writeFieldName(SerializedString paramSerializedString)
    throws IOException, JsonGenerationException
  {
    delegate.writeFieldName(paramSerializedString);
  }
  
  public void writeNull()
    throws IOException, JsonGenerationException
  {
    delegate.writeNull();
  }
  
  public void writeNumber(double paramDouble)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramDouble);
  }
  
  public void writeNumber(float paramFloat)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramFloat);
  }
  
  public void writeNumber(int paramInt)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramInt);
  }
  
  public void writeNumber(long paramLong)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramLong);
  }
  
  public void writeNumber(String paramString)
    throws IOException, JsonGenerationException, UnsupportedOperationException
  {
    delegate.writeNumber(paramString);
  }
  
  public void writeNumber(BigDecimal paramBigDecimal)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramBigDecimal);
  }
  
  public void writeNumber(BigInteger paramBigInteger)
    throws IOException, JsonGenerationException
  {
    delegate.writeNumber(paramBigInteger);
  }
  
  public void writeObject(Object paramObject)
    throws IOException, JsonProcessingException
  {
    delegate.writeObject(paramObject);
  }
  
  public void writeRaw(char paramChar)
    throws IOException, JsonGenerationException
  {
    delegate.writeRaw(paramChar);
  }
  
  public void writeRaw(String paramString)
    throws IOException, JsonGenerationException
  {
    delegate.writeRaw(paramString);
  }
  
  public void writeRaw(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeRaw(paramString, paramInt1, paramInt2);
  }
  
  public void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeRaw(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeRawUTF8String(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void writeRawValue(String paramString)
    throws IOException, JsonGenerationException
  {
    delegate.writeRawValue(paramString);
  }
  
  public void writeRawValue(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeRawValue(paramString, paramInt1, paramInt2);
  }
  
  public void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeRawValue(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeStartArray()
    throws IOException, JsonGenerationException
  {
    delegate.writeStartArray();
  }
  
  public void writeStartObject()
    throws IOException, JsonGenerationException
  {
    delegate.writeStartObject();
  }
  
  public void writeString(String paramString)
    throws IOException, JsonGenerationException
  {
    delegate.writeString(paramString);
  }
  
  public void writeString(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException
  {
    delegate.writeString(paramSerializableString);
  }
  
  public void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeString(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeTree(JsonNode paramJsonNode)
    throws IOException, JsonProcessingException
  {
    delegate.writeTree(paramJsonNode);
  }
  
  public void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    delegate.writeUTF8String(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.JsonGeneratorDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
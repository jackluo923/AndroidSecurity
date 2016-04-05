package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public final class MissingNode
  extends BaseJsonNode
{
  private static final MissingNode instance = new MissingNode();
  
  public static MissingNode getInstance()
  {
    return instance;
  }
  
  public boolean asBoolean(boolean paramBoolean)
  {
    return paramBoolean;
  }
  
  public double asDouble(double paramDouble)
  {
    return paramDouble;
  }
  
  public int asInt(int paramInt)
  {
    return paramInt;
  }
  
  public long asLong(long paramLong)
  {
    return paramLong;
  }
  
  public String asText()
  {
    return "";
  }
  
  public JsonToken asToken()
  {
    return JsonToken.NOT_AVAILABLE;
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public boolean isMissingNode()
  {
    return true;
  }
  
  public JsonNode path(int paramInt)
  {
    return this;
  }
  
  public JsonNode path(String paramString)
  {
    return this;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeNull();
  }
  
  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeNull();
  }
  
  public String toString()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.MissingNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
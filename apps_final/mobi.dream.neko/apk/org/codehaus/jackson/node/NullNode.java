package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class NullNode
  extends ValueNode
{
  public static final NullNode instance = new NullNode();
  
  public static NullNode getInstance()
  {
    return instance;
  }
  
  public double asDouble(double paramDouble)
  {
    return 0.0D;
  }
  
  public int asInt(int paramInt)
  {
    return 0;
  }
  
  public long asLong(long paramLong)
  {
    return 0L;
  }
  
  public String asText()
  {
    return "null";
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NULL;
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public boolean isNull()
  {
    return true;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeNull();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.NullNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
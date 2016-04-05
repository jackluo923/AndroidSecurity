package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class ValueNode
  extends BaseJsonNode
{
  public abstract JsonToken asToken();
  
  public boolean isValueNode()
  {
    return true;
  }
  
  public JsonNode path(int paramInt)
  {
    return MissingNode.getInstance();
  }
  
  public JsonNode path(String paramString)
  {
    return MissingNode.getInstance();
  }
  
  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException
  {
    paramTypeSerializer.writeTypePrefixForScalar(this, paramJsonGenerator);
    serialize(paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(this, paramJsonGenerator);
  }
  
  public String toString()
  {
    return asText();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.ValueNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.node;

import java.io.IOException;
import java.util.List;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class BaseJsonNode
  extends JsonNode
  implements JsonSerializableWithType
{
  public abstract JsonToken asToken();
  
  public ObjectNode findParent(String paramString)
  {
    return null;
  }
  
  public List<JsonNode> findParents(String paramString, List<JsonNode> paramList)
  {
    return paramList;
  }
  
  public final JsonNode findPath(String paramString)
  {
    JsonNode localJsonNode = findValue(paramString);
    paramString = localJsonNode;
    if (localJsonNode == null) {
      paramString = MissingNode.getInstance();
    }
    return paramString;
  }
  
  public JsonNode findValue(String paramString)
  {
    return null;
  }
  
  public List<JsonNode> findValues(String paramString, List<JsonNode> paramList)
  {
    return paramList;
  }
  
  public List<String> findValuesAsText(String paramString, List<String> paramList)
  {
    return paramList;
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return null;
  }
  
  public abstract void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException;
  
  public abstract void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException;
  
  public JsonParser traverse()
  {
    return new TreeTraversingParser(this);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.BaseJsonNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
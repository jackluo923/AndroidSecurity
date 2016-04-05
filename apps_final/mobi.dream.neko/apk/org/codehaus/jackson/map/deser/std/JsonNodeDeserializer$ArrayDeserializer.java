package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.node.ArrayNode;

final class JsonNodeDeserializer$ArrayDeserializer
  extends BaseNodeDeserializer<ArrayNode>
{
  protected static final ArrayDeserializer _instance = new ArrayDeserializer();
  
  protected JsonNodeDeserializer$ArrayDeserializer()
  {
    super(ArrayNode.class);
  }
  
  public static ArrayDeserializer getInstance()
  {
    return _instance;
  }
  
  public ArrayNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.isExpectedStartArrayToken()) {
      return deserializeArray(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    }
    throw paramDeserializationContext.mappingException(ArrayNode.class);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JsonNodeDeserializer.ArrayDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
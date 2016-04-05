package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.node.ArrayNode;
import org.codehaus.jackson.node.ObjectNode;

public class JsonNodeDeserializer
  extends BaseNodeDeserializer<JsonNode>
{
  private static final JsonNodeDeserializer instance = new JsonNodeDeserializer();
  
  protected JsonNodeDeserializer()
  {
    super(JsonNode.class);
  }
  
  public static JsonDeserializer<? extends JsonNode> getDeserializer(Class<?> paramClass)
  {
    if (paramClass == ObjectNode.class) {
      return ObjectDeserializer.getInstance();
    }
    if (paramClass == ArrayNode.class) {
      return ArrayDeserializer.getInstance();
    }
    return instance;
  }
  
  public JsonNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    switch (paramJsonParser.getCurrentToken())
    {
    default: 
      return deserializeAny(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    case ???: 
      return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    }
    return deserializeArray(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
  }
  
  static final class ArrayDeserializer
    extends BaseNodeDeserializer<ArrayNode>
  {
    protected static final ArrayDeserializer _instance = new ArrayDeserializer();
    
    protected ArrayDeserializer()
    {
      super();
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
  
  static final class ObjectDeserializer
    extends BaseNodeDeserializer<ObjectNode>
  {
    protected static final ObjectDeserializer _instance = new ObjectDeserializer();
    
    protected ObjectDeserializer()
    {
      super();
    }
    
    public static ObjectDeserializer getInstance()
    {
      return _instance;
    }
    
    public ObjectNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
      {
        paramJsonParser.nextToken();
        return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
      }
      if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
        return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
      }
      throw paramDeserializationContext.mappingException(ObjectNode.class);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JsonNodeDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
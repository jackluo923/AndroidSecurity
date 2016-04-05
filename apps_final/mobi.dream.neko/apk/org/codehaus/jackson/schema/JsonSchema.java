package org.codehaus.jackson.schema;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonValue;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.node.ObjectNode;

public class JsonSchema
{
  private final ObjectNode schema;
  
  @JsonCreator
  public JsonSchema(ObjectNode paramObjectNode)
  {
    schema = paramObjectNode;
  }
  
  public static JsonNode getDefaultSchemaNode()
  {
    ObjectNode localObjectNode = JsonNodeFactory.instance.objectNode();
    localObjectNode.put("type", "any");
    return localObjectNode;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof JsonSchema)) {
        return false;
      }
      paramObject = (JsonSchema)paramObject;
      if (schema != null) {
        break;
      }
    } while (schema == null);
    return false;
    return schema.equals(schema);
  }
  
  @JsonValue
  public ObjectNode getSchemaNode()
  {
    return schema;
  }
  
  public String toString()
  {
    return schema.toString();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.schema.JsonSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.schema;

import java.lang.reflect.Type;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;

public abstract interface SchemaAware
{
  public abstract JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.schema.SchemaAware
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
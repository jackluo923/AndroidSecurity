package org.codehaus.jackson.map.ser.std;

import java.lang.reflect.Type;
import java.util.Collection;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.node.ObjectNode;

public abstract class StaticListSerializerBase<T extends Collection<?>>
  extends SerializerBase<T>
{
  protected final BeanProperty _property;
  
  protected StaticListSerializerBase(Class<?> paramClass, BeanProperty paramBeanProperty)
  {
    super(paramClass, false);
    _property = paramBeanProperty;
  }
  
  protected abstract JsonNode contentSchema();
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    paramSerializerProvider = createSchemaNode("array", true);
    paramSerializerProvider.put("items", contentSchema());
    return paramSerializerProvider;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StaticListSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$NullProvider
{
  private final boolean _isPrimitive;
  private final Object _nullValue;
  private final Class<?> _rawType;
  
  protected SettableBeanProperty$NullProvider(JavaType paramJavaType, Object paramObject)
  {
    _nullValue = paramObject;
    _isPrimitive = paramJavaType.isPrimitive();
    _rawType = paramJavaType.getRawClass();
  }
  
  public Object nullValue(DeserializationContext paramDeserializationContext)
    throws JsonProcessingException
  {
    if ((_isPrimitive) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES))) {
      throw paramDeserializationContext.mappingException("Can not map JSON null into type " + _rawType.getName() + " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)");
    }
    return _nullValue;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.NullProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
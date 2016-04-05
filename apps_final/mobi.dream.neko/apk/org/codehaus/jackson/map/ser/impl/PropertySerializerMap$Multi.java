package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$Multi
  extends PropertySerializerMap
{
  private static final int MAX_ENTRIES = 8;
  private final PropertySerializerMap.TypeAndSerializer[] _entries;
  
  public PropertySerializerMap$Multi(PropertySerializerMap.TypeAndSerializer[] paramArrayOfTypeAndSerializer)
  {
    _entries = paramArrayOfTypeAndSerializer;
  }
  
  public PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = _entries.length;
    if (i == 8) {
      return this;
    }
    PropertySerializerMap.TypeAndSerializer[] arrayOfTypeAndSerializer = new PropertySerializerMap.TypeAndSerializer[i + 1];
    System.arraycopy(_entries, 0, arrayOfTypeAndSerializer, 0, i);
    arrayOfTypeAndSerializer[i] = new PropertySerializerMap.TypeAndSerializer(paramClass, paramJsonSerializer);
    return new Multi(arrayOfTypeAndSerializer);
  }
  
  public JsonSerializer<Object> serializerFor(Class<?> paramClass)
  {
    int i = 0;
    int j = _entries.length;
    while (i < j)
    {
      PropertySerializerMap.TypeAndSerializer localTypeAndSerializer = _entries[i];
      if (type == paramClass) {
        return serializer;
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.Multi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
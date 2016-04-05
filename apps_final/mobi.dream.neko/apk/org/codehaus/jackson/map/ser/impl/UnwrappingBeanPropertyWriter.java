package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;

public class UnwrappingBeanPropertyWriter
  extends BeanPropertyWriter
{
  public UnwrappingBeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter)
  {
    super(paramBeanPropertyWriter);
  }
  
  public UnwrappingBeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, JsonSerializer<Object> paramJsonSerializer)
  {
    super(paramBeanPropertyWriter, paramJsonSerializer);
  }
  
  protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    if (_nonTrivialBaseType != null) {}
    for (paramPropertySerializerMap = paramSerializerProvider.findValueSerializer(paramSerializerProvider.constructSpecializedType(_nonTrivialBaseType, paramClass), this);; paramPropertySerializerMap = paramSerializerProvider.findValueSerializer(paramClass, this))
    {
      paramSerializerProvider = paramPropertySerializerMap;
      if (!paramPropertySerializerMap.isUnwrappingSerializer()) {
        paramSerializerProvider = paramPropertySerializerMap.unwrappingSerializer();
      }
      _dynamicSerializers = _dynamicSerializers.newWith(paramClass, paramSerializerProvider);
      return paramSerializerProvider;
    }
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    Object localObject = get(paramObject);
    if (localObject == null) {}
    do
    {
      return;
      if (localObject == paramObject) {
        _reportSelfReference(paramObject);
      }
    } while ((_suppressableValue != null) && (_suppressableValue.equals(localObject)));
    JsonSerializer localJsonSerializer = _serializer;
    paramObject = localJsonSerializer;
    if (localJsonSerializer == null)
    {
      Class localClass = localObject.getClass();
      PropertySerializerMap localPropertySerializerMap = _dynamicSerializers;
      localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
      paramObject = localJsonSerializer;
      if (localJsonSerializer == null) {
        paramObject = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
      }
    }
    if (!((JsonSerializer)paramObject).isUnwrappingSerializer()) {
      paramJsonGenerator.writeFieldName(_name);
    }
    if (_typeSerializer == null)
    {
      ((JsonSerializer)paramObject).serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    ((JsonSerializer)paramObject).serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (getClass() != UnwrappingBeanPropertyWriter.class) {
      throw new IllegalStateException("UnwrappingBeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
    }
    Object localObject = paramJsonSerializer;
    if (!paramJsonSerializer.isUnwrappingSerializer()) {
      localObject = paramJsonSerializer.unwrappingSerializer();
    }
    return new UnwrappingBeanPropertyWriter(this, (JsonSerializer)localObject);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnwrappingBeanPropertyWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
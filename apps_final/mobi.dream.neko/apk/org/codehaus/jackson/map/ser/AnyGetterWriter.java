package org.codehaus.jackson.map.ser;

import java.lang.reflect.Method;
import java.util.Map;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.ser.std.MapSerializer;

public class AnyGetterWriter
{
  protected final Method _anyGetter;
  protected final MapSerializer _serializer;
  
  public AnyGetterWriter(AnnotatedMethod paramAnnotatedMethod, MapSerializer paramMapSerializer)
  {
    _anyGetter = paramAnnotatedMethod.getAnnotated();
    _serializer = paramMapSerializer;
  }
  
  public void getAndSerialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    paramObject = _anyGetter.invoke(paramObject, new Object[0]);
    if (paramObject == null) {
      return;
    }
    if (!(paramObject instanceof Map)) {
      throw new JsonMappingException("Value returned by 'any-getter' (" + _anyGetter.getName() + "()) not java.util.Map but " + paramObject.getClass().getName());
    }
    _serializer.serializeFields((Map)paramObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    _serializer.resolve(paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.AnyGetterWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
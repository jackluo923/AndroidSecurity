package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class StdContainerSerializers$IteratorSerializer
  extends AsArraySerializerBase<Iterator<?>>
{
  public StdContainerSerializers$IteratorSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    super(Iterator.class, paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, null);
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new IteratorSerializer(_elementType, _staticTyping, paramTypeSerializer, _property);
  }
  
  public void serializeContents(Iterator<?> paramIterator, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    TypeSerializer localTypeSerializer;
    Object localObject1;
    Object localObject2;
    if (paramIterator.hasNext())
    {
      localTypeSerializer = _valueTypeSerializer;
      localObject1 = null;
      localObject2 = null;
    }
    for (;;)
    {
      Object localObject4 = paramIterator.next();
      if (localObject4 == null) {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      }
      while (!paramIterator.hasNext())
      {
        return;
        Class localClass = localObject4.getClass();
        Object localObject3;
        if (localClass == localObject2) {
          localObject3 = localObject1;
        }
        for (;;)
        {
          if (localTypeSerializer != null) {
            break label107;
          }
          ((JsonSerializer)localObject3).serialize(localObject4, paramJsonGenerator, paramSerializerProvider);
          break;
          localObject3 = paramSerializerProvider.findValueSerializer(localClass, _property);
          localObject1 = localObject3;
          localObject2 = localClass;
        }
        label107:
        ((JsonSerializer)localObject3).serializeWithType(localObject4, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdContainerSerializers.IteratorSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
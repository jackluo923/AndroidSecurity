package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.type.JavaType;

public class EnumSetSerializer
  extends AsArraySerializerBase<EnumSet<? extends Enum<?>>>
{
  public EnumSetSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    super(EnumSet.class, paramJavaType, true, null, paramBeanProperty, null);
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }
  
  public void serializeContents(EnumSet<? extends Enum<?>> paramEnumSet, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    Object localObject = _elementSerializer;
    Iterator localIterator = paramEnumSet.iterator();
    for (paramEnumSet = (EnumSet<? extends Enum<?>>)localObject; localIterator.hasNext(); paramEnumSet = (EnumSet<? extends Enum<?>>)localObject)
    {
      Enum localEnum = (Enum)localIterator.next();
      localObject = paramEnumSet;
      if (paramEnumSet == null) {
        localObject = paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), _property);
      }
      ((JsonSerializer)localObject).serialize(localEnum, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.EnumSetSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.type.JavaType;

public class CollectionSerializer
  extends AsArraySerializerBase<Collection<?>>
{
  public CollectionSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(Collection.class, paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new CollectionSerializer(_elementType, _staticTyping, paramTypeSerializer, _property, _elementSerializer);
  }
  
  public void serializeContents(Collection<?> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    if (_elementSerializer != null) {
      serializeContentsUsing(paramCollection, paramJsonGenerator, paramSerializerProvider, _elementSerializer);
    }
    Iterator localIterator;
    do
    {
      return;
      localIterator = paramCollection.iterator();
    } while (!localIterator.hasNext());
    Object localObject2 = _dynamicSerializers;
    TypeSerializer localTypeSerializer = _valueTypeSerializer;
    int i = 0;
    int j = i;
    for (;;)
    {
      Object localObject4;
      Class localClass;
      Object localObject3;
      try
      {
        localObject4 = localIterator.next();
        if (localObject4 == null)
        {
          j = i;
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          localObject1 = localObject2;
          j = i + 1;
          i = j;
          localObject2 = localObject1;
          if (localIterator.hasNext()) {
            break;
          }
          return;
        }
        j = i;
        localClass = localObject4.getClass();
        j = i;
        JsonSerializer localJsonSerializer = ((PropertySerializerMap)localObject2).serializerFor(localClass);
        localObject3 = localJsonSerializer;
        Object localObject1 = localObject2;
        if (localJsonSerializer == null)
        {
          j = i;
          if (_elementType.hasGenericTypes())
          {
            j = i;
            localObject2 = _findAndAddDynamic((PropertySerializerMap)localObject2, paramSerializerProvider.constructSpecializedType(_elementType, localClass), paramSerializerProvider);
            j = i;
            localObject1 = _dynamicSerializers;
            localObject3 = localObject2;
          }
        }
        else
        {
          if (localTypeSerializer != null) {
            break label246;
          }
          j = i;
          ((JsonSerializer)localObject3).serialize(localObject4, paramJsonGenerator, paramSerializerProvider);
          continue;
        }
        j = i;
      }
      catch (Exception paramJsonGenerator)
      {
        wrapAndThrow(paramSerializerProvider, paramJsonGenerator, paramCollection, j);
        return;
      }
      localObject2 = _findAndAddDynamic((PropertySerializerMap)localObject2, localClass, paramSerializerProvider);
      continue;
      label246:
      j = i;
      ((JsonSerializer)localObject3).serializeWithType(localObject4, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
    }
  }
  
  public void serializeContentsUsing(Collection<?> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
    throws IOException, JsonGenerationException
  {
    Iterator localIterator = paramCollection.iterator();
    TypeSerializer localTypeSerializer;
    int i;
    if (localIterator.hasNext())
    {
      localTypeSerializer = _valueTypeSerializer;
      i = 0;
    }
    for (;;)
    {
      Object localObject = localIterator.next();
      if (localObject == null) {}
      try
      {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        for (;;)
        {
          i += 1;
          if (localIterator.hasNext()) {
            break;
          }
          return;
          if (localTypeSerializer != null) {
            break label95;
          }
          paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramCollection, i);
          continue;
          label95:
          paramJsonSerializer.serializeWithType(localException, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.CollectionSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
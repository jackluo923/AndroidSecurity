package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.node.ObjectNode;
import org.codehaus.jackson.schema.JsonSchema;
import org.codehaus.jackson.schema.SchemaAware;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class ObjectArraySerializer
  extends StdArraySerializers.ArraySerializerBase<Object[]>
  implements ResolvableSerializer
{
  protected PropertySerializerMap _dynamicSerializers;
  protected JsonSerializer<Object> _elementSerializer;
  protected final JavaType _elementType;
  protected final boolean _staticTyping;
  
  @Deprecated
  public ObjectArraySerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    this(paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, null);
  }
  
  public ObjectArraySerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(Object[].class, paramTypeSerializer, paramBeanProperty);
    _elementType = paramJavaType;
    _staticTyping = paramBoolean;
    _dynamicSerializers = PropertySerializerMap.emptyMap();
    _elementSerializer = paramJsonSerializer;
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    paramClass = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicSerializers = map;
    }
    return serializer;
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    paramJavaType = paramPropertySerializerMap.findAndAddSerializer(paramJavaType, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicSerializers = map;
    }
    return serializer;
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new ObjectArraySerializer(_elementType, _staticTyping, paramTypeSerializer, _property, _elementSerializer);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    ObjectNode localObjectNode = createSchemaNode("array", true);
    if (paramType != null)
    {
      paramType = paramSerializerProvider.constructType(paramType);
      if (paramType.isArrayType())
      {
        paramType = ((ArrayType)paramType).getContentType().getRawClass();
        if (paramType != Object.class) {
          break label54;
        }
        localObjectNode.put("items", JsonSchema.getDefaultSchemaNode());
      }
    }
    return localObjectNode;
    label54:
    paramType = paramSerializerProvider.findValueSerializer(paramType, _property);
    if ((paramType instanceof SchemaAware)) {}
    for (paramSerializerProvider = ((SchemaAware)paramType).getSchema(paramSerializerProvider, null);; paramSerializerProvider = JsonSchema.getDefaultSchemaNode())
    {
      localObjectNode.put("items", paramSerializerProvider);
      return localObjectNode;
    }
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    if ((_staticTyping) && (_elementSerializer == null)) {
      _elementSerializer = paramSerializerProvider.findValueSerializer(_elementType, _property);
    }
  }
  
  public void serializeContents(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    int k = paramArrayOfObject.length;
    if (k == 0) {
      return;
    }
    if (_elementSerializer != null)
    {
      serializeContentsUsing(paramArrayOfObject, paramJsonGenerator, paramSerializerProvider, _elementSerializer);
      return;
    }
    if (_valueTypeSerializer != null)
    {
      serializeTypedContents(paramArrayOfObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    int j = 0;
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localPropertySerializerMap = _dynamicSerializers;
        if (i >= k) {
          break;
        }
        localObject2 = paramArrayOfObject[i];
        if (localObject2 == null)
        {
          localObject1 = localObject2;
          j = i;
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          break label268;
        }
        localObject1 = localObject2;
        j = i;
        localClass = localObject2.getClass();
        localObject1 = localObject2;
        j = i;
        JsonSerializer localJsonSerializer2 = localPropertySerializerMap.serializerFor(localClass);
        localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null)
        {
          localObject1 = localObject2;
          j = i;
          if (!_elementType.hasGenericTypes()) {
            continue;
          }
          localObject1 = localObject2;
          j = i;
          localJsonSerializer1 = _findAndAddDynamic(localPropertySerializerMap, paramSerializerProvider.constructSpecializedType(_elementType, localClass), paramSerializerProvider);
        }
      }
      catch (IOException paramArrayOfObject)
      {
        PropertySerializerMap localPropertySerializerMap;
        Object localObject2;
        Class localClass;
        throw paramArrayOfObject;
        localObject1 = localObject2;
        j = i;
        JsonSerializer localJsonSerializer1 = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
        continue;
      }
      catch (Exception paramArrayOfObject)
      {
        if ((!(paramArrayOfObject instanceof InvocationTargetException)) || (paramArrayOfObject.getCause() == null)) {
          continue;
        }
        paramArrayOfObject = paramArrayOfObject.getCause();
        continue;
        if (!(paramArrayOfObject instanceof Error)) {
          continue;
        }
        throw ((Error)paramArrayOfObject);
        throw JsonMappingException.wrapWithPath(paramArrayOfObject, localObject1, j);
      }
      localObject1 = localObject2;
      j = i;
      localJsonSerializer1.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
      label268:
      i += 1;
    }
  }
  
  public void serializeContentsUsing(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
    throws IOException, JsonGenerationException
  {
    int j = paramArrayOfObject.length;
    TypeSerializer localTypeSerializer = _valueTypeSerializer;
    int i = 0;
    for (;;)
    {
      Object localObject;
      if (i < j)
      {
        localObject = paramArrayOfObject[i];
        if (localObject == null) {}
        try
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        }
        catch (IOException paramArrayOfObject)
        {
          throw paramArrayOfObject;
          paramJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
        }
        catch (Exception paramArrayOfObject)
        {
          while (((paramArrayOfObject instanceof InvocationTargetException)) && (paramArrayOfObject.getCause() != null)) {
            paramArrayOfObject = paramArrayOfObject.getCause();
          }
          if (!(paramArrayOfObject instanceof Error)) {
            break label108;
          }
          throw ((Error)paramArrayOfObject);
          throw JsonMappingException.wrapWithPath(paramArrayOfObject, localObject, i);
        }
        if (localTypeSerializer == null)
        {
          paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
          break label118;
        }
      }
      label108:
      return;
      label118:
      i += 1;
    }
  }
  
  public void serializeTypedContents(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    int k = paramArrayOfObject.length;
    TypeSerializer localTypeSerializer = _valueTypeSerializer;
    int j = 0;
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        PropertySerializerMap localPropertySerializerMap = _dynamicSerializers;
        if (i < k)
        {
          Object localObject2 = paramArrayOfObject[i];
          if (localObject2 == null)
          {
            localObject1 = localObject2;
            j = i;
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          }
          else
          {
            localObject1 = localObject2;
            j = i;
            Class localClass = localObject2.getClass();
            localObject1 = localObject2;
            j = i;
            JsonSerializer localJsonSerializer2 = localPropertySerializerMap.serializerFor(localClass);
            JsonSerializer localJsonSerializer1 = localJsonSerializer2;
            if (localJsonSerializer2 == null)
            {
              localObject1 = localObject2;
              j = i;
              localJsonSerializer1 = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
            }
            localObject1 = localObject2;
            j = i;
            localJsonSerializer1.serializeWithType(localObject2, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
          }
        }
      }
      catch (IOException paramArrayOfObject)
      {
        throw paramArrayOfObject;
      }
      catch (Exception paramArrayOfObject)
      {
        if (((paramArrayOfObject instanceof InvocationTargetException)) && (paramArrayOfObject.getCause() != null))
        {
          paramArrayOfObject = paramArrayOfObject.getCause();
          continue;
        }
        if ((paramArrayOfObject instanceof Error)) {
          throw ((Error)paramArrayOfObject);
        }
        throw JsonMappingException.wrapWithPath(paramArrayOfObject, localObject1, j);
      }
      return;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.ObjectArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
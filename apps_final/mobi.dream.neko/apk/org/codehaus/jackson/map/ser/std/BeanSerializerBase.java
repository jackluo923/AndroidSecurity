package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonMappingException.Reference;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.AnyGetterWriter;
import org.codehaus.jackson.map.ser.BeanPropertyFilter;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;
import org.codehaus.jackson.map.ser.FilterProvider;
import org.codehaus.jackson.node.ObjectNode;
import org.codehaus.jackson.schema.JsonSchema;
import org.codehaus.jackson.schema.SchemaAware;
import org.codehaus.jackson.type.JavaType;

public abstract class BeanSerializerBase
  extends SerializerBase<Object>
  implements ResolvableSerializer, SchemaAware
{
  protected static final BeanPropertyWriter[] NO_PROPS = new BeanPropertyWriter[0];
  protected final AnyGetterWriter _anyGetterWriter;
  protected final BeanPropertyWriter[] _filteredProps;
  protected final Object _propertyFilterId;
  protected final BeanPropertyWriter[] _props;
  
  public BeanSerializerBase(Class<?> paramClass, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramClass);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    _anyGetterWriter = paramAnyGetterWriter;
    _propertyFilterId = paramObject;
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase)
  {
    this(_handledType, _props, _filteredProps, _anyGetterWriter, _propertyFilterId);
  }
  
  protected BeanSerializerBase(JavaType paramJavaType, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramJavaType);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    _anyGetterWriter = paramAnyGetterWriter;
    _propertyFilterId = paramObject;
  }
  
  protected BeanPropertyFilter findFilter(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    Object localObject = _propertyFilterId;
    paramSerializerProvider = paramSerializerProvider.getFilterProvider();
    if (paramSerializerProvider == null) {
      throw new JsonMappingException("Can not resolve BeanPropertyFilter with id '" + localObject + "'; no FilterProvider configured");
    }
    return paramSerializerProvider.findFilter(localObject);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    ObjectNode localObjectNode1 = createSchemaNode("object", true);
    ObjectNode localObjectNode2 = localObjectNode1.objectNode();
    int i = 0;
    if (i < _props.length)
    {
      BeanPropertyWriter localBeanPropertyWriter = _props[i];
      paramType = localBeanPropertyWriter.getSerializationType();
      label54:
      Object localObject1;
      if (paramType == null)
      {
        paramType = localBeanPropertyWriter.getGenericPropertyType();
        Object localObject2 = localBeanPropertyWriter.getSerializer();
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = localBeanPropertyWriter.getRawSerializationType();
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = localBeanPropertyWriter.getPropertyType();
          }
          localObject1 = paramSerializerProvider.findValueSerializer((Class)localObject1, localBeanPropertyWriter);
        }
        if (!(localObject1 instanceof SchemaAware)) {
          break label146;
        }
      }
      label146:
      for (paramType = ((SchemaAware)localObject1).getSchema(paramSerializerProvider, paramType);; paramType = JsonSchema.getDefaultSchemaNode())
      {
        localObjectNode2.put(localBeanPropertyWriter.getName(), paramType);
        i += 1;
        break;
        paramType = paramType.getRawClass();
        break label54;
      }
    }
    localObjectNode1.put("properties", localObjectNode2);
    return localObjectNode1;
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    int i;
    int j;
    label20:
    BeanPropertyWriter localBeanPropertyWriter;
    if (_filteredProps == null)
    {
      i = 0;
      j = 0;
      int k = _props.length;
      if (j >= k) {
        break label224;
      }
      localBeanPropertyWriter = _props[j];
      if (!localBeanPropertyWriter.hasSerializer()) {
        break label63;
      }
    }
    for (;;)
    {
      j += 1;
      break label20;
      i = _filteredProps.length;
      break;
      label63:
      Object localObject1 = localBeanPropertyWriter.getSerializationType();
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = paramSerializerProvider.constructType(localBeanPropertyWriter.getGenericPropertyType());
        localObject2 = localObject1;
        if (!((JavaType)localObject1).isFinal())
        {
          if ((!((JavaType)localObject1).isContainerType()) && (((JavaType)localObject1).containedTypeCount() <= 0)) {
            continue;
          }
          localBeanPropertyWriter.setNonTrivialBaseType((JavaType)localObject1);
          continue;
        }
      }
      JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer((JavaType)localObject2, localBeanPropertyWriter);
      localObject1 = localJsonSerializer;
      if (((JavaType)localObject2).isContainerType())
      {
        localObject2 = (TypeSerializer)((JavaType)localObject2).getContentType().getTypeHandler();
        localObject1 = localJsonSerializer;
        if (localObject2 != null)
        {
          localObject1 = localJsonSerializer;
          if ((localJsonSerializer instanceof ContainerSerializerBase)) {
            localObject1 = ((ContainerSerializerBase)localJsonSerializer).withValueTypeSerializer((TypeSerializer)localObject2);
          }
        }
      }
      localObject2 = localBeanPropertyWriter.withSerializer((JsonSerializer)localObject1);
      _props[j] = localObject2;
      if (j < i)
      {
        localObject2 = _filteredProps[j];
        if (localObject2 != null) {
          _filteredProps[j] = ((BeanPropertyWriter)localObject2).withSerializer((JsonSerializer)localObject1);
        }
      }
    }
    label224:
    if (_anyGetterWriter != null) {
      _anyGetterWriter.resolve(paramSerializerProvider);
    }
  }
  
  public abstract void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException;
  
  protected void serializeFields(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    if ((_filteredProps != null) && (paramSerializerProvider.getSerializationView() != null)) {
      arrayOfBeanPropertyWriter = _filteredProps;
    }
    int k;
    for (;;)
    {
      int j = 0;
      k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        for (;;)
        {
          if (i < m)
          {
            BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
            if (localBeanPropertyWriter != null)
            {
              j = i;
              k = i;
              localBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
            }
            i += 1;
            continue;
            arrayOfBeanPropertyWriter = _props;
            break;
          }
        }
        j = i;
        k = i;
        if (_anyGetterWriter != null)
        {
          j = i;
          k = i;
          _anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
        }
        return;
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)", paramJsonGenerator);
        if (k != arrayOfBeanPropertyWriter.length) {}
      }
    }
    for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
    {
      paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
      throw paramSerializerProvider;
    }
  }
  
  protected void serializeFieldsFiltered(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    BeanPropertyFilter localBeanPropertyFilter;
    if ((_filteredProps != null) && (paramSerializerProvider.getSerializationView() != null))
    {
      arrayOfBeanPropertyWriter = _filteredProps;
      localBeanPropertyFilter = findFilter(paramSerializerProvider);
      if (localBeanPropertyFilter != null) {
        break label49;
      }
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      return;
      arrayOfBeanPropertyWriter = _props;
      break;
      label49:
      int j = 0;
      int k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        if (i < m)
        {
          BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
          if (localBeanPropertyWriter != null)
          {
            j = i;
            k = i;
            localBeanPropertyFilter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider, localBeanPropertyWriter);
          }
        }
        else
        {
          j = i;
          k = i;
          if (_anyGetterWriter == null) {
            continue;
          }
          j = i;
          k = i;
          _anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
          return;
        }
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        for (;;)
        {
          paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)", paramJsonGenerator);
          if (k == arrayOfBeanPropertyWriter.length) {}
          for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
          {
            paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
            throw paramSerializerProvider;
          }
          i += 1;
        }
      }
    }
  }
  
  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
    if (_propertyFilterId != null) {
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
      return;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.BeanSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
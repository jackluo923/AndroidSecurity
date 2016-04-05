package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import java.util.HashMap;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeDeserializerBase
  extends TypeDeserializer
{
  protected final JavaType _baseType;
  protected final JavaType _defaultImpl;
  protected JsonDeserializer<Object> _defaultImplDeserializer;
  protected final HashMap<String, JsonDeserializer<Object>> _deserializers;
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;
  
  @Deprecated
  protected TypeDeserializerBase(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    this(paramJavaType, paramTypeIdResolver, paramBeanProperty, null);
  }
  
  protected TypeDeserializerBase(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass)
  {
    _baseType = paramJavaType;
    _idResolver = paramTypeIdResolver;
    _property = paramBeanProperty;
    _deserializers = new HashMap();
    if (paramClass == null)
    {
      _defaultImpl = null;
      return;
    }
    _defaultImpl = paramJavaType.forcedNarrowBy(paramClass);
  }
  
  protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_defaultImpl == null) {
      return null;
    }
    synchronized (_defaultImpl)
    {
      if (_defaultImplDeserializer == null) {
        _defaultImplDeserializer = paramDeserializationContext.getDeserializerProvider().findValueDeserializer(paramDeserializationContext.getConfig(), _defaultImpl, _property);
      }
      paramDeserializationContext = _defaultImplDeserializer;
      return paramDeserializationContext;
    }
  }
  
  protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext paramDeserializationContext, String paramString)
    throws IOException, JsonProcessingException
  {
    Object localObject2;
    Object localObject1;
    synchronized (_deserializers)
    {
      localObject2 = (JsonDeserializer)_deserializers.get(paramString);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = _idResolver.typeFromId(paramString);
        if (localObject2 != null) {
          break label93;
        }
        if (_defaultImpl == null) {
          throw paramDeserializationContext.unknownTypeException(_baseType, paramString);
        }
      }
    }
    for (paramDeserializationContext = _findDefaultImplDeserializer(paramDeserializationContext);; paramDeserializationContext = paramDeserializationContext.getDeserializerProvider().findValueDeserializer(paramDeserializationContext.getConfig(), (JavaType)localObject1, _property))
    {
      _deserializers.put(paramString, paramDeserializationContext);
      localObject1 = paramDeserializationContext;
      return (JsonDeserializer<Object>)localObject1;
      label93:
      localObject1 = localObject2;
      if (_baseType != null)
      {
        localObject1 = localObject2;
        if (_baseType.getClass() == localObject2.getClass()) {
          localObject1 = _baseType.narrowBy(((JavaType)localObject2).getRawClass());
        }
      }
    }
  }
  
  public String baseTypeName()
  {
    return _baseType.getRawClass().getName();
  }
  
  public Class<?> getDefaultImpl()
  {
    if (_defaultImpl == null) {
      return null;
    }
    return _defaultImpl.getRawClass();
  }
  
  public String getPropertyName()
  {
    return null;
  }
  
  public TypeIdResolver getTypeIdResolver()
  {
    return _idResolver;
  }
  
  public abstract JsonTypeInfo.As getTypeInclusion();
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[').append(getClass().getName());
    localStringBuilder.append("; base-type:").append(_baseType);
    localStringBuilder.append("; id-resolver: ").append(_idResolver);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeDeserializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
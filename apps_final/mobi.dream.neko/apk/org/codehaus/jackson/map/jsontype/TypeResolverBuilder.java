package org.codehaus.jackson.map.jsontype;

import java.util.Collection;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.type.JavaType;

public abstract interface TypeResolverBuilder<T extends TypeResolverBuilder<T>>
{
  public abstract TypeDeserializer buildTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty);
  
  public abstract TypeSerializer buildTypeSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty);
  
  public abstract T defaultImpl(Class<?> paramClass);
  
  public abstract Class<?> getDefaultImpl();
  
  public abstract T inclusion(JsonTypeInfo.As paramAs);
  
  public abstract T init(JsonTypeInfo.Id paramId, TypeIdResolver paramTypeIdResolver);
  
  public abstract T typeProperty(String paramString);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.TypeResolverBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
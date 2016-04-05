package org.codehaus.jackson.map;

import java.util.Collection;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.map.jsontype.impl.StdTypeResolverBuilder;
import org.codehaus.jackson.type.JavaType;

public class ObjectMapper$DefaultTypeResolverBuilder
  extends StdTypeResolverBuilder
{
  protected final ObjectMapper.DefaultTyping _appliesFor;
  
  public ObjectMapper$DefaultTypeResolverBuilder(ObjectMapper.DefaultTyping paramDefaultTyping)
  {
    _appliesFor = paramDefaultTyping;
  }
  
  public TypeDeserializer buildTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty)
  {
    if (useForType(paramJavaType)) {
      return super.buildTypeDeserializer(paramDeserializationConfig, paramJavaType, paramCollection, paramBeanProperty);
    }
    return null;
  }
  
  public TypeSerializer buildTypeSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty)
  {
    if (useForType(paramJavaType)) {
      return super.buildTypeSerializer(paramSerializationConfig, paramJavaType, paramCollection, paramBeanProperty);
    }
    return null;
  }
  
  public boolean useForType(JavaType paramJavaType)
  {
    boolean bool = false;
    JavaType localJavaType1 = paramJavaType;
    JavaType localJavaType2 = paramJavaType;
    JavaType localJavaType3 = paramJavaType;
    switch (ObjectMapper.2.$SwitchMap$org$codehaus$jackson$map$ObjectMapper$DefaultTyping[_appliesFor.ordinal()])
    {
    default: 
      if (paramJavaType.getRawClass() != Object.class) {
        break;
      }
    case 1: 
    case 2: 
    case 3: 
      do
      {
        return true;
        for (;;)
        {
          localJavaType2 = localJavaType1;
          if (!localJavaType1.isArrayType()) {
            break;
          }
          localJavaType1 = localJavaType1.getContentType();
        }
        if ((localJavaType2.getRawClass() == Object.class) || (!localJavaType2.isConcrete())) {
          bool = true;
        }
        return bool;
        while (localJavaType3.isArrayType()) {
          localJavaType3 = localJavaType3.getContentType();
        }
      } while (!localJavaType3.isFinal());
      return false;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ObjectMapper.DefaultTypeResolverBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
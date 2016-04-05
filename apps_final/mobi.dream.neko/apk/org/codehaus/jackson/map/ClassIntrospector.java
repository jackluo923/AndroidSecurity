package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract class ClassIntrospector<T extends BeanDescription>
{
  @Deprecated
  public T forClassAnnotations(MapperConfig<?> paramMapperConfig, Class<?> paramClass, MixInResolver paramMixInResolver)
  {
    return forClassAnnotations(paramMapperConfig, paramMapperConfig.constructType(paramClass), paramMixInResolver);
  }
  
  public abstract T forClassAnnotations(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, MixInResolver paramMixInResolver);
  
  public abstract T forCreation(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, MixInResolver paramMixInResolver);
  
  public abstract T forDeserialization(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, MixInResolver paramMixInResolver);
  
  @Deprecated
  public T forDirectClassAnnotations(MapperConfig<?> paramMapperConfig, Class<?> paramClass, MixInResolver paramMixInResolver)
  {
    return forDirectClassAnnotations(paramMapperConfig, paramMapperConfig.constructType(paramClass), paramMixInResolver);
  }
  
  public abstract T forDirectClassAnnotations(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, MixInResolver paramMixInResolver);
  
  public abstract T forSerialization(SerializationConfig paramSerializationConfig, JavaType paramJavaType, MixInResolver paramMixInResolver);
  
  public static abstract interface MixInResolver
  {
    public abstract Class<?> findMixInClassFor(Class<?> paramClass);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ClassIntrospector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
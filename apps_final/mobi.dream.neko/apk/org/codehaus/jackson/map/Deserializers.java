package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public abstract interface Deserializers
{
  public abstract JsonDeserializer<?> findArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findBeanDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    throws JsonMappingException;
  
  public abstract JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
    throws JsonMappingException;
  
  public static class Base
    implements Deserializers
  {
    public JsonDeserializer<?> findArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findBeanDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
      throws JsonMappingException
    {
      return null;
    }
    
    public JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
      throws JsonMappingException
    {
      return null;
    }
  }
  
  @Deprecated
  public static class None
    extends Deserializers.Base
  {}
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.Deserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
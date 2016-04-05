package org.codehaus.jackson.map;

import org.codehaus.jackson.map.ser.BeanSerializerModifier;

public abstract class SerializerFactory$Config
{
  public abstract boolean hasKeySerializers();
  
  public abstract boolean hasSerializerModifiers();
  
  public abstract boolean hasSerializers();
  
  public abstract Iterable<Serializers> keySerializers();
  
  public abstract Iterable<BeanSerializerModifier> serializerModifiers();
  
  public abstract Iterable<Serializers> serializers();
  
  public abstract Config withAdditionalKeySerializers(Serializers paramSerializers);
  
  public abstract Config withAdditionalSerializers(Serializers paramSerializers);
  
  public abstract Config withSerializerModifier(BeanSerializerModifier paramBeanSerializerModifier);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.SerializerFactory.Config
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.deser.BeanDeserializerModifier;
import org.codehaus.jackson.map.deser.ValueInstantiators;
import org.codehaus.jackson.map.ser.BeanSerializerModifier;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.type.TypeModifier;

class ObjectMapper$1
  implements Module.SetupContext
{
  ObjectMapper$1(ObjectMapper paramObjectMapper1, ObjectMapper paramObjectMapper2) {}
  
  public void addAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver)
  {
    val$mapper._deserializerProvider = val$mapper._deserializerProvider.withAbstractTypeResolver(paramAbstractTypeResolver);
  }
  
  public void addBeanDeserializerModifier(BeanDeserializerModifier paramBeanDeserializerModifier)
  {
    val$mapper._deserializerProvider = val$mapper._deserializerProvider.withDeserializerModifier(paramBeanDeserializerModifier);
  }
  
  public void addBeanSerializerModifier(BeanSerializerModifier paramBeanSerializerModifier)
  {
    val$mapper._serializerFactory = val$mapper._serializerFactory.withSerializerModifier(paramBeanSerializerModifier);
  }
  
  public void addDeserializers(Deserializers paramDeserializers)
  {
    val$mapper._deserializerProvider = val$mapper._deserializerProvider.withAdditionalDeserializers(paramDeserializers);
  }
  
  public void addKeyDeserializers(KeyDeserializers paramKeyDeserializers)
  {
    val$mapper._deserializerProvider = val$mapper._deserializerProvider.withAdditionalKeyDeserializers(paramKeyDeserializers);
  }
  
  public void addKeySerializers(Serializers paramSerializers)
  {
    val$mapper._serializerFactory = val$mapper._serializerFactory.withAdditionalKeySerializers(paramSerializers);
  }
  
  public void addSerializers(Serializers paramSerializers)
  {
    val$mapper._serializerFactory = val$mapper._serializerFactory.withAdditionalSerializers(paramSerializers);
  }
  
  public void addTypeModifier(TypeModifier paramTypeModifier)
  {
    paramTypeModifier = val$mapper._typeFactory.withModifier(paramTypeModifier);
    val$mapper.setTypeFactory(paramTypeModifier);
  }
  
  public void addValueInstantiators(ValueInstantiators paramValueInstantiators)
  {
    val$mapper._deserializerProvider = val$mapper._deserializerProvider.withValueInstantiators(paramValueInstantiators);
  }
  
  public void appendAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    val$mapper._deserializationConfig = val$mapper._deserializationConfig.withAppendedAnnotationIntrospector(paramAnnotationIntrospector);
    val$mapper._serializationConfig = val$mapper._serializationConfig.withAppendedAnnotationIntrospector(paramAnnotationIntrospector);
  }
  
  public DeserializationConfig getDeserializationConfig()
  {
    return val$mapper.getDeserializationConfig();
  }
  
  public Version getMapperVersion()
  {
    return this$0.version();
  }
  
  public SerializationConfig getSerializationConfig()
  {
    return val$mapper.getSerializationConfig();
  }
  
  public void insertAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    val$mapper._deserializationConfig = val$mapper._deserializationConfig.withInsertedAnnotationIntrospector(paramAnnotationIntrospector);
    val$mapper._serializationConfig = val$mapper._serializationConfig.withInsertedAnnotationIntrospector(paramAnnotationIntrospector);
  }
  
  public boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return val$mapper.isEnabled(paramFeature);
  }
  
  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return val$mapper.isEnabled(paramFeature);
  }
  
  public boolean isEnabled(DeserializationConfig.Feature paramFeature)
  {
    return val$mapper.isEnabled(paramFeature);
  }
  
  public boolean isEnabled(SerializationConfig.Feature paramFeature)
  {
    return val$mapper.isEnabled(paramFeature);
  }
  
  public void setMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2)
  {
    val$mapper._deserializationConfig.addMixInAnnotations(paramClass1, paramClass2);
    val$mapper._serializationConfig.addMixInAnnotations(paramClass1, paramClass2);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ObjectMapper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
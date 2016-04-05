package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$SetterlessProperty
  extends SettableBeanProperty
{
  protected final AnnotatedMethod _annotated;
  protected final Method _getter;
  
  public SettableBeanProperty$SetterlessProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    _annotated = paramAnnotatedMethod;
    _getter = paramAnnotatedMethod.getAnnotated();
  }
  
  protected SettableBeanProperty$SetterlessProperty(SetterlessProperty paramSetterlessProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramSetterlessProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _getter = _getter;
  }
  
  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      return;
    }
    try
    {
      paramObject = _getter.invoke(paramObject, new Object[0]);
      if (paramObject == null) {
        throw new JsonMappingException("Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
      }
    }
    catch (Exception paramJsonParser)
    {
      _throwAsIOE(paramJsonParser);
      return;
    }
    _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotated.getAnnotation(paramClass);
  }
  
  public AnnotatedMember getMember()
  {
    return _annotated;
  }
  
  public final void set(Object paramObject1, Object paramObject2)
    throws IOException
  {
    throw new UnsupportedOperationException("Should never call 'set' on setterless property");
  }
  
  public SetterlessProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new SetterlessProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.SetterlessProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
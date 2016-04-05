package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.lang.annotation.Annotation;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class CreatorProperty
  extends SettableBeanProperty
{
  protected final AnnotatedParameter _annotated;
  protected final Object _injectableValueId;
  
  public CreatorProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedParameter paramAnnotatedParameter, int paramInt, Object paramObject)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    _annotated = paramAnnotatedParameter;
    _propertyIndex = paramInt;
    _injectableValueId = paramObject;
  }
  
  protected CreatorProperty(CreatorProperty paramCreatorProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramCreatorProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _injectableValueId = _injectableValueId;
  }
  
  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public Object findInjectableValue(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    if (_injectableValueId == null) {
      throw new IllegalStateException("Property '" + getName() + "' (type " + getClass().getName() + ") has no injectable value id configured");
    }
    return paramDeserializationContext.findInjectableValue(_injectableValueId, this, paramObject);
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_annotated == null) {
      return null;
    }
    return _annotated.getAnnotation(paramClass);
  }
  
  public Object getInjectableValueId()
  {
    return _injectableValueId;
  }
  
  public AnnotatedMember getMember()
  {
    return _annotated;
  }
  
  public void inject(DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException
  {
    set(paramObject, findInjectableValue(paramDeserializationContext, paramObject));
  }
  
  public void set(Object paramObject1, Object paramObject2)
    throws IOException
  {}
  
  public CreatorProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new CreatorProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.CreatorProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
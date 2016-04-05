package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$MethodProperty
  extends SettableBeanProperty
{
  protected final AnnotatedMethod _annotated;
  protected final Method _setter;
  
  public SettableBeanProperty$MethodProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    _annotated = paramAnnotatedMethod;
    _setter = paramAnnotatedMethod.getAnnotated();
  }
  
  protected SettableBeanProperty$MethodProperty(MethodProperty paramMethodProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramMethodProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _setter = _setter;
  }
  
  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
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
    try
    {
      _setter.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (Exception paramObject1)
    {
      _throwAsIOE((Exception)paramObject1, paramObject2);
    }
  }
  
  public MethodProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new MethodProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.MethodProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
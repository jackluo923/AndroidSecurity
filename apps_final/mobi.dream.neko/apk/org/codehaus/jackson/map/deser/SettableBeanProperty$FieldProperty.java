package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public final class SettableBeanProperty$FieldProperty
  extends SettableBeanProperty
{
  protected final AnnotatedField _annotated;
  protected final Field _field;
  
  public SettableBeanProperty$FieldProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedField paramAnnotatedField)
  {
    super(paramString, paramJavaType, paramTypeDeserializer, paramAnnotations);
    _annotated = paramAnnotatedField;
    _field = paramAnnotatedField.getAnnotated();
  }
  
  protected SettableBeanProperty$FieldProperty(FieldProperty paramFieldProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramFieldProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _field = _field;
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
      _field.set(paramObject1, paramObject2);
      return;
    }
    catch (Exception paramObject1)
    {
      _throwAsIOE((Exception)paramObject1, paramObject2);
    }
  }
  
  public FieldProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new FieldProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.FieldProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
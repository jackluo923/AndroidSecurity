package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class ValueInjector
  extends BeanProperty.Std
{
  protected final Object _valueId;
  
  public ValueInjector(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, Object paramObject)
  {
    super(paramString, paramJavaType, paramAnnotations, paramAnnotatedMember);
    _valueId = paramObject;
  }
  
  public Object findValue(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    return paramDeserializationContext.findInjectableValue(_valueId, this, paramObject);
  }
  
  public void inject(DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException
  {
    _member.setValue(paramObject, findValue(paramDeserializationContext, paramObject));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ValueInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
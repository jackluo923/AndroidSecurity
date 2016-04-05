package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.ClassUtil;

public final class SettableBeanProperty$InnerClassProperty
  extends SettableBeanProperty
{
  protected final Constructor<?> _creator;
  protected final SettableBeanProperty _delegate;
  
  protected SettableBeanProperty$InnerClassProperty(InnerClassProperty paramInnerClassProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramInnerClassProperty, paramJsonDeserializer);
    _delegate = _delegate.withValueDeserializer(paramJsonDeserializer);
    _creator = _creator;
  }
  
  public SettableBeanProperty$InnerClassProperty(SettableBeanProperty paramSettableBeanProperty, Constructor<?> paramConstructor)
  {
    super(paramSettableBeanProperty);
    _delegate = paramSettableBeanProperty;
    _creator = paramConstructor;
  }
  
  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      if (_nullProvider == null) {
        paramJsonParser = null;
      }
    }
    for (;;)
    {
      set(paramObject, paramJsonParser);
      return;
      paramJsonParser = _nullProvider.nullValue(paramDeserializationContext);
      continue;
      if (_valueTypeDeserializer != null)
      {
        paramJsonParser = _valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _valueTypeDeserializer);
        continue;
      }
      try
      {
        Object localObject1 = _creator.newInstance(new Object[] { paramObject });
        _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject1);
        paramJsonParser = (JsonParser)localObject1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          ClassUtil.unwrapAndThrowAsIAE(localException, "Failed to instantiate class " + _creator.getDeclaringClass().getName() + ", problem: " + localException.getMessage());
          Object localObject2 = null;
        }
      }
    }
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _delegate.getAnnotation(paramClass);
  }
  
  public AnnotatedMember getMember()
  {
    return _delegate.getMember();
  }
  
  public final void set(Object paramObject1, Object paramObject2)
    throws IOException
  {
    _delegate.set(paramObject1, paramObject2);
  }
  
  public InnerClassProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new InnerClassProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.InnerClassProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
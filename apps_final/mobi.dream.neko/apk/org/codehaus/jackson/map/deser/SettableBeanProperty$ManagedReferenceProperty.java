package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;

public final class SettableBeanProperty$ManagedReferenceProperty
  extends SettableBeanProperty
{
  protected final SettableBeanProperty _backProperty;
  protected final boolean _isContainer;
  protected final SettableBeanProperty _managedProperty;
  protected final String _referenceName;
  
  public SettableBeanProperty$ManagedReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty1, SettableBeanProperty paramSettableBeanProperty2, Annotations paramAnnotations, boolean paramBoolean)
  {
    super(paramSettableBeanProperty1.getName(), paramSettableBeanProperty1.getType(), _valueTypeDeserializer, paramAnnotations);
    _referenceName = paramString;
    _managedProperty = paramSettableBeanProperty1;
    _backProperty = paramSettableBeanProperty2;
    _isContainer = paramBoolean;
  }
  
  protected SettableBeanProperty$ManagedReferenceProperty(ManagedReferenceProperty paramManagedReferenceProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramManagedReferenceProperty, paramJsonDeserializer);
    _referenceName = _referenceName;
    _isContainer = _isContainer;
    _managedProperty = _managedProperty;
    _backProperty = _backProperty;
  }
  
  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    set(paramObject, _managedProperty.deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _managedProperty.getAnnotation(paramClass);
  }
  
  public AnnotatedMember getMember()
  {
    return _managedProperty.getMember();
  }
  
  public final void set(Object paramObject1, Object paramObject2)
    throws IOException
  {
    _managedProperty.set(paramObject1, paramObject2);
    if (paramObject2 != null)
    {
      if (_isContainer)
      {
        Object localObject;
        if ((paramObject2 instanceof Object[]))
        {
          paramObject2 = (Object[])paramObject2;
          int j = paramObject2.length;
          int i = 0;
          while (i < j)
          {
            localObject = paramObject2[i];
            if (localObject != null) {
              _backProperty.set(localObject, paramObject1);
            }
            i += 1;
          }
        }
        if ((paramObject2 instanceof Collection))
        {
          paramObject2 = ((Collection)paramObject2).iterator();
          while (((Iterator)paramObject2).hasNext())
          {
            localObject = ((Iterator)paramObject2).next();
            if (localObject != null) {
              _backProperty.set(localObject, paramObject1);
            }
          }
        }
        if ((paramObject2 instanceof Map))
        {
          paramObject2 = ((Map)paramObject2).values().iterator();
          while (((Iterator)paramObject2).hasNext())
          {
            localObject = ((Iterator)paramObject2).next();
            if (localObject != null) {
              _backProperty.set(localObject, paramObject1);
            }
          }
        }
        throw new IllegalStateException("Unsupported container type (" + paramObject2.getClass().getName() + ") when resolving reference '" + _referenceName + "'");
      }
      _backProperty.set(paramObject2, paramObject1);
    }
  }
  
  public ManagedReferenceProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new ManagedReferenceProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.ManagedReferenceProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
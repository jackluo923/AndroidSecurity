package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class FieldContact
  implements Contact
{
  private final Cache<Annotation> cache = new ConcurrentCache();
  private final Field field;
  private final Annotation label;
  private final Annotation[] list;
  private final int modifier;
  private final String name;
  
  public FieldContact(Field paramField, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation)
  {
    modifier = paramField.getModifiers();
    name = paramField.getName();
    label = paramAnnotation;
    field = paramField;
    list = paramArrayOfAnnotation;
  }
  
  private <T extends Annotation> T getCache(Class<T> paramClass)
  {
    if (cache.isEmpty())
    {
      Annotation[] arrayOfAnnotation = list;
      int j = arrayOfAnnotation.length;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = arrayOfAnnotation[i];
        Class localClass = localAnnotation.annotationType();
        cache.cache(localClass, localAnnotation);
        i += 1;
      }
    }
    return (Annotation)cache.fetch(paramClass);
  }
  
  public Object get(Object paramObject)
  {
    return field.get(paramObject);
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    if (paramClass == label.annotationType()) {
      return label;
    }
    return getCache(paramClass);
  }
  
  public Class getDeclaringClass()
  {
    return field.getDeclaringClass();
  }
  
  public Class getDependent()
  {
    return Reflector.getDependent(field);
  }
  
  public Class[] getDependents()
  {
    return Reflector.getDependents(field);
  }
  
  public String getName()
  {
    return name;
  }
  
  public Class getType()
  {
    return field.getType();
  }
  
  public boolean isFinal()
  {
    return Modifier.isFinal(modifier);
  }
  
  public boolean isReadOnly()
  {
    return (!isStatic()) && (isFinal());
  }
  
  public boolean isStatic()
  {
    return Modifier.isStatic(modifier);
  }
  
  public void set(Object paramObject1, Object paramObject2)
  {
    if (!isFinal()) {
      field.set(paramObject1, paramObject2);
    }
  }
  
  public String toString()
  {
    return String.format("field '%s' %s", new Object[] { getName(), field.toString() });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.FieldContact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
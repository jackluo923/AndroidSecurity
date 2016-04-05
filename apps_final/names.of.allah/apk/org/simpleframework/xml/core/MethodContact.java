package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class MethodContact
  implements Contact
{
  private MethodPart get;
  private Class item;
  private Class[] items;
  private Annotation label;
  private String name;
  private Class owner;
  private MethodPart set;
  private Class type;
  
  public MethodContact(MethodPart paramMethodPart)
  {
    this(paramMethodPart, null);
  }
  
  public MethodContact(MethodPart paramMethodPart1, MethodPart paramMethodPart2)
  {
    owner = paramMethodPart1.getDeclaringClass();
    label = paramMethodPart1.getAnnotation();
    items = paramMethodPart1.getDependents();
    item = paramMethodPart1.getDependent();
    type = paramMethodPart1.getType();
    name = paramMethodPart1.getName();
    set = paramMethodPart2;
    get = paramMethodPart1;
  }
  
  public Object get(Object paramObject)
  {
    return get.getMethod().invoke(paramObject, new Object[0]);
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    Annotation localAnnotation2 = get.getAnnotation(paramClass);
    Annotation localAnnotation1;
    if (paramClass == label.annotationType()) {
      localAnnotation1 = label;
    }
    do
    {
      do
      {
        return localAnnotation1;
        localAnnotation1 = localAnnotation2;
      } while (localAnnotation2 != null);
      localAnnotation1 = localAnnotation2;
    } while (set == null);
    return set.getAnnotation(paramClass);
  }
  
  public Class getDeclaringClass()
  {
    return owner;
  }
  
  public Class getDependent()
  {
    return item;
  }
  
  public Class[] getDependents()
  {
    return items;
  }
  
  public String getName()
  {
    return name;
  }
  
  public MethodPart getRead()
  {
    return get;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public MethodPart getWrite()
  {
    return set;
  }
  
  public boolean isReadOnly()
  {
    return set == null;
  }
  
  public void set(Object paramObject1, Object paramObject2)
  {
    Class localClass = get.getMethod().getDeclaringClass();
    if (set == null) {
      throw new MethodException("Property '%s' is read only in %s", new Object[] { name, localClass });
    }
    set.getMethod().invoke(paramObject1, new Object[] { paramObject2 });
  }
  
  public String toString()
  {
    return String.format("method '%s'", new Object[] { name });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodContact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
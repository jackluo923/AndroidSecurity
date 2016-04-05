package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Verbosity;

class AnnotationFactory
{
  private final Format format;
  private final boolean required;
  
  public AnnotationFactory(Detail paramDetail, Support paramSupport)
  {
    required = paramDetail.isRequired();
    format = paramSupport.getFormat();
  }
  
  private ClassLoader getClassLoader()
  {
    return AnnotationFactory.class.getClassLoader();
  }
  
  private Annotation getInstance(Class paramClass)
  {
    ClassLoader localClassLoader = getClassLoader();
    Class localClass = paramClass.getComponentType();
    if (paramClass.isArray())
    {
      if (isPrimitive(localClass)) {
        return getInstance(localClassLoader, Element.class);
      }
      return getInstance(localClassLoader, ElementArray.class);
    }
    if ((isPrimitive(paramClass)) && (isAttribute())) {
      return getInstance(localClassLoader, Attribute.class);
    }
    return getInstance(localClassLoader, Element.class);
  }
  
  private Annotation getInstance(ClassLoader paramClassLoader, Class paramClass)
  {
    return getInstance(paramClassLoader, paramClass, false);
  }
  
  private Annotation getInstance(ClassLoader paramClassLoader, Class paramClass, boolean paramBoolean)
  {
    AnnotationHandler localAnnotationHandler = new AnnotationHandler(paramClass, required, paramBoolean);
    return (Annotation)Proxy.newProxyInstance(paramClassLoader, new Class[] { paramClass }, localAnnotationHandler);
  }
  
  private boolean isAttribute()
  {
    boolean bool2 = false;
    Verbosity localVerbosity = format.getVerbosity();
    boolean bool1 = bool2;
    if (localVerbosity != null)
    {
      bool1 = bool2;
      if (localVerbosity == Verbosity.LOW) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean isPrimitive(Class paramClass)
  {
    if (Number.class.isAssignableFrom(paramClass)) {}
    while ((paramClass == Boolean.class) || (paramClass == Character.class)) {
      return true;
    }
    return paramClass.isPrimitive();
  }
  
  private boolean isPrimitiveKey(Class[] paramArrayOfClass)
  {
    if ((paramArrayOfClass != null) && (paramArrayOfClass.length > 0))
    {
      Class localClass = paramArrayOfClass[0].getSuperclass();
      paramArrayOfClass = paramArrayOfClass[0];
      if (localClass != null)
      {
        if (localClass.isEnum()) {}
        while (paramArrayOfClass.isEnum()) {
          return true;
        }
      }
      return isPrimitive(paramArrayOfClass);
    }
    return false;
  }
  
  public Annotation getInstance(Class paramClass, Class[] paramArrayOfClass)
  {
    ClassLoader localClassLoader = getClassLoader();
    if (Map.class.isAssignableFrom(paramClass))
    {
      if ((isPrimitiveKey(paramArrayOfClass)) && (isAttribute())) {
        return getInstance(localClassLoader, ElementMap.class, true);
      }
      return getInstance(localClassLoader, ElementMap.class);
    }
    if (Collection.class.isAssignableFrom(paramClass)) {
      return getInstance(localClassLoader, ElementList.class);
    }
    return getInstance(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AnnotationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
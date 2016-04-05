package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.ConcurrentCache;

class ScannerBuilder$Entry
  extends ConcurrentCache<Annotation>
  implements Scanner
{
  private final Class root;
  
  public ScannerBuilder$Entry(Class paramClass)
  {
    root = paramClass;
  }
  
  private <T extends Annotation> T find(Class<T> paramClass)
  {
    for (Class localClass = root; localClass != null; localClass = localClass.getSuperclass())
    {
      Annotation localAnnotation = localClass.getAnnotation(paramClass);
      if (localAnnotation != null) {
        return localAnnotation;
      }
    }
    return null;
  }
  
  public <T extends Annotation> T scan(Class<T> paramClass)
  {
    if (!contains(paramClass))
    {
      Annotation localAnnotation = find(paramClass);
      if ((paramClass != null) && (localAnnotation != null)) {
        put(paramClass, localAnnotation);
      }
    }
    return (Annotation)get(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ScannerBuilder.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
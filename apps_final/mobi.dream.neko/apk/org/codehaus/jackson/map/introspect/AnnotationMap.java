package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.codehaus.jackson.map.util.Annotations;

public final class AnnotationMap
  implements Annotations
{
  protected HashMap<Class<? extends Annotation>, Annotation> _annotations;
  
  public AnnotationMap() {}
  
  private AnnotationMap(HashMap<Class<? extends Annotation>, Annotation> paramHashMap)
  {
    _annotations = paramHashMap;
  }
  
  public static AnnotationMap merge(AnnotationMap paramAnnotationMap1, AnnotationMap paramAnnotationMap2)
  {
    if ((paramAnnotationMap1 == null) || (_annotations == null) || (_annotations.isEmpty())) {
      localObject = paramAnnotationMap2;
    }
    do
    {
      do
      {
        do
        {
          return (AnnotationMap)localObject;
          localObject = paramAnnotationMap1;
        } while (paramAnnotationMap2 == null);
        localObject = paramAnnotationMap1;
      } while (_annotations == null);
      localObject = paramAnnotationMap1;
    } while (_annotations.isEmpty());
    Object localObject = new HashMap();
    paramAnnotationMap2 = _annotations.values().iterator();
    while (paramAnnotationMap2.hasNext())
    {
      Annotation localAnnotation = (Annotation)paramAnnotationMap2.next();
      ((HashMap)localObject).put(localAnnotation.annotationType(), localAnnotation);
    }
    paramAnnotationMap1 = _annotations.values().iterator();
    while (paramAnnotationMap1.hasNext())
    {
      paramAnnotationMap2 = (Annotation)paramAnnotationMap1.next();
      ((HashMap)localObject).put(paramAnnotationMap2.annotationType(), paramAnnotationMap2);
    }
    return new AnnotationMap((HashMap)localObject);
  }
  
  protected final void _add(Annotation paramAnnotation)
  {
    if (_annotations == null) {
      _annotations = new HashMap();
    }
    _annotations.put(paramAnnotation.annotationType(), paramAnnotation);
  }
  
  public void add(Annotation paramAnnotation)
  {
    _add(paramAnnotation);
  }
  
  public void addIfNotPresent(Annotation paramAnnotation)
  {
    if ((_annotations == null) || (!_annotations.containsKey(paramAnnotation.annotationType()))) {
      _add(paramAnnotation);
    }
  }
  
  public <A extends Annotation> A get(Class<A> paramClass)
  {
    if (_annotations == null) {
      return null;
    }
    return (Annotation)_annotations.get(paramClass);
  }
  
  public int size()
  {
    if (_annotations == null) {
      return 0;
    }
    return _annotations.size();
  }
  
  public String toString()
  {
    if (_annotations == null) {
      return "[null]";
    }
    return _annotations.toString();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotationMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
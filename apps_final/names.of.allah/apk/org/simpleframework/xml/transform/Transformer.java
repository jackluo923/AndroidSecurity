package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

public class Transformer
{
  private final Cache<Transform> cache = new ConcurrentCache();
  private final Cache<Object> error = new ConcurrentCache();
  private final Matcher matcher;
  
  public Transformer(Matcher paramMatcher)
  {
    matcher = new DefaultMatcher(paramMatcher);
  }
  
  private Transform lookup(Class paramClass)
  {
    if (!error.contains(paramClass))
    {
      Transform localTransform = (Transform)cache.fetch(paramClass);
      if (localTransform != null) {
        return localTransform;
      }
      return match(paramClass);
    }
    return null;
  }
  
  private Transform match(Class paramClass)
  {
    Transform localTransform = matcher.match(paramClass);
    if (localTransform != null)
    {
      cache.cache(paramClass, localTransform);
      return localTransform;
    }
    error.cache(paramClass, this);
    return localTransform;
  }
  
  public Object read(String paramString, Class paramClass)
  {
    Transform localTransform = lookup(paramClass);
    if (localTransform == null) {
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass });
    }
    return localTransform.read(paramString);
  }
  
  public boolean valid(Class paramClass)
  {
    return lookup(paramClass) != null;
  }
  
  public String write(Object paramObject, Class paramClass)
  {
    Transform localTransform = lookup(paramClass);
    if (localTransform == null) {
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass });
    }
    return localTransform.write(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.Transformer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
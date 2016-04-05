package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class RegistryBinder
{
  private final Cache<Class> cache = new ConcurrentCache();
  private final ConverterFactory factory = new ConverterFactory();
  
  private Converter create(Class paramClass)
  {
    return factory.getInstance(paramClass);
  }
  
  public void bind(Class paramClass1, Class paramClass2)
  {
    cache.cache(paramClass1, paramClass2);
  }
  
  public Converter lookup(Class paramClass)
  {
    paramClass = (Class)cache.fetch(paramClass);
    if (paramClass != null) {
      return create(paramClass);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.RegistryBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
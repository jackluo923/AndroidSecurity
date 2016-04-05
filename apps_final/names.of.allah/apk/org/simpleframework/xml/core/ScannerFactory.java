package org.simpleframework.xml.core;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class ScannerFactory
{
  private final Cache<Scanner> cache = new ConcurrentCache();
  private final Support support;
  
  public ScannerFactory(Support paramSupport)
  {
    support = paramSupport;
  }
  
  public Scanner getInstance(Class paramClass)
  {
    Object localObject2 = (Scanner)cache.fetch(paramClass);
    Object localObject1 = localObject2;
    Detail localDetail;
    if (localObject2 == null)
    {
      localDetail = support.getDetail(paramClass);
      if (!support.isPrimitive(paramClass)) {
        break label64;
      }
      localObject1 = new PrimitiveScanner(localDetail);
    }
    for (;;)
    {
      cache.cache(paramClass, localObject1);
      return (Scanner)localObject1;
      label64:
      localObject2 = new ObjectScanner(localDetail, support);
      localObject1 = localObject2;
      if (((Scanner)localObject2).isPrimitive())
      {
        localObject1 = localObject2;
        if (!support.isContainer(paramClass)) {
          localObject1 = new DefaultScanner(localDetail, support);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ScannerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
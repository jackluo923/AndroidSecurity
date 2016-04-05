package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.ConcurrentCache;

class ScannerBuilder
  extends ConcurrentCache<Scanner>
{
  public Scanner build(Class<?> paramClass)
  {
    Scanner localScanner = (Scanner)get(paramClass);
    Object localObject = localScanner;
    if (localScanner == null)
    {
      localObject = new ScannerBuilder.Entry(paramClass);
      put(paramClass, localObject);
    }
    return (Scanner)localObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ScannerBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
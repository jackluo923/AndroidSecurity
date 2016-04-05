package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicInteger;

class AtomicIntegerTransform
  implements Transform<AtomicInteger>
{
  public AtomicInteger read(String paramString)
  {
    return new AtomicInteger(Integer.valueOf(paramString).intValue());
  }
  
  public String write(AtomicInteger paramAtomicInteger)
  {
    return paramAtomicInteger.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.AtomicIntegerTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
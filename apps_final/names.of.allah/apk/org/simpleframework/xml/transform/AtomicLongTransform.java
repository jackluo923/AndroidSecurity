package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicLong;

class AtomicLongTransform
  implements Transform<AtomicLong>
{
  public AtomicLong read(String paramString)
  {
    return new AtomicLong(Long.valueOf(paramString).longValue());
  }
  
  public String write(AtomicLong paramAtomicLong)
  {
    return paramAtomicLong.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.AtomicLongTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.kobjects.util;

import java.util.Enumeration;

public class SingleEnumeration
  implements Enumeration
{
  Object object;
  
  public SingleEnumeration(Object paramObject)
  {
    object = paramObject;
  }
  
  public boolean hasMoreElements()
  {
    Object localObject = object;
    if (localObject != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public Object nextElement()
  {
    Object localObject1 = object;
    Object localObject2 = null;
    object = localObject2;
    return localObject1;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.util.SingleEnumeration
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
package com.google.a;

import java.util.Map.Entry;
import java.util.Set;

public final class z
  extends w
{
  private final com.google.a.b.w<String, w> a = new com.google.a.b.w();
  
  public final void a(String paramString, w paramw)
  {
    Object localObject = paramw;
    if (paramw == null) {
      localObject = y.a;
    }
    a.put(paramString, localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof z)) && (a.equals(a)));
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final Set<Map.Entry<String, w>> n()
  {
    return a.entrySet();
  }
}

/* Location:
 * Qualified Name:     com.google.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
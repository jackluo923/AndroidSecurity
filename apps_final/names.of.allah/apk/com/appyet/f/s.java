package com.appyet.f;

import java.util.HashMap;
import java.util.Map;

class s
  implements q
{
  private Map<String, Integer> a = new HashMap();
  private t b = new t();
  
  public final int a(String paramString)
  {
    paramString = a.get(paramString);
    if (paramString == null) {
      return -1;
    }
    return ((Integer)paramString).intValue();
  }
  
  public final void a(String paramString, int paramInt)
  {
    a.put(paramString, Integer.valueOf(paramInt));
    b.a(paramInt, paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
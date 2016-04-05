package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class hl$a
{
  private final List<String> GG;
  private final Object GH;
  
  private hl$a(Object paramObject)
  {
    GH = hn.f(paramObject);
    GG = new ArrayList();
  }
  
  public final a a(String paramString, Object paramObject)
  {
    GG.add((String)hn.f(paramString) + "=" + String.valueOf(paramObject));
    return this;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(GH.getClass().getSimpleName()).append('{');
    int j = GG.size();
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append((String)GG.get(i));
      if (i < j - 1) {
        localStringBuilder.append(", ");
      }
      i += 1;
    }
    return '}';
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
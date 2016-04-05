package com.appyet.g.b;

import com.appyet.g.c.b;
import com.appyet.g.r;

public final class k
  implements i
{
  private boolean a = true;
  private boolean b = true;
  
  public final b a(Object paramObject)
  {
    String str = paramObject.toString();
    paramObject = str;
    if (b) {
      paramObject = str.replaceAll("&", "&amp;").replaceAll("<", "&lt;");
    }
    return r.a("string", (String)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
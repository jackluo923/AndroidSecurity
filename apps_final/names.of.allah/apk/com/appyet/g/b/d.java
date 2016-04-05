package com.appyet.g.b;

import com.appyet.g.c.b;
import com.appyet.g.r;
import java.text.SimpleDateFormat;

public final class d
  implements i
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd'T'HH:mm:ss");
  
  public final b a(Object paramObject)
  {
    return r.a("dateTime.iso8601", a.format(paramObject));
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
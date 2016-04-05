package com.appyet.c.a;

import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.an;
import com.appyet.manager.bp;
import java.util.List;

final class g
  extends com.appyet.f.a<Void, Void, Boolean>
{
  private g(a parama) {}
  
  private Boolean f()
  {
    try
    {
      if ((aa).b == null) || (aa).b.size() == 0))
      {
        a.a.p.b(a.b);
        if (aa).e == null)
        {
          String str1 = a.a.d.a(a.a(a));
          String str2 = a.a.d.b(a.a(a));
          if ((str1 != null) && (str2 != null)) {
            a.a.p.a(a.b, str1, str2);
          }
        }
        a.a.p.d(a.b);
      }
      return Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    return Boolean.valueOf(false);
  }
  
  protected final void a()
  {
    a.g(a).setVisibility(8);
    a.i(a);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
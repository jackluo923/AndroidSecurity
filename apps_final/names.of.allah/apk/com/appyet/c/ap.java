package com.appyet.c;

import android.view.View;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.FeedItem;
import com.appyet.data.Module;
import com.appyet.f.a;
import com.appyet.manager.bw;

final class ap
  extends a<Void, Void, Void>
{
  private FeedItem b;
  private int c;
  
  public ap(r paramr, int paramInt)
  {
    c = paramInt;
  }
  
  private Void f()
  {
    try
    {
      if (b.getIsRead())
      {
        b.setIsRead(false);
        a.a.h.a(b, false);
      }
      else
      {
        b.setIsRead(true);
        a.a.h.a(b, true);
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    return null;
  }
  
  protected final void a()
  {
    boolean bool1 = true;
    boolean bool2 = false;
    super.a();
    r.c(a);
    try
    {
      b = r.b(a, c);
      if (b == null) {
        return;
      }
      TextView localTextView = (TextView)r.c(a, c).findViewById(2131361931);
      if ((a.a.n.a != null) && (a.a.n.a.getLayout() != null) && (a.a.n.a.getLayout().equals("GRID")))
      {
        localbw = a.a.m;
        bool1 = bool2;
        if (!b.getIsRead()) {
          bool1 = true;
        }
        localbw.a(bool1, null, null, null, null, null, localTextView);
        return;
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return;
    }
    bw localbw = a.a.m;
    if (!b.getIsRead()) {}
    for (;;)
    {
      localbw.a(bool1, localException, null, null, null, null, null);
      return;
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
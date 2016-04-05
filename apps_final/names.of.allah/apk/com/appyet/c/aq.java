package com.appyet.c;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.FeedItem;
import com.appyet.data.Module;
import com.appyet.f.a;
import com.appyet.manager.bp;
import com.appyet.manager.bw;

final class aq
  extends a<Void, Void, Void>
{
  private int b;
  private FeedItem c;
  
  public aq(r paramr, int paramInt)
  {
    b = paramInt;
  }
  
  private Void f()
  {
    try
    {
      if (c == null) {
        return null;
      }
      if (c.getIsStar())
      {
        c.setIsStar(false);
        a.a.h.a(c.getFeedItemId().longValue(), false);
        return null;
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return null;
    }
    c.setIsStar(true);
    a.a.h.a(c.getFeedItemId().longValue(), true);
    if (a.a.d.b())
    {
      c.setIsRead(false);
      a.a.h.a(c, false);
    }
    return null;
  }
  
  protected final void a()
  {
    super.a();
    r.c(a);
    for (;;)
    {
      ImageView localImageView;
      try
      {
        c = r.b(a, b);
        if (c == null) {
          return;
        }
        Object localObject = r.c(a, b);
        localImageView = (ImageView)((View)localObject).findViewById(2131361939);
        if (c.getIsStar())
        {
          localImageView.setVisibility(8);
          if ((!c.getIsRead()) || (!a.a.d.b())) {
            return;
          }
          localObject = (TextView)((View)localObject).findViewById(2131361931);
          if ((a.a.n.a == null) || (a.a.n.a.getLayout() == null) || (!a.a.n.a.getLayout().equals("GRID"))) {
            break;
          }
          a.a.m.a(false, null, null, null, null, null, (TextView)localObject);
          return;
        }
      }
      catch (Exception localException)
      {
        com.appyet.d.d.a(localException);
        return;
      }
      localImageView.setVisibility(0);
    }
    a.a.m.a(false, localException, null, null, null, null, null);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
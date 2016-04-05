package com.appyet.c;

import android.view.View;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;
import com.appyet.f.a;
import com.appyet.manager.bw;
import java.util.ArrayList;
import java.util.List;

final class aj
  extends a<Void, Void, Void>
{
  private int b;
  private List<FeedItem> c;
  
  public aj(r paramr, int paramInt)
  {
    b = paramInt;
  }
  
  private Void f()
  {
    try
    {
      if ((c != null) && (c.size() > 0)) {
        a.a.h.d(c);
      }
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
  }
  
  protected final void a()
  {
    super.a();
    r.c(a);
    try
    {
      c = new ArrayList();
      int i = b;
      while (i >= 0)
      {
        Object localObject = r.b(a, i);
        if ((localObject != null) && (!((FeedItem)localObject).getIsRead()))
        {
          c.add(localObject);
          localObject = r.c(a, i);
          if (localObject != null)
          {
            localObject = (TextView)((View)localObject).findViewById(2131361931);
            a.a.m.a(true, (TextView)localObject, null, null, null, null, null);
          }
        }
        i -= 1;
      }
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.c;

import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;
import com.appyet.manager.bp;

final class j
  extends com.appyet.f.a<Void, Void, Void>
{
  FeedItem a;
  
  public j(a parama, FeedItem paramFeedItem)
  {
    a = paramFeedItem;
  }
  
  private Void f()
  {
    try
    {
      if (a == null) {
        return null;
      }
      if (a.getIsStar())
      {
        a.setIsStar(false);
        ab).h.a(a.getFeedItemId().longValue(), false);
        if (a.getIsRead()) {
          break label170;
        }
        a.setIsRead(true);
        ab).h.a(a, true);
        return null;
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return null;
    }
    a.setIsStar(true);
    ab).h.a(a.getFeedItemId().longValue(), true);
    if (ab).d.b())
    {
      a.setIsRead(false);
      ab).h.a(a, false);
    }
    label170:
    return null;
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
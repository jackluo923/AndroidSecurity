package com.appyet.c;

import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.FeedItem;
import com.appyet.data.FeedItem.FlagEnum;
import java.util.ArrayList;
import java.util.List;

final class h
  extends com.appyet.f.a<Void, Void, Void>
{
  h(a parama) {}
  
  private Void f()
  {
    try
    {
      if (aa).n.b == null) {
        break label142;
      }
      localArrayList = new ArrayList();
      i = 0;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ArrayList localArrayList;
        int i;
        FeedItem localFeedItem;
        label142:
        com.appyet.d.d.a(localException);
        continue;
        i += 1;
      }
    }
    if (i < aa).n.b.size())
    {
      localFeedItem = (FeedItem)aa).n.b.get(i);
      if ((localFeedItem.getFlag() == FeedItem.FlagEnum.Update) && (!localFeedItem.getIsDeleted()))
      {
        localArrayList.add(localFeedItem);
        localFeedItem.setFlag(FeedItem.FlagEnum.None);
      }
    }
    else
    {
      if (localArrayList.size() > 0)
      {
        aa).h.d(localArrayList);
        ((MainActivity)a.getSherlockActivity()).c();
      }
      return null;
    }
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
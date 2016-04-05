package com.appyet.b.a;

import android.sax.EndElementListener;
import com.appyet.data.FeedItem;
import java.util.List;

final class n
  implements EndElementListener
{
  n(a parama, FeedItem paramFeedItem) {}
  
  public final void end()
  {
    try
    {
      FeedItem localFeedItem = a.copy();
      localFeedItem.setFeed(b.f);
      b.g.add(localFeedItem);
      a.clear();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.b.a;

import android.sax.EndElementListener;
import com.appyet.data.FeedItem;
import java.util.List;

final class bw
  implements EndElementListener
{
  bw(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end()
  {
    FeedItem localFeedItem = a.copy();
    localFeedItem.setFeed(b.f);
    b.g.add(localFeedItem);
    a.clear();
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
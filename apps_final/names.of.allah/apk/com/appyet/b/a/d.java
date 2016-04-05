package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class d
  implements EndTextElementListener
{
  d(a parama, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setEnclosureDuration(Integer.valueOf(com.appyet.d.a.a(paramString)));
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
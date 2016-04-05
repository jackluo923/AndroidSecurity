package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class y
  implements EndTextElementListener
{
  y(w paramw, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setUniqueKey(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
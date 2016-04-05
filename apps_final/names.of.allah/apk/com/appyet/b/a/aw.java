package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class aw
  implements EndTextElementListener
{
  aw(w paramw, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setLink(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
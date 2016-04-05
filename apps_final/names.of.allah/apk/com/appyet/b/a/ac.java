package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class ac
  implements EndTextElementListener
{
  ac(w paramw, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setCommentsCount(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
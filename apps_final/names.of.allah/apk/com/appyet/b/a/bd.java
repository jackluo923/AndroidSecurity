package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bd
  implements EndTextElementListener
{
  bd(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setCommentsLink(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
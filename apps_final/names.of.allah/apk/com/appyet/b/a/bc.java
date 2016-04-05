package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bc
  implements EndTextElementListener
{
  bc(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setCommentsLink(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
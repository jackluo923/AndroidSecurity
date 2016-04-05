package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bm
  implements EndTextElementListener
{
  bm(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    if (a.getPubDateString() == null) {
      a.setPubDateString(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
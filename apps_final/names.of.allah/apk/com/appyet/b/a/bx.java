package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bx
  implements EndTextElementListener
{
  bx(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setTitle(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
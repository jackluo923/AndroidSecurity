package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.d.a;
import com.appyet.data.FeedItem;

final class bj
  implements EndTextElementListener
{
  bj(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    a.setEnclosureDuration(Integer.valueOf(a.a(paramString)));
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
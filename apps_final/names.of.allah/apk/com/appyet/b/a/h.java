package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class h
  implements EndTextElementListener
{
  h(a parama, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    try
    {
      if ((a.getPubDateString() == null) || (a.getPubDateString().compareTo(paramString) < -1)) {
        a.setPubDateString(paramString);
      }
      return;
    }
    catch (Exception paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
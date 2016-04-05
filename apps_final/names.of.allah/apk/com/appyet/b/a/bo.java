package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bo
  implements EndTextElementListener
{
  bo(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    String str = a.getDescription();
    if ((str == null) || (str.trim() == "") || (paramString.length() > str.length())) {
      a.setDescription(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
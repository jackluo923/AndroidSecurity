package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.FeedItem;

final class bz
  implements EndTextElementListener
{
  bz(ay paramay, FeedItem paramFeedItem) {}
  
  public final void end(String paramString)
  {
    String str = a.getDescription();
    if ((str == null) || (str.trim() == "") || (paramString.length() > str.length()))
    {
      paramString = b.a(paramString);
      a.setDescription(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
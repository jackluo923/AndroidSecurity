package com.appyet.b.a;

import android.sax.StartElementListener;
import com.appyet.data.FeedItem;
import com.appyet.f.z;
import org.xml.sax.Attributes;

final class ag
  implements StartElementListener
{
  ag(w paramw, FeedItem paramFeedItem) {}
  
  public final void start(Attributes paramAttributes)
  {
    try
    {
      if (paramAttributes.getValue("url") != null)
      {
        paramAttributes = z.a(paramAttributes.getValue("url"));
        a.setThumbnail(paramAttributes);
      }
      return;
    }
    catch (Exception paramAttributes) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
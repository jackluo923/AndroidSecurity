package com.appyet.b.a;

import android.sax.StartElementListener;
import com.appyet.data.FeedItem;
import org.xml.sax.Attributes;

final class af
  implements StartElementListener
{
  af(w paramw, FeedItem paramFeedItem) {}
  
  public final void start(Attributes paramAttributes)
  {
    try
    {
      if (paramAttributes.getValue("url") != null) {
        a.setEnclosureLink(paramAttributes.getValue("url"));
      }
      if (paramAttributes.getValue("type") != null) {
        a.setEnclosureType(paramAttributes.getValue("type"));
      }
      if (paramAttributes.getValue("fileSize") != null) {
        a.setEnclosureLength(Integer.valueOf(Integer.parseInt(paramAttributes.getValue("fileSize"))));
      }
      return;
    }
    catch (Exception paramAttributes) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
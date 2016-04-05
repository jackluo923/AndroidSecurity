package com.appyet.b.a;

import android.sax.StartElementListener;
import com.appyet.data.FeedItem;
import org.xml.sax.Attributes;

final class bg
  implements StartElementListener
{
  bg(ay paramay, FeedItem paramFeedItem) {}
  
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
      if (paramAttributes.getValue("length") != null) {
        a.setEnclosureLength(Integer.valueOf(Integer.parseInt(paramAttributes.getValue("length"))));
      }
      return;
    }
    catch (Exception paramAttributes) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
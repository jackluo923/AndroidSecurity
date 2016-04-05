package com.appyet.b.a;

import android.sax.StartElementListener;
import com.appyet.data.FeedItem;
import org.xml.sax.Attributes;

final class r
  implements StartElementListener
{
  r(a parama, FeedItem paramFeedItem) {}
  
  public final void start(Attributes paramAttributes)
  {
    String str3 = null;
    int i = 0;
    for (;;)
    {
      try
      {
        if (paramAttributes.getValue("href") == null) {
          break label173;
        }
        str1 = paramAttributes.getValue("href");
        if (paramAttributes.getValue("rel") != null)
        {
          str2 = paramAttributes.getValue("rel");
          if (paramAttributes.getValue("length") != null) {
            i = Integer.parseInt(paramAttributes.getValue("length"));
          }
          if (paramAttributes.getValue("type") != null) {
            str3 = paramAttributes.getValue("type");
          }
          if ((str2 != null) && (str2.equals("enclosure")))
          {
            a.setEnclosureLink(str1);
            a.setEnclosureType(str3);
            a.setEnclosureLength(Integer.valueOf(i));
            return;
          }
          if ((a.getLink() != null) && ((str2 == null) || (!str2.equals("alternate")))) {
            break;
          }
          a.setLink(str1);
          return;
        }
      }
      catch (Exception paramAttributes)
      {
        return;
      }
      String str2 = null;
      continue;
      label173:
      String str1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.b.a;

import android.sax.StartElementListener;
import com.appyet.data.Feed;
import org.xml.sax.Attributes;

final class l
  implements StartElementListener
{
  l(a parama) {}
  
  public final void start(Attributes paramAttributes)
  {
    try
    {
      if ((paramAttributes.getValue("href") != null) && ((a.f.getWebLink() == null) || ((paramAttributes.getValue("rel") != null) && (paramAttributes.getValue("rel").equals("alternate"))))) {
        a.f.setWebLink(paramAttributes.getValue("href"));
      }
      return;
    }
    catch (Exception paramAttributes) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.Feed;

final class b
  implements EndTextElementListener
{
  b(a parama) {}
  
  public final void end(String paramString)
  {
    try
    {
      if ((a.f.getTitle() == null) || (a.f.getTitle().trim().equals(""))) {
        a.f.setTitle(paramString);
      }
      return;
    }
    catch (Exception paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
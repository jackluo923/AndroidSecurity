package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.Feed;

final class m
  implements EndTextElementListener
{
  m(a parama) {}
  
  public final void end(String paramString)
  {
    try
    {
      if (a.f.getPubDateString() == null) {
        a.f.setPubDateString(paramString);
      }
      return;
    }
    catch (Exception paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
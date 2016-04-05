package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.Feed;

final class bv
  implements EndTextElementListener
{
  bv(ay paramay) {}
  
  public final void end(String paramString)
  {
    if (a.f.getPubDateString() == null) {
      a.f.setPubDateString(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
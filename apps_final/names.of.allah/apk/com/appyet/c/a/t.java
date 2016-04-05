package com.appyet.c.a;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.appyet.f.h;

final class t
  implements AbsListView.OnScrollListener
{
  t(r paramr) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((r.a(a)) && (paramInt1 + paramInt2 == paramInt3) && (!r.b(a)) && ((r.c(a) == null) || (r.c(a).d() == h.c)))
    {
      r.a(a, new y(a, (byte)0));
      r.c(a).a(new Void[0]);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.appyet.c.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
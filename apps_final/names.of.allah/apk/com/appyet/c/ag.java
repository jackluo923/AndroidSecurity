package com.appyet.c;

import android.widget.AbsListView;
import com.a.a.b.a.j;
import com.appyet.context.ApplicationContext;
import com.appyet.f.h;

final class ag
  extends j
{
  public ag(r paramr, com.a.a.b.f paramf, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramf, paramBoolean1, paramBoolean2);
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((r.a(a) != null) && (!a.a.n.j)) {
      switch (paramAbsListView.getId())
      {
      }
    }
    for (;;)
    {
      super.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      return;
      if ((paramInt1 + paramInt2 == paramInt3) && ((r.n(a) == null) || (r.n(a).d() == h.a) || (r.n(a).d() == h.c)))
      {
        r.a(a, new al(a));
        r.n(a).a(new Void[0]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
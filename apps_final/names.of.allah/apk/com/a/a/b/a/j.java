package com.a.a.b.a;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.a.a.b.f;

public class j
  implements AbsListView.OnScrollListener
{
  private f a;
  private final boolean b;
  private final boolean c;
  private final AbsListView.OnScrollListener d;
  
  public j(f paramf, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramf, paramBoolean1, paramBoolean2, (byte)0);
  }
  
  private j(f paramf, boolean paramBoolean1, boolean paramBoolean2, byte paramByte)
  {
    a = paramf;
    b = paramBoolean1;
    c = paramBoolean2;
    d = null;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (d != null) {
      d.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (d != null) {
        d.onScrollStateChanged(paramAbsListView, paramInt);
      }
      return;
      a.d();
      continue;
      if (b)
      {
        a.c();
        continue;
        if (c) {
          a.c();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
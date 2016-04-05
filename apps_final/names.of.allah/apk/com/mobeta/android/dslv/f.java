package com.mobeta.android.dslv;

import android.database.DataSetObserver;

final class f
  extends DataSetObserver
{
  f(DragSortListView paramDragSortListView) {}
  
  private void a()
  {
    if (DragSortListView.b(a) == 4) {
      a.a();
    }
  }
  
  public final void onChanged()
  {
    a();
  }
  
  public final void onInvalidated()
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
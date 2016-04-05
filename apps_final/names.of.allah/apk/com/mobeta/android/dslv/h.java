package com.mobeta.android.dslv;

import android.database.DataSetObserver;

final class h
  extends DataSetObserver
{
  h(g paramg, DragSortListView paramDragSortListView) {}
  
  public final void onChanged()
  {
    b.notifyDataSetChanged();
  }
  
  public final void onInvalidated()
  {
    b.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
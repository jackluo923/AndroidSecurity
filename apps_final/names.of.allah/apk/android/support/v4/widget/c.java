package android.support.v4.widget;

import android.database.DataSetObserver;

final class c
  extends DataSetObserver
{
  private c(a parama) {}
  
  public final void onChanged()
  {
    a.mDataValid = true;
    a.notifyDataSetChanged();
  }
  
  public final void onInvalidated()
  {
    a.mDataValid = false;
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
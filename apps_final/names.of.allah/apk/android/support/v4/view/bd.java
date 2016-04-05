package android.support.v4.view;

import android.database.DataSetObserver;

final class bd
  extends DataSetObserver
{
  private bd(ViewPager paramViewPager) {}
  
  public final void onChanged()
  {
    a.dataSetChanged();
  }
  
  public final void onInvalidated()
  {
    a.dataSetChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.actionbarsherlock.internal.view.menu;

import android.database.DataSetObserver;

class MenuPopupHelper$ExpandedIndexObserver
  extends DataSetObserver
{
  private MenuPopupHelper$ExpandedIndexObserver(MenuPopupHelper paramMenuPopupHelper) {}
  
  public void onChanged()
  {
    MenuPopupHelper.access$500(this$0).findExpandedIndex();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper.ExpandedIndexObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
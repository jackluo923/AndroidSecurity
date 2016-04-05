package com.actionbarsherlock.internal.widget;

import android.database.DataSetObserver;

class IcsListPopupWindow$PopupDataSetObserver
  extends DataSetObserver
{
  private IcsListPopupWindow$PopupDataSetObserver(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public void onChanged()
  {
    if (this$0.isShowing()) {
      this$0.show();
    }
  }
  
  public void onInvalidated()
  {
    this$0.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.PopupDataSetObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
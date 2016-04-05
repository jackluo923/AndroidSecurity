package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class IcsListPopupWindow$1
  implements AdapterView.OnItemSelectedListener
{
  IcsListPopupWindow$1(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      paramAdapterView = IcsListPopupWindow.access$600(this$0);
      if (paramAdapterView != null) {
        IcsListPopupWindow.DropDownListView.access$502(paramAdapterView, false);
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
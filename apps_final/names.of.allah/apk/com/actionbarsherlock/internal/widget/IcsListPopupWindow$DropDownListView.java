package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.widget.ListView;
import com.actionbarsherlock.R.attr;

class IcsListPopupWindow$DropDownListView
  extends ListView
{
  private boolean mHijackFocus;
  private boolean mListSelectionHidden;
  
  public IcsListPopupWindow$DropDownListView(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.dropDownListViewStyle);
    mHijackFocus = paramBoolean;
    setCacheColorHint(0);
  }
  
  public boolean hasFocus()
  {
    return (mHijackFocus) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (mHijackFocus) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (mHijackFocus) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((mHijackFocus) && (mListSelectionHidden)) || (super.isInTouchMode());
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.DropDownListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
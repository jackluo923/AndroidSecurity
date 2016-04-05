package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;

class IcsSpinner$DropdownPopup
  extends IcsListPopupWindow
  implements IcsSpinner.SpinnerPopup
{
  private ListAdapter mAdapter;
  private CharSequence mHintText;
  
  public IcsSpinner$DropdownPopup(IcsSpinner paramIcsSpinner, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, 0, paramInt);
    setAnchorView(paramIcsSpinner);
    setModal(true);
    setPromptPosition(0);
    setOnItemClickListener(new IcsSpinner.DropdownPopup.1(this, paramIcsSpinner));
  }
  
  public CharSequence getHintText()
  {
    return mHintText;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    mAdapter = paramListAdapter;
  }
  
  public void setPromptText(CharSequence paramCharSequence)
  {
    mHintText = paramCharSequence;
  }
  
  public void show()
  {
    int j = this$0.getPaddingLeft();
    int i;
    if (this$0.mDropDownWidth == -2)
    {
      i = this$0.getWidth();
      int k = this$0.getPaddingRight();
      setContentWidth(Math.max(this$0.measureContentWidth((SpinnerAdapter)mAdapter, this$0.getBackground()), i - j - k));
    }
    for (;;)
    {
      Drawable localDrawable = this$0.getBackground();
      i = 0;
      if (localDrawable != null)
      {
        localDrawable.getPadding(IcsSpinner.access$000(this$0));
        i = -access$000this$0).left;
      }
      setHorizontalOffset(i + j);
      setInputMethodMode(2);
      super.show();
      getListView().setChoiceMode(1);
      setSelection(this$0.getSelectedItemPosition());
      return;
      if (this$0.mDropDownWidth == -1) {
        setContentWidth(this$0.getWidth() - j - this$0.getPaddingRight());
      } else {
        setContentWidth(this$0.mDropDownWidth);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner.DropdownPopup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
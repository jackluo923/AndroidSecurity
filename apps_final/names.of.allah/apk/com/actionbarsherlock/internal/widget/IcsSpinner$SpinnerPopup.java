package com.actionbarsherlock.internal.widget;

import android.widget.ListAdapter;

abstract interface IcsSpinner$SpinnerPopup
{
  public abstract void dismiss();
  
  public abstract CharSequence getHintText();
  
  public abstract boolean isShowing();
  
  public abstract void setAdapter(ListAdapter paramListAdapter);
  
  public abstract void setPromptText(CharSequence paramCharSequence);
  
  public abstract void show();
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner.SpinnerPopup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
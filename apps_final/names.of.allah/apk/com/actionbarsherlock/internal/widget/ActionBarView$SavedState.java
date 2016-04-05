package com.actionbarsherlock.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class ActionBarView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new ActionBarView.SavedState.1();
  int expandedMenuItemId;
  boolean isOverflowOpen;
  
  private ActionBarView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    expandedMenuItemId = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      isOverflowOpen = bool;
      return;
    }
  }
  
  ActionBarView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(expandedMenuItemId);
    if (isOverflowOpen) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
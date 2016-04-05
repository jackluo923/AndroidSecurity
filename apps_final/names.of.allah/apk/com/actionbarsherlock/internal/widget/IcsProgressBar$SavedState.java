package com.actionbarsherlock.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class IcsProgressBar$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new IcsProgressBar.SavedState.1();
  int progress;
  int secondaryProgress;
  
  private IcsProgressBar$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    progress = paramParcel.readInt();
    secondaryProgress = paramParcel.readInt();
  }
  
  IcsProgressBar$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(progress);
    paramParcel.writeInt(secondaryProgress);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsProgressBar.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
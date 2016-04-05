package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class AdViewOverlayView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new AdViewOverlayView.SavedState.1();
  public Object customInlineLayoutParams;
  String gson;
  
  private AdViewOverlayView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    gson = paramParcel.readString();
  }
  
  AdViewOverlayView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(gson);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
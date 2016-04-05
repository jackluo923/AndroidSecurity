package net.simonvt.menudrawer;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class MenuDrawer$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new q();
  Bundle a;
  
  public MenuDrawer$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readBundle();
  }
  
  public MenuDrawer$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(a);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.MenuDrawer.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
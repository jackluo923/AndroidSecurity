package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<JSController.Dimensions>
{
  public final JSController.Dimensions a(Parcel paramParcel)
  {
    return new JSController.Dimensions(paramParcel);
  }
  
  public final JSController.Dimensions[] a(int paramInt)
  {
    return new JSController.Dimensions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
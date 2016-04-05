package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<JSController.ResizeProperties>
{
  public final JSController.ResizeProperties a(Parcel paramParcel)
  {
    return new JSController.ResizeProperties(paramParcel);
  }
  
  public final JSController.ResizeProperties[] a(int paramInt)
  {
    return new JSController.ResizeProperties[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
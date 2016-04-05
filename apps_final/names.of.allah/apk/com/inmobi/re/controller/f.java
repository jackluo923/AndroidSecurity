package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class f
  implements Parcelable.Creator<JSController.ExpandProperties>
{
  public final JSController.ExpandProperties a(Parcel paramParcel)
  {
    return new JSController.ExpandProperties(paramParcel);
  }
  
  public final JSController.ExpandProperties[] a(int paramInt)
  {
    return new JSController.ExpandProperties[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
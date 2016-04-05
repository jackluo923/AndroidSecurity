package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class g
  implements Parcelable.Creator<JSController.OrientationProperties>
{
  public final JSController.OrientationProperties a(Parcel paramParcel)
  {
    return new JSController.OrientationProperties(paramParcel);
  }
  
  public final JSController.OrientationProperties[] a(int paramInt)
  {
    return new JSController.OrientationProperties[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<JSController.PlayerProperties>
{
  public final JSController.PlayerProperties a(Parcel paramParcel)
  {
    return new JSController.PlayerProperties(paramParcel);
  }
  
  public final JSController.PlayerProperties[] a(int paramInt)
  {
    return new JSController.PlayerProperties[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
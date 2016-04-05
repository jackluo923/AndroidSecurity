package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class e
  implements Parcelable.Creator<JSController.Properties>
{
  public final JSController.Properties a(Parcel paramParcel)
  {
    return new JSController.Properties(paramParcel);
  }
  
  public final JSController.Properties[] a(int paramInt)
  {
    return new JSController.Properties[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
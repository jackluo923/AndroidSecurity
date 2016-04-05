package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class HttpMMHeaders$1
  implements Parcelable.Creator<HttpMMHeaders>
{
  public final HttpMMHeaders createFromParcel(Parcel paramParcel)
  {
    return new HttpMMHeaders(paramParcel);
  }
  
  public final HttpMMHeaders[] newArray(int paramInt)
  {
    return new HttpMMHeaders[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpMMHeaders.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
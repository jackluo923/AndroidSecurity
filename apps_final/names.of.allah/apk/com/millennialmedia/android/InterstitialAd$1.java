package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class InterstitialAd$1
  implements Parcelable.Creator<InterstitialAd>
{
  public final InterstitialAd createFromParcel(Parcel paramParcel)
  {
    return new InterstitialAd(paramParcel);
  }
  
  public final InterstitialAd[] newArray(int paramInt)
  {
    return new InterstitialAd[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InterstitialAd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
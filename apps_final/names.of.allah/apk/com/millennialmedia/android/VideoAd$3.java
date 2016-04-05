package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class VideoAd$3
  implements Parcelable.Creator<VideoAd>
{
  public final VideoAd createFromParcel(Parcel paramParcel)
  {
    return new VideoAd(paramParcel);
  }
  
  public final VideoAd[] newArray(int paramInt)
  {
    return new VideoAd[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoAd.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
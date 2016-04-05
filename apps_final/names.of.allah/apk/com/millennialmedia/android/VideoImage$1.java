package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class VideoImage$1
  implements Parcelable.Creator<VideoImage>
{
  public final VideoImage createFromParcel(Parcel paramParcel)
  {
    return new VideoImage(paramParcel);
  }
  
  public final VideoImage[] newArray(int paramInt)
  {
    return new VideoImage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoImage.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
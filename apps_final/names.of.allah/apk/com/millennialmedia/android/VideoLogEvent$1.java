package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class VideoLogEvent$1
  implements Parcelable.Creator<VideoLogEvent>
{
  public final VideoLogEvent createFromParcel(Parcel paramParcel)
  {
    return new VideoLogEvent(paramParcel);
  }
  
  public final VideoLogEvent[] newArray(int paramInt)
  {
    return new VideoLogEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoLogEvent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
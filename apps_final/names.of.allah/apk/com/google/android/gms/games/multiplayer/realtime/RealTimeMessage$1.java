package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RealTimeMessage$1
  implements Parcelable.Creator<RealTimeMessage>
{
  public final RealTimeMessage bn(Parcel paramParcel)
  {
    return new RealTimeMessage(paramParcel, null);
  }
  
  public final RealTimeMessage[] cz(int paramInt)
  {
    return new RealTimeMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RealTimeMessage.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
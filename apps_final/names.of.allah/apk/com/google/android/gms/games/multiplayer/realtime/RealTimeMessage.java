package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.hn;

public final class RealTimeMessage
  implements Parcelable
{
  public static final Parcelable.Creator<RealTimeMessage> CREATOR = new RealTimeMessage.1();
  public static final int RELIABLE = 1;
  public static final int UNRELIABLE = 0;
  private final String Te;
  private final byte[] Tf;
  private final int Tg;
  
  private RealTimeMessage(Parcel paramParcel)
  {
    this(paramParcel.readString(), paramParcel.createByteArray(), paramParcel.readInt());
  }
  
  public RealTimeMessage(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    Te = ((String)hn.f(paramString));
    Tf = ((byte[])((byte[])hn.f(paramArrayOfByte)).clone());
    Tg = paramInt;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final byte[] getMessageData()
  {
    return Tf;
  }
  
  public final String getSenderParticipantId()
  {
    return Te;
  }
  
  public final boolean isReliable()
  {
    return Tg == 1;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(Te);
    paramParcel.writeByteArray(Tf);
    paramParcel.writeInt(Tg);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RealTimeMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
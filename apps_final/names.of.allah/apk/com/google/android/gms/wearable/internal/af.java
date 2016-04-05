package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;

public class af
  implements SafeParcelable, MessageEvent
{
  public static final Parcelable.Creator<af> CREATOR = new ag();
  private final byte[] TC;
  private final String alS;
  private final String alT;
  private final int qX;
  final int xJ;
  
  af(int paramInt1, int paramInt2, String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    xJ = paramInt1;
    qX = paramInt2;
    alS = paramString1;
    TC = paramArrayOfByte;
    alT = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public byte[] getData()
  {
    return TC;
  }
  
  public String getPath()
  {
    return alS;
  }
  
  public int getRequestId()
  {
    return qX;
  }
  
  public String getSourceNodeId()
  {
    return alT;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("MessageEventParcelable[").append(qX).append(",").append(alS).append(", size=");
    if (TC == null) {}
    for (Object localObject = "null";; localObject = Integer.valueOf(TC.length)) {
      return localObject + "]";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ag.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public final class aj
  implements SafeParcelable
{
  public static final ak CREATOR = new ak();
  public final Bundle extras;
  public final long lQ;
  public final int lR;
  public final List<String> lS;
  public final boolean lT;
  public final int lU;
  public final boolean lV;
  public final String lW;
  public final ax lX;
  public final Location lY;
  public final String lZ;
  public final Bundle ma;
  public final int versionCode;
  
  public aj(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, ax paramax, Location paramLocation, String paramString2, Bundle paramBundle2)
  {
    versionCode = paramInt1;
    lQ = paramLong;
    extras = paramBundle1;
    lR = paramInt2;
    lS = paramList;
    lT = paramBoolean1;
    lU = paramInt3;
    lV = paramBoolean2;
    lW = paramString1;
    lX = paramax;
    lY = paramLocation;
    lZ = paramString2;
    ma = paramBundle2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ak.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
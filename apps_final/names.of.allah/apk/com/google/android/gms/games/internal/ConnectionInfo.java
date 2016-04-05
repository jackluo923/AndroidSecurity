package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ConnectionInfo
  implements SafeParcelable
{
  public static final ConnectionInfoCreator CREATOR = new ConnectionInfoCreator();
  private final String Nk;
  private final int Nl;
  private final int xJ;
  
  public ConnectionInfo(int paramInt1, String paramString, int paramInt2)
  {
    xJ = paramInt1;
    Nk = paramString;
    Nl = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String gR()
  {
    return Nk;
  }
  
  public int gS()
  {
    return Nl;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ConnectionInfoCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.ConnectionInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
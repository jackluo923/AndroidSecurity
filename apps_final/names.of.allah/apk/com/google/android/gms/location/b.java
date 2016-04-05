package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

public class b
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  int Vn;
  int Vo;
  long Vp;
  private final int xJ;
  
  b(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    xJ = paramInt1;
    Vn = paramInt2;
    Vo = paramInt3;
    Vp = paramLong;
  }
  
  private String cI(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return "STATUS_UNKNOWN";
    case 0: 
      return "STATUS_SUCCESSFUL";
    case 2: 
      return "STATUS_TIMED_OUT_ON_SCAN";
    case 3: 
      return "STATUS_NO_INFO_IN_DATABASE";
    case 4: 
      return "STATUS_INVALID_SCAN";
    case 5: 
      return "STATUS_UNABLE_TO_QUERY_DATABASE";
    case 6: 
      return "STATUS_SCANS_DISABLED_IN_SETTINGS";
    case 7: 
      return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
    }
    return "STATUS_IN_PROGRESS";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {}
    do
    {
      return false;
      paramObject = (b)paramObject;
    } while ((Vn != Vn) || (Vo != Vo) || (Vp != Vp));
    return true;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(Vn), Integer.valueOf(Vo), Long.valueOf(Vp) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationStatus[cell status: ").append(cI(Vn));
    localStringBuilder.append(", wifi status: ").append(cI(Vo));
    localStringBuilder.append(", elapsed realtime ns: ").append(Vp);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
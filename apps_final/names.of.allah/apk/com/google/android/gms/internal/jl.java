package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class jl
  implements SafeParcelable
{
  public static final jm CREATOR = new jm();
  private final int UX;
  private final int VX;
  private final jn VY;
  private final int xJ;
  
  jl(int paramInt1, int paramInt2, int paramInt3, jn paramjn)
  {
    xJ = paramInt1;
    UX = paramInt2;
    VX = paramInt3;
    VY = paramjn;
  }
  
  public final int describeContents()
  {
    jm localjm = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof jl)) {
        return false;
      }
      paramObject = (jl)paramObject;
    } while ((UX == UX) && (VX == VX) && (VY.equals(VY)));
    return false;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(UX), Integer.valueOf(VX) });
  }
  
  public final int iX()
  {
    return UX;
  }
  
  public final int iZ()
  {
    return VX;
  }
  
  public final jn ja()
  {
    return VY;
  }
  
  public final String toString()
  {
    return hl.e(this).a("transitionTypes", Integer.valueOf(UX)).a("loiteringTimeMillis", Integer.valueOf(VX)).a("placeFilter", VY).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jm localjm = CREATOR;
    jm.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
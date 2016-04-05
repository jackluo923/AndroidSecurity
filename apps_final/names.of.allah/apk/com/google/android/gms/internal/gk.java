package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class gk
  implements SafeParcelable
{
  public static final Parcelable.Creator<gk> CREATOR = new gl();
  private double AM;
  private boolean AN;
  private int BO;
  private final int xJ;
  
  public gk()
  {
    this(1, NaN.0D, false, -1);
  }
  
  gk(int paramInt1, double paramDouble, boolean paramBoolean, int paramInt2)
  {
    xJ = paramInt1;
    AM = paramDouble;
    AN = paramBoolean;
    BO = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double ec()
  {
    return AM;
  }
  
  public boolean ei()
  {
    return AN;
  }
  
  public int ej()
  {
    return BO;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof gk)) {
        return false;
      }
      paramObject = (gk)paramObject;
    } while ((AM == AM) && (AN == AN) && (BO == BO));
    return false;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Double.valueOf(AM), Boolean.valueOf(AN), Integer.valueOf(BO) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    gl.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class hu
  implements SafeParcelable
{
  public static final hv CREATOR = new hv();
  private final hw GS;
  private final int xJ;
  
  hu(int paramInt, hw paramhw)
  {
    xJ = paramInt;
    GS = paramhw;
  }
  
  private hu(hw paramhw)
  {
    xJ = 1;
    GS = paramhw;
  }
  
  public static hu a(hz.b<?, ?> paramb)
  {
    if ((paramb instanceof hw)) {
      return new hu((hw)paramb);
    }
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }
  
  public int describeContents()
  {
    hv localhv = CREATOR;
    return 0;
  }
  
  hw fw()
  {
    return GS;
  }
  
  public hz.b<?, ?> fx()
  {
    if (GS != null) {
      return GS;
    }
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    hv localhv = CREATOR;
    hv.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
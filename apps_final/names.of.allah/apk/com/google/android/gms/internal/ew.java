package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ew
  implements SafeParcelable
{
  public static final ex CREATOR = new ex();
  public String st;
  public int su;
  public int sv;
  public boolean sw;
  public final int versionCode;
  
  public ew(int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  ew(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    versionCode = paramInt1;
    st = paramString;
    su = paramInt2;
    sv = paramInt3;
    sw = paramBoolean;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ex.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
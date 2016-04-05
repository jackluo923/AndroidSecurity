package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class w
  implements SafeParcelable
{
  public static final x CREATOR = new x();
  public final boolean kZ;
  public final boolean lb;
  public final int versionCode;
  
  w(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = paramInt;
    kZ = paramBoolean1;
    lb = paramBoolean2;
  }
  
  public w(boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = 1;
    kZ = paramBoolean1;
    lb = paramBoolean2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    x.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
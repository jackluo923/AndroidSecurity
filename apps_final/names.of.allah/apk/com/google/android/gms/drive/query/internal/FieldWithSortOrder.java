package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FieldWithSortOrder
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  final String JE;
  final boolean KL;
  final int xJ;
  
  FieldWithSortOrder(int paramInt, String paramString, boolean paramBoolean)
  {
    xJ = paramInt;
    JE = paramString;
    KL = paramBoolean;
  }
  
  public FieldWithSortOrder(String paramString, boolean paramBoolean)
  {
    this(1, paramString, paramBoolean);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.FieldWithSortOrder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
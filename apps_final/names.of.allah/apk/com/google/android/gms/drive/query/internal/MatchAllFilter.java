package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;

public class MatchAllFilter
  implements SafeParcelable, Filter
{
  public static final i CREATOR = new i();
  final int xJ;
  
  public MatchAllFilter()
  {
    this(1);
  }
  
  MatchAllFilter(int paramInt)
  {
    xJ = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.MatchAllFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
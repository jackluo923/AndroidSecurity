package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import java.util.List;

public class SortOrder
  implements SafeParcelable
{
  public static final Parcelable.Creator<SortOrder> CREATOR = new b();
  final List<FieldWithSortOrder> KH;
  final int xJ;
  
  SortOrder(int paramInt, List<FieldWithSortOrder> paramList)
  {
    xJ = paramInt;
    KH = paramList;
  }
  
  private SortOrder(List<FieldWithSortOrder> paramList)
  {
    this(1, paramList);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.SortOrder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
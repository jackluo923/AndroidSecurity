package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.LogicalFilter;

public class Query
  implements SafeParcelable
{
  public static final Parcelable.Creator<Query> CREATOR = new a();
  final LogicalFilter KB;
  final String KC;
  final SortOrder KD;
  final int xJ;
  
  Query(int paramInt, LogicalFilter paramLogicalFilter, String paramString, SortOrder paramSortOrder)
  {
    xJ = paramInt;
    KB = paramLogicalFilter;
    KC = paramString;
    KD = paramSortOrder;
  }
  
  Query(LogicalFilter paramLogicalFilter, String paramString, SortOrder paramSortOrder)
  {
    this(1, paramLogicalFilter, paramString, paramSortOrder);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Filter getFilter()
  {
    return KB;
  }
  
  public String getPageToken()
  {
    return KC;
  }
  
  public SortOrder getSortOrder()
  {
    return KD;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.Query
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
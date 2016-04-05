package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Query;

public class QueryRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<QueryRequest> CREATOR = new at();
  final Query JB;
  final int xJ;
  
  QueryRequest(int paramInt, Query paramQuery)
  {
    xJ = paramInt;
    JB = paramQuery;
  }
  
  public QueryRequest(Query paramQuery)
  {
    this(1, paramQuery);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    at.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.QueryRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
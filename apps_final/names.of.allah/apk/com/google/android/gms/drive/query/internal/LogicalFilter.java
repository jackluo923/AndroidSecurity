package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LogicalFilter
  implements SafeParcelable, Filter
{
  public static final Parcelable.Creator<LogicalFilter> CREATOR = new h();
  private List<Filter> KE;
  final Operator KI;
  final List<FilterHolder> KV;
  final int xJ;
  
  LogicalFilter(int paramInt, Operator paramOperator, List<FilterHolder> paramList)
  {
    xJ = paramInt;
    KI = paramOperator;
    KV = paramList;
  }
  
  public LogicalFilter(Operator paramOperator, Filter paramFilter, Filter... paramVarArgs)
  {
    xJ = 1;
    KI = paramOperator;
    KV = new ArrayList(paramVarArgs.length + 1);
    KV.add(new FilterHolder(paramFilter));
    KE = new ArrayList(paramVarArgs.length + 1);
    KE.add(paramFilter);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramOperator = paramVarArgs[i];
      KV.add(new FilterHolder(paramOperator));
      KE.add(paramOperator);
      i += 1;
    }
  }
  
  public LogicalFilter(Operator paramOperator, Iterable<Filter> paramIterable)
  {
    xJ = 1;
    KI = paramOperator;
    KE = new ArrayList();
    KV = new ArrayList();
    paramOperator = paramIterable.iterator();
    while (paramOperator.hasNext())
    {
      paramIterable = (Filter)paramOperator.next();
      KE.add(paramIterable);
      KV.add(new FilterHolder(paramIterable));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.LogicalFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
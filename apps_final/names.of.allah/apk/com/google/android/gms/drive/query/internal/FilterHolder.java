package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;

public class FilterHolder
  implements SafeParcelable
{
  public static final Parcelable.Creator<FilterHolder> CREATOR = new d();
  final ComparisonFilter<?> KM;
  final FieldOnlyFilter KN;
  final LogicalFilter KO;
  final NotFilter KP;
  final InFilter<?> KQ;
  final MatchAllFilter KR;
  final HasFilter KS;
  private final Filter KT;
  final int xJ;
  
  FilterHolder(int paramInt, ComparisonFilter<?> paramComparisonFilter, FieldOnlyFilter paramFieldOnlyFilter, LogicalFilter paramLogicalFilter, NotFilter paramNotFilter, InFilter<?> paramInFilter, MatchAllFilter paramMatchAllFilter, HasFilter<?> paramHasFilter)
  {
    xJ = paramInt;
    KM = paramComparisonFilter;
    KN = paramFieldOnlyFilter;
    KO = paramLogicalFilter;
    KP = paramNotFilter;
    KQ = paramInFilter;
    KR = paramMatchAllFilter;
    KS = paramHasFilter;
    if (KM != null)
    {
      KT = KM;
      return;
    }
    if (KN != null)
    {
      KT = KN;
      return;
    }
    if (KO != null)
    {
      KT = KO;
      return;
    }
    if (KP != null)
    {
      KT = KP;
      return;
    }
    if (KQ != null)
    {
      KT = KQ;
      return;
    }
    if (KR != null)
    {
      KT = KR;
      return;
    }
    if (KS != null)
    {
      KT = KS;
      return;
    }
    throw new IllegalArgumentException("At least one filter must be set.");
  }
  
  public FilterHolder(Filter paramFilter)
  {
    xJ = 2;
    if ((paramFilter instanceof ComparisonFilter))
    {
      localObject = (ComparisonFilter)paramFilter;
      KM = ((ComparisonFilter)localObject);
      if (!(paramFilter instanceof FieldOnlyFilter)) {
        break label192;
      }
      localObject = (FieldOnlyFilter)paramFilter;
      label38:
      KN = ((FieldOnlyFilter)localObject);
      if (!(paramFilter instanceof LogicalFilter)) {
        break label197;
      }
      localObject = (LogicalFilter)paramFilter;
      label55:
      KO = ((LogicalFilter)localObject);
      if (!(paramFilter instanceof NotFilter)) {
        break label202;
      }
      localObject = (NotFilter)paramFilter;
      label72:
      KP = ((NotFilter)localObject);
      if (!(paramFilter instanceof InFilter)) {
        break label207;
      }
      localObject = (InFilter)paramFilter;
      label89:
      KQ = ((InFilter)localObject);
      if (!(paramFilter instanceof MatchAllFilter)) {
        break label212;
      }
      localObject = (MatchAllFilter)paramFilter;
      label106:
      KR = ((MatchAllFilter)localObject);
      if (!(paramFilter instanceof HasFilter)) {
        break label217;
      }
    }
    label192:
    label197:
    label202:
    label207:
    label212:
    label217:
    for (Object localObject = (HasFilter)paramFilter;; localObject = null)
    {
      KS = ((HasFilter)localObject);
      if ((KM != null) || (KN != null) || (KO != null) || (KP != null) || (KQ != null) || (KR != null) || (KS != null)) {
        break label222;
      }
      throw new IllegalArgumentException("Invalid filter type or null filter.");
      localObject = null;
      break;
      localObject = null;
      break label38;
      localObject = null;
      break label55;
      localObject = null;
      break label72;
      localObject = null;
      break label89;
      localObject = null;
      break label106;
    }
    label222:
    KT = paramFilter;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.FilterHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
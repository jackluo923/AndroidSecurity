package com.google.android.gms.drive.query;

import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;

public class Query$Builder
{
  private String KC;
  private SortOrder KD;
  private final List<Filter> KE = new ArrayList();
  
  public Builder addFilter(Filter paramFilter)
  {
    if (!(paramFilter instanceof MatchAllFilter)) {
      KE.add(paramFilter);
    }
    return this;
  }
  
  public Query build()
  {
    return new Query(new LogicalFilter(Operator.Lc, KE), KC, KD);
  }
  
  public Builder setPageToken(String paramString)
  {
    KC = paramString;
    return this;
  }
  
  public Builder setSortOrder(SortOrder paramSortOrder)
  {
    KD = paramSortOrder;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.Query.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
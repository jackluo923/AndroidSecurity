package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import java.util.ArrayList;
import java.util.List;

public class SortOrder$Builder
{
  private final List<FieldWithSortOrder> KH = new ArrayList();
  
  public Builder addSortAscending(SortableMetadataField paramSortableMetadataField)
  {
    KH.add(new FieldWithSortOrder(paramSortableMetadataField.getName(), true));
    return this;
  }
  
  public Builder addSortDescending(SortableMetadataField paramSortableMetadataField)
  {
    KH.add(new FieldWithSortOrder(paramSortableMetadataField.getName(), false));
    return this;
  }
  
  public SortOrder build()
  {
    return new SortOrder(KH, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.SortOrder.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
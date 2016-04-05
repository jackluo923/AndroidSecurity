package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.internal.ir;
import com.google.android.gms.internal.it;
import java.util.Date;

public class SortableField
{
  public static final SortableMetadataField<Date> CREATED_DATE;
  public static final SortableMetadataField<Date> LAST_VIEWED_BY_ME;
  public static final SortableMetadataField<Date> MODIFIED_BY_ME_DATE;
  public static final SortableMetadataField<Date> MODIFIED_DATE;
  public static final SortableMetadataField<Long> QUOTA_USED = ir.Kl;
  public static final SortableMetadataField<Date> SHARED_WITH_ME_DATE;
  public static final SortableMetadataField<String> TITLE = ir.Ko;
  
  static
  {
    CREATED_DATE = it.Kt;
    MODIFIED_DATE = it.Kv;
    MODIFIED_BY_ME_DATE = it.Kw;
    LAST_VIEWED_BY_ME = it.Ku;
    SHARED_WITH_ME_DATE = it.Kx;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.SortableField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
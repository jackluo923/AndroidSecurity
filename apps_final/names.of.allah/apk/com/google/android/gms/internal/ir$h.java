package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.b;

public class ir$h
  extends b
  implements SearchableMetadataField<Boolean>
{
  public ir$h(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  protected Boolean d(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    if (paramDataHolder.b(getName(), paramInt1, paramInt2) != 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ir.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.a;
import com.google.android.gms.drive.metadata.internal.j;
import java.util.Collection;

final class ir$1
  extends j<a>
{
  ir$1(String paramString, Collection paramCollection1, Collection paramCollection2, int paramInt)
  {
    super(paramString, paramCollection1, paramCollection2, paramInt);
  }
  
  protected final a i(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    throw new IllegalStateException("Thumbnail field is write only");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ir.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
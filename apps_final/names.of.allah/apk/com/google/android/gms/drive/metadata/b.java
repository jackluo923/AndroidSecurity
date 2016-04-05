package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;
import java.util.Collections;

public abstract class b<T>
  extends a<Collection<T>>
{
  public b(String paramString, int paramInt)
  {
    super(paramString, Collections.emptySet(), Collections.emptySet(), paramInt);
  }
  
  protected Collection<T> c(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("Cannot read collections from a dataHolder.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
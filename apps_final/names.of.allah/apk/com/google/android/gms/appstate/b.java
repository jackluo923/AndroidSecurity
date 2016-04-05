package com.google.android.gms.appstate;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class b
  extends d
  implements AppState
{
  b(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final AppState dN()
  {
    return new a(this);
  }
  
  public final boolean equals(Object paramObject)
  {
    return a.a(this, paramObject);
  }
  
  public final byte[] getConflictData()
  {
    return getByteArray("conflict_data");
  }
  
  public final String getConflictVersion()
  {
    return getString("conflict_version");
  }
  
  public final int getKey()
  {
    return getInteger("key");
  }
  
  public final byte[] getLocalData()
  {
    return getByteArray("local_data");
  }
  
  public final String getLocalVersion()
  {
    return getString("local_version");
  }
  
  public final boolean hasConflict()
  {
    return !ax("conflict_version");
  }
  
  public final int hashCode()
  {
    return a.a(this);
  }
  
  public final String toString()
  {
    return a.b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
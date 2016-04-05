package com.google.android.gms.appstate;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class AppStateBuffer
  extends DataBuffer<AppState>
{
  public AppStateBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final AppState get(int paramInt)
  {
    return new b(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.AppStateBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
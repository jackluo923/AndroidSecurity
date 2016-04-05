package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.appstate.AppStateManager.StateListResult;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;

final class gb$d
  extends b
  implements AppStateManager.StateListResult
{
  private final AppStateBuffer yQ;
  
  public gb$d(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    yQ = new AppStateBuffer(paramDataHolder);
  }
  
  public final AppStateBuffer getStateBuffer()
  {
    return yQ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
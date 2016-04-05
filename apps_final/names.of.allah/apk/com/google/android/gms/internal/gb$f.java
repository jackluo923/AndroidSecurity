package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppState;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.appstate.AppStateManager.StateConflictResult;
import com.google.android.gms.appstate.AppStateManager.StateLoadedResult;
import com.google.android.gms.appstate.AppStateManager.StateResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;

final class gb$f
  extends b
  implements AppStateManager.StateConflictResult, AppStateManager.StateLoadedResult, AppStateManager.StateResult
{
  private final int yP;
  private final AppStateBuffer yQ;
  
  public gb$f(int paramInt, DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    yP = paramInt;
    yQ = new AppStateBuffer(paramDataHolder);
  }
  
  private boolean dR()
  {
    return yw.getStatusCode() == 2000;
  }
  
  public final AppStateManager.StateConflictResult getConflictResult()
  {
    if (dR()) {
      return this;
    }
    return null;
  }
  
  public final AppStateManager.StateLoadedResult getLoadedResult()
  {
    f localf = this;
    if (dR()) {
      localf = null;
    }
    return localf;
  }
  
  public final byte[] getLocalData()
  {
    if (yQ.getCount() == 0) {
      return null;
    }
    return yQ.get(0).getLocalData();
  }
  
  public final String getResolvedVersion()
  {
    if (yQ.getCount() == 0) {
      return null;
    }
    return yQ.get(0).getConflictVersion();
  }
  
  public final byte[] getServerData()
  {
    if (yQ.getCount() == 0) {
      return null;
    }
    return yQ.get(0).getConflictData();
  }
  
  public final int getStateKey()
  {
    return yP;
  }
  
  public final void release()
  {
    yQ.close();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
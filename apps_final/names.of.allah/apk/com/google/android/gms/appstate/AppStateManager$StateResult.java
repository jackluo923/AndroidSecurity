package com.google.android.gms.appstate;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface AppStateManager$StateResult
  extends Releasable, Result
{
  public abstract AppStateManager.StateConflictResult getConflictResult();
  
  public abstract AppStateManager.StateLoadedResult getLoadedResult();
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager.StateResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
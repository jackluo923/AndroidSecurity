package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppStateManager.StateDeletedResult;
import com.google.android.gms.common.api.Status;

final class gb$b
  implements AppStateManager.StateDeletedResult
{
  private final int yP;
  private final Status yw;
  
  public gb$b(Status paramStatus, int paramInt)
  {
    yw = paramStatus;
    yP = paramInt;
  }
  
  public final int getStateKey()
  {
    return yP;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
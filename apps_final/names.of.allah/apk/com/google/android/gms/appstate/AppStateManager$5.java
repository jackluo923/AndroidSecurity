package com.google.android.gms.appstate;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gb;

final class AppStateManager$5
  extends AppStateManager.b
{
  AppStateManager$5(int paramInt)
  {
    super(null);
  }
  
  protected final void a(gb paramgb)
  {
    paramgb.a(this, yH);
  }
  
  public final AppStateManager.StateDeletedResult g(Status paramStatus)
  {
    return new AppStateManager.5.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
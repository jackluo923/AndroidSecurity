package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppStateManager.StateDeletedResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

final class gb$a
  extends ga
{
  private final a.d<AppStateManager.StateDeletedResult> yO;
  
  public gb$a(a.d<AppStateManager.StateDeletedResult> paramd)
  {
    yO = ((a.d)hn.b(paramd, "Result holder must not be null"));
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    Status localStatus = new Status(paramInt1);
    yO.a(new gb.b(localStatus, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppStateManager.StateListResult;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;

final class gb$c
  extends ga
{
  private final a.d<AppStateManager.StateListResult> yO;
  
  public gb$c(a.d<AppStateManager.StateListResult> paramd)
  {
    yO = ((a.d)hn.b(paramd, "Result holder must not be null"));
  }
  
  public final void a(DataHolder paramDataHolder)
  {
    yO.a(new gb.d(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
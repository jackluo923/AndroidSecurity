package com.google.android.gms.internal;

import com.google.android.gms.appstate.AppStateManager.StateResult;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;

final class gb$e
  extends ga
{
  private final a.d<AppStateManager.StateResult> yO;
  
  public gb$e(a.d<AppStateManager.StateResult> paramd)
  {
    yO = ((a.d)hn.b(paramd, "Result holder must not be null"));
  }
  
  public final void a(int paramInt, DataHolder paramDataHolder)
  {
    yO.a(new gb.f(paramInt, paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
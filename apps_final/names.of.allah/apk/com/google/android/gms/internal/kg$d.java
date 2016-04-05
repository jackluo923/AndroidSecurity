package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.panorama.Panorama;

abstract class kg$d<R extends Result>
  extends a.b<R, kh>
{
  protected kg$d()
  {
    super(Panorama.yE);
  }
  
  protected abstract void a(Context paramContext, kf paramkf);
  
  protected final void a(kh paramkh)
  {
    a(paramkh.getContext(), (kf)paramkh.fo());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
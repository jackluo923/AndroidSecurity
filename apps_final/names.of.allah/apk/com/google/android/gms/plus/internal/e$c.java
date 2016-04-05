package com.google.android.gms.plus.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.d;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.model.moments.MomentBuffer;

final class e$c
  extends hc<d>.d<a.d<Moments.LoadMomentsResult>>
  implements Moments.LoadMomentsResult
{
  private final String HP;
  private final String abK;
  private MomentBuffer abL;
  private final Status yw;
  
  public e$c(a.d<Moments.LoadMomentsResult> paramd, Status paramStatus, DataHolder paramDataHolder, String paramString1, String paramString2)
  {
    super(paramd, paramStatus, paramString1);
    yw = paramDataHolder;
    HP = paramString2;
    String str;
    abK = str;
  }
  
  protected final void a(a.d<Moments.LoadMomentsResult> paramd, DataHolder paramDataHolder)
  {
    if (paramDataHolder != null) {}
    for (paramDataHolder = new MomentBuffer(paramDataHolder);; paramDataHolder = null)
    {
      abL = paramDataHolder;
      paramd.a(this);
      return;
    }
  }
  
  public final MomentBuffer getMomentBuffer()
  {
    return abL;
  }
  
  public final String getNextPageToken()
  {
    return HP;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
  
  public final String getUpdated()
  {
    return abK;
  }
  
  public final void release()
  {
    if (abL != null) {
      abL.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
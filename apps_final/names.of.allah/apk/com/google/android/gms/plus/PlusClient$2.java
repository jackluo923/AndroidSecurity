package com.google.android.gms.plus;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

class PlusClient$2
  implements a.d<Moments.LoadMomentsResult>
{
  PlusClient$2(PlusClient paramPlusClient, PlusClient.OnMomentsLoadedListener paramOnMomentsLoadedListener) {}
  
  public void a(Moments.LoadMomentsResult paramLoadMomentsResult)
  {
    abr.onMomentsLoaded(paramLoadMomentsResult.getStatus().eM(), paramLoadMomentsResult.getMomentBuffer(), paramLoadMomentsResult.getNextPageToken(), paramLoadMomentsResult.getUpdated());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
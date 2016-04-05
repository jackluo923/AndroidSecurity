package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.panorama.PanoramaApi.PanoramaResult;

final class kg$c
  extends ke.a
{
  private final a.d<PanoramaApi.PanoramaResult> yO;
  
  public kg$c(a.d<PanoramaApi.PanoramaResult> paramd)
  {
    yO = paramd;
  }
  
  public final void a(int paramInt1, Bundle paramBundle, int paramInt2, Intent paramIntent)
  {
    if (paramBundle != null) {}
    for (paramBundle = (PendingIntent)paramBundle.getParcelable("pendingIntent");; paramBundle = null)
    {
      paramBundle = new Status(paramInt1, null, paramBundle);
      yO.a(new ki(paramBundle, paramIntent));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.panorama.PanoramaApi.a;

final class kg$a
  extends ke.a
{
  private final a.d<PanoramaApi.a> yO;
  
  public kg$a(a.d<PanoramaApi.a> paramd)
  {
    yO = paramd;
  }
  
  public final void a(int paramInt1, Bundle paramBundle, int paramInt2, Intent paramIntent)
  {
    if (paramBundle != null) {}
    for (paramBundle = (PendingIntent)paramBundle.getParcelable("pendingIntent");; paramBundle = null)
    {
      paramBundle = new Status(paramInt1, null, paramBundle);
      yO.a(new kd(paramBundle, paramIntent, paramInt2));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
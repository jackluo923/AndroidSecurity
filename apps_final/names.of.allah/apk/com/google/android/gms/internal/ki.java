package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.panorama.PanoramaApi.PanoramaResult;

class ki
  implements PanoramaApi.PanoramaResult
{
  private final Intent abl;
  private final Status yw;
  
  public ki(Status paramStatus, Intent paramIntent)
  {
    yw = ((Status)hn.f(paramStatus));
    abl = paramIntent;
  }
  
  public Status getStatus()
  {
    return yw;
  }
  
  public Intent getViewerIntent()
  {
    return abl;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
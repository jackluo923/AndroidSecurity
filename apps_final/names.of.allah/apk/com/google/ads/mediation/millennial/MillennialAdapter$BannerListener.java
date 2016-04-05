package com.google.ads.mediation.millennial;

import com.google.ads.b;
import com.google.ads.mediation.d;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;

class MillennialAdapter$BannerListener
  implements RequestListener
{
  private MillennialAdapter$BannerListener(MillennialAdapter paramMillennialAdapter) {}
  
  public void MMAdOverlayLaunched(MMAd paramMMAd)
  {
    MillennialAdapter.access$2(this$0).onPresentScreen(this$0);
  }
  
  public void MMAdRequestIsCaching(MMAd paramMMAd) {}
  
  public void requestCompleted(MMAd paramMMAd)
  {
    MillennialAdapter.access$2(this$0).onReceivedAd(this$0);
  }
  
  public void requestFailed(MMAd paramMMAd, MMException paramMMException)
  {
    if (11 == paramMMException.getCode())
    {
      MillennialAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.c);
      return;
    }
    MillennialAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.b);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.millennial.MillennialAdapter.BannerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
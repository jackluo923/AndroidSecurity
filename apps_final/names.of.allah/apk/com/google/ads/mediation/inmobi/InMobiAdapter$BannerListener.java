package com.google.ads.mediation.inmobi;

import android.util.Log;
import com.google.ads.b;
import com.google.ads.mediation.d;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import java.util.Map;

class InMobiAdapter$BannerListener
  implements IMBannerListener
{
  private InMobiAdapter$BannerListener(InMobiAdapter paramInMobiAdapter) {}
  
  public void onBannerInteraction(IMBanner paramIMBanner, Map<String, String> paramMap)
  {
    Log.d("onBannerInteraction", "onBannerInteraction called");
    InMobiAdapter.access$2(this$0).onClick(this$0);
  }
  
  public void onBannerRequestFailed(IMBanner paramIMBanner, IMErrorCode paramIMErrorCode)
  {
    switch (paramIMErrorCode)
    {
    case INVALID_REQUEST: 
    case NETWORK_ERROR: 
    default: 
      InMobiAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.a);
      return;
    case DO_NOTHING: 
      InMobiAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.d);
      return;
    case DO_MONETIZE: 
      InMobiAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.a);
      return;
    case NO_FILL: 
      InMobiAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.c);
      return;
    }
    InMobiAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.b);
  }
  
  public void onBannerRequestSucceeded(IMBanner paramIMBanner)
  {
    InMobiAdapter.access$2(this$0).onReceivedAd(this$0);
  }
  
  public void onDismissBannerScreen(IMBanner paramIMBanner)
  {
    InMobiAdapter.access$2(this$0).onDismissScreen(this$0);
  }
  
  public void onLeaveApplication(IMBanner paramIMBanner)
  {
    InMobiAdapter.access$2(this$0).onLeaveApplication(this$0);
  }
  
  public void onShowBannerScreen(IMBanner paramIMBanner)
  {
    InMobiAdapter.access$2(this$0).onPresentScreen(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.inmobi.InMobiAdapter.BannerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
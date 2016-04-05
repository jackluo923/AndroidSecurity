package com.google.ads.mediation.inmobi;

import android.util.Log;
import com.google.ads.b;
import com.google.ads.mediation.f;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import java.util.Map;

class InMobiAdapter$InterstitialListener
  implements IMInterstitialListener
{
  private InMobiAdapter$InterstitialListener(InMobiAdapter paramInMobiAdapter) {}
  
  public void onDismissInterstitialScreen(IMInterstitial paramIMInterstitial)
  {
    InMobiAdapter.access$3(this$0).onDismissScreen(this$0);
  }
  
  public void onInterstitialFailed(IMInterstitial paramIMInterstitial, IMErrorCode paramIMErrorCode)
  {
    switch (paramIMErrorCode)
    {
    case INVALID_REQUEST: 
    case NETWORK_ERROR: 
    default: 
      InMobiAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.a);
      return;
    case DO_NOTHING: 
      InMobiAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.d);
      return;
    case DO_MONETIZE: 
      InMobiAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.a);
      return;
    case NO_FILL: 
      InMobiAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.c);
      return;
    }
    InMobiAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.b);
  }
  
  public void onInterstitialInteraction(IMInterstitial paramIMInterstitial, Map<String, String> paramMap)
  {
    Log.d("onInterstitialInteraction", "onInterstitialInteraction called");
  }
  
  public void onInterstitialLoaded(IMInterstitial paramIMInterstitial)
  {
    InMobiAdapter.access$3(this$0).onReceivedAd(this$0);
  }
  
  public void onLeaveApplication(IMInterstitial paramIMInterstitial)
  {
    InMobiAdapter.access$3(this$0).onLeaveApplication(this$0);
  }
  
  public void onShowInterstitialScreen(IMInterstitial paramIMInterstitial)
  {
    InMobiAdapter.access$3(this$0).onPresentScreen(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.inmobi.InMobiAdapter.InterstitialListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
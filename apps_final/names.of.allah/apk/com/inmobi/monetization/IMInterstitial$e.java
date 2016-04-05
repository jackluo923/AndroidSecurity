package com.inmobi.monetization;

import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.InterstitialView;
import com.inmobi.androidsdk.InterstitialViewListener;
import com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule;
import com.inmobi.monetization.internal.MonetizationUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

class IMInterstitial$e
  implements InterstitialViewListener
{
  IMInterstitial$e(IMInterstitial paramIMInterstitial) {}
  
  public void onAdRequestFailed(InterstitialView paramInterstitialView, AdRequest.ErrorCode paramErrorCode)
  {
    if (a.b == LtvpRuleProcessor.ActionsRule.ACTIONS_TO_MEDIATION) {
      if (IMInterstitial.a(a) != null) {
        IMInterstitial.a(a).onInterstitialFailed(a, IMErrorCode.DO_MONETIZE);
      }
    }
    for (;;)
    {
      IMInterstitial.b(a).set(false);
      IMInterstitial.a(a, IMInterstitial.State.INIT);
      return;
      if (IMInterstitial.a(a) != null) {
        IMInterstitial.a(a).onInterstitialFailed(a, MonetizationUtils.getErrorCode(paramErrorCode));
      }
    }
  }
  
  public void onAdRequestLoaded(InterstitialView paramInterstitialView)
  {
    IMInterstitial.a(a, IMInterstitial.State.READY);
    IMInterstitial.b(a).set(false);
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialLoaded(a);
    }
  }
  
  public void onDismissAdScreen(InterstitialView paramInterstitialView)
  {
    IMInterstitial.a(a, IMInterstitial.State.INIT);
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onDismissInterstitialScreen(a);
    }
  }
  
  public void onIncentCompleted(InterstitialView paramInterstitialView, Map<Object, Object> paramMap)
  {
    if (IMInterstitial.c(a) != null) {
      IMInterstitial.c(a).onIncentCompleted(a, paramMap);
    }
  }
  
  public void onInterstitialInteraction(InterstitialView paramInterstitialView, Map<String, String> paramMap)
  {
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialInteraction(a, paramMap);
    }
  }
  
  public void onLeaveApplication(InterstitialView paramInterstitialView)
  {
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onLeaveApplication(a);
    }
  }
  
  public void onShowAdScreen(InterstitialView paramInterstitialView)
  {
    IMInterstitial.a(a, IMInterstitial.State.ACTIVE);
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onShowInterstitialScreen(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
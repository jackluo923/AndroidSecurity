package com.inmobi.monetization;

import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.BannerView;
import com.inmobi.androidsdk.BannerViewListener;
import com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule;
import com.inmobi.monetization.internal.MonetizationUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

class IMBanner$h
  implements BannerViewListener
{
  IMBanner$h(IMBanner paramIMBanner) {}
  
  public void onAdRequestCompleted(BannerView paramBannerView)
  {
    IMBanner.d(a).set(false);
    IMBanner.b(a);
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerRequestSucceeded(a);
    }
  }
  
  public void onAdRequestFailed(BannerView paramBannerView, AdRequest.ErrorCode paramErrorCode)
  {
    if (a.b == LtvpRuleProcessor.ActionsRule.ACTIONS_TO_MEDIATION) {
      if (IMBanner.a(a) != null) {
        IMBanner.a(a).onBannerRequestFailed(a, IMErrorCode.DO_MONETIZE);
      }
    }
    for (;;)
    {
      IMBanner.d(a).set(false);
      IMBanner.b(a);
      return;
      if (IMBanner.a(a) != null) {
        IMBanner.a(a).onBannerRequestFailed(a, MonetizationUtils.getErrorCode(paramErrorCode));
      }
    }
  }
  
  public void onBannerInteraction(BannerView paramBannerView, Map<String, String> paramMap)
  {
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerInteraction(a, paramMap);
    }
  }
  
  public void onDismissAdScreen(BannerView paramBannerView)
  {
    IMBanner.c(a).set(false);
    IMBanner.b(a);
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onDismissBannerScreen(a);
    }
  }
  
  public void onLeaveApplication(BannerView paramBannerView)
  {
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onLeaveApplication(a);
    }
  }
  
  public void onShowAdScreen(BannerView paramBannerView)
  {
    IMBanner.c(a).set(true);
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onShowBannerScreen(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
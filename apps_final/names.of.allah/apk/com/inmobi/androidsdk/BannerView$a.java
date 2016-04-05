package com.inmobi.androidsdk;

import com.inmobi.commons.internal.Log;

class BannerView$a
  implements Runnable
{
  BannerView$a(BannerView paramBannerView, int paramInt, AdRequest.ErrorCode paramErrorCode) {}
  
  public void run()
  {
    try
    {
      switch (a)
      {
      case 100: 
        Log.debug("[InMobi]-[Network]-4.4.1", b.toString());
        return;
      }
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception giving callback to the publisher ", localException);
      return;
    }
    BannerView.a(c).onAdRequestCompleted(c);
    return;
    switch (BannerView.c.a[b.ordinal()])
    {
    }
    for (;;)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", b.toString());
      for (;;)
      {
        BannerView.a(c).onAdRequestFailed(c, b);
        return;
        Log.debug("[InMobi]-[Network]-4.4.1", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
        continue;
        Log.debug("[InMobi]-[Network]-4.4.1", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
        continue;
        Log.debug("[InMobi]-[Network]-4.4.1", "Ad request successful, but no ad was returned due to lack of ad inventory.");
        continue;
        Log.debug("[InMobi]-[Network]-4.4.1", "Your App Id may be invalid or inactive. Please verify the app ID");
      }
      BannerView.a(c).onDismissAdScreen(c);
      return;
      BannerView.a(c).onShowAdScreen(c);
      return;
      BannerView.a(c).onLeaveApplication(c);
      return;
      BannerView.a(c).onShowAdScreen(c);
      return;
      BannerView.a(c).onDismissAdScreen(c);
      return;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.BannerView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
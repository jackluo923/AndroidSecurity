package com.inmobi.androidsdk;

import com.inmobi.commons.internal.Log;

class InterstitialView$a
  implements Runnable
{
  InterstitialView$a(InterstitialView paramInterstitialView, int paramInt, AdRequest.ErrorCode paramErrorCode) {}
  
  public void run()
  {
    switch (a)
    {
    default: 
      Log.debug("[InMobi]-[Network]-4.4.1", b.toString());
      return;
    case 100: 
      InterstitialView.a(c).onAdRequestLoaded(c);
      return;
    case 101: 
      switch (InterstitialView.b.a[b.ordinal()])
      {
      default: 
        Log.debug("[InMobi]-[Network]-4.4.1", b.toString());
      }
      for (;;)
      {
        InterstitialView.a(c).onAdRequestFailed(c, b);
        return;
        Log.debug("[InMobi]-[Network]-4.4.1", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
        continue;
        Log.debug("[InMobi]-[Network]-4.4.1", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
      }
    case 103: 
      InterstitialView.a(c).onDismissAdScreen(c);
      return;
    case 102: 
      InterstitialView.a(c).onShowAdScreen(c);
      return;
    }
    InterstitialView.a(c).onLeaveApplication(c);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.InterstitialView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.monetization;

import com.inmobi.commons.internal.Log;

class IMInterstitial$f
  implements Runnable
{
  IMInterstitial$f(IMInterstitial paramIMInterstitial) {}
  
  public void run()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "AppId cannot be set to null");
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialFailed(a, IMErrorCode.INVALID_REQUEST);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
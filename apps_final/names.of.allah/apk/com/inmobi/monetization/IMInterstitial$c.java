package com.inmobi.monetization;

import java.util.concurrent.atomic.AtomicBoolean;

class IMInterstitial$c
  implements Runnable
{
  IMInterstitial$c(IMInterstitial paramIMInterstitial) {}
  
  public void run()
  {
    IMInterstitial.b(a).set(false);
    IMInterstitial.a(a, IMInterstitial.State.INIT);
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialFailed(a, IMErrorCode.DO_NOTHING);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
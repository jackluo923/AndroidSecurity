package com.inmobi.monetization;

import java.util.concurrent.atomic.AtomicBoolean;

class IMInterstitial$d
  implements Runnable
{
  IMInterstitial$d(IMInterstitial paramIMInterstitial) {}
  
  public void run()
  {
    IMInterstitial.b(a).set(false);
    IMInterstitial.a(a, IMInterstitial.State.INIT);
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialFailed(a, IMErrorCode.DO_MONETIZE);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.monetization;

class IMInterstitial$b
  implements Runnable
{
  IMInterstitial$b(IMInterstitial paramIMInterstitial) {}
  
  public void run()
  {
    if (IMInterstitial.a(a) != null) {
      IMInterstitial.a(a).onInterstitialFailed(a, IMErrorCode.NO_FILL);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
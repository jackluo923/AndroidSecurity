package com.inmobi.monetization;

class IMInterstitial$g
  implements Runnable
{
  IMInterstitial$g(IMInterstitial paramIMInterstitial, IMErrorCode paramIMErrorCode) {}
  
  public void run()
  {
    if (IMInterstitial.a(b) != null) {
      IMInterstitial.a(b).onInterstitialFailed(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
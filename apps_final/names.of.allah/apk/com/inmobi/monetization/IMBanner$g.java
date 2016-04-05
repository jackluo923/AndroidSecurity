package com.inmobi.monetization;

class IMBanner$g
  implements Runnable
{
  IMBanner$g(IMBanner paramIMBanner) {}
  
  public void run()
  {
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerRequestFailed(a, IMErrorCode.NO_FILL);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.monetization;

class IMBanner$c
  implements Runnable
{
  IMBanner$c(IMBanner paramIMBanner) {}
  
  public void run()
  {
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerRequestFailed(a, IMErrorCode.DO_NOTHING);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
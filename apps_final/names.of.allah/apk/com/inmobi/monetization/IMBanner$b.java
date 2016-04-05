package com.inmobi.monetization;

class IMBanner$b
  implements Runnable
{
  IMBanner$b(IMBanner paramIMBanner) {}
  
  public void run()
  {
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerRequestFailed(a, IMErrorCode.DO_MONETIZE);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
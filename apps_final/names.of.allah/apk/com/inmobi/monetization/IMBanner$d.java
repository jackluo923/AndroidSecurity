package com.inmobi.monetization;

class IMBanner$d
  implements Runnable
{
  IMBanner$d(IMBanner paramIMBanner, IMErrorCode paramIMErrorCode) {}
  
  public void run()
  {
    if (IMBanner.a(b) != null) {
      IMBanner.a(b).onBannerRequestFailed(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
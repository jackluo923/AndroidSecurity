package com.inmobi.monetization;

import com.inmobi.commons.internal.Log;

class IMBanner$e
  implements Runnable
{
  IMBanner$e(IMBanner paramIMBanner) {}
  
  public void run()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "AppId Not Set - Please call setAppId on the IMBanner object with a valid appId. For XML, please add \"appId\" attribute to the XML. Please refer integration guideline for more details.");
    if (IMBanner.a(a) != null) {
      IMBanner.a(a).onBannerRequestFailed(a, IMErrorCode.INVALID_REQUEST);
    }
    IMBanner.b(a);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
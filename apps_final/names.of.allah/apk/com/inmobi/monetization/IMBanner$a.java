package com.inmobi.monetization;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

class IMBanner$a
  extends Handler
{
  private final WeakReference<IMBanner> a;
  
  public IMBanner$a(IMBanner paramIMBanner)
  {
    a = new WeakReference(paramIMBanner);
  }
  
  public void handleMessage(Message paramMessage)
  {
    IMBanner localIMBanner = (IMBanner)a.get();
    if (localIMBanner == null) {}
    do
    {
      return;
      switch (what)
      {
      default: 
        return;
      }
    } while (IMBanner.e(localIMBanner) == -1);
    if (!d.hasWindowFocus())
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Activity is not in the foreground. New ad will not be loaded.");
      return;
    }
    if (MRAIDInterstitialController.isInterstitialDisplayed.get())
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Ad cannot be loaded.Interstitial Ad is displayed.");
      return;
    }
    IMBanner.a(localIMBanner, false);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
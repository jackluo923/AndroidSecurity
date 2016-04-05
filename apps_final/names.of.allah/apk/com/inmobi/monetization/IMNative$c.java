package com.inmobi.monetization;

import com.inmobi.monetization.internal.TrackerView;

class IMNative$c
  implements Runnable
{
  IMNative$c(IMNative paramIMNative) {}
  
  public void run()
  {
    try
    {
      if (a.a != null)
      {
        a.a.destroy();
        a.a = null;
        return;
      }
      android.util.Log.e("[InMobi]-[Monetization]", "Please attach the native ad view before calling detach");
      IMNative.a(a, IMNative.a.f);
      return;
    }
    catch (Exception localException)
    {
      IMNative.a(a, IMNative.a.f);
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Failed to detach a view");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMNative.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
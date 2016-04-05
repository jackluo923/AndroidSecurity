package com.inmobi.monetization;

import android.os.Handler;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;

class a
  implements INativeAdListener
{
  a(IMNative paramIMNative) {}
  
  public void onNativeRequestFailed(IMErrorCode paramIMErrorCode)
  {
    try
    {
      IMNative.a(a, IMNative.a.f);
      IMNative.e(a).post(new a.a(this, paramIMErrorCode));
      return;
    }
    catch (Exception paramIMErrorCode)
    {
      Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
    }
  }
  
  public void onNativeRequestSucceeded(IMNative paramIMNative)
  {
    try
    {
      IMNative.a(a, IMNative.a.c);
      IMNative.a(a, IMNative.c(paramIMNative));
      IMNative.b(a, IMNative.a(paramIMNative));
      IMNative.c(a, IMNative.b(paramIMNative));
      IMNative.a(a, true);
      IMNative.e(a).post(new a.b(this));
      return;
    }
    catch (Exception paramIMNative)
    {
      Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
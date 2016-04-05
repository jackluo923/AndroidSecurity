package com.adsdk.sdk;

import com.adsdk.sdk.customevents.CustomEvent;
import com.adsdk.sdk.customevents.CustomEventFullscreen;

class AdManager$5
  implements Runnable
{
  AdManager$5(AdManager paramAdManager, CustomEvent paramCustomEvent) {}
  
  public void run()
  {
    try
    {
      AdManager.access$17(this$0).loadFullscreen(AdManager.access$19(), AdManager.access$20(this$0), val$event.getOptionalParameter(), val$event.getPixelUrl());
      return;
    }
    catch (Exception localException)
    {
      AdManager.access$21(this$0, null);
      Log.d("Failed to create Custom Event Fullscreen.");
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
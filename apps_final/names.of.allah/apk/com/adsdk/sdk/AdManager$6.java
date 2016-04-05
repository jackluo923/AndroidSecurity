package com.adsdk.sdk;

import com.adsdk.sdk.customevents.CustomEventFullscreen;
import com.adsdk.sdk.customevents.CustomEventFullscreen.CustomEventFullscreenListener;

class AdManager$6
  implements CustomEventFullscreen.CustomEventFullscreenListener
{
  AdManager$6(AdManager paramAdManager) {}
  
  public void onFullscreenClosed()
  {
    AdManager.access$23(this$0, AdManager.access$14(this$0), true);
  }
  
  public void onFullscreenFailed()
  {
    AdManager.access$16(this$0);
    if (AdManager.access$17(this$0) != null) {
      return;
    }
    if ((AdManager.access$14(this$0).getType() != 2) && (AdManager.access$14(this$0).getType() != -1))
    {
      AdManager.access$15(this$0, AdManager.access$14(this$0));
      return;
    }
    if (((AdManager.access$6(this$0)) && (!AdManager.access$7(this$0))) || ((AdManager.access$0(this$0)) && (!AdManager.access$2(this$0))))
    {
      AdManager.access$18(this$0, true);
      return;
    }
    AdManager.access$10(this$0);
  }
  
  public void onFullscreenLeftApplication()
  {
    AdManager.access$22(this$0);
  }
  
  public void onFullscreenLoaded(CustomEventFullscreen paramCustomEventFullscreen)
  {
    AdManager.access$21(this$0, paramCustomEventFullscreen);
    AdManager.access$15(this$0, AdManager.access$14(this$0));
  }
  
  public void onFullscreenOpened() {}
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
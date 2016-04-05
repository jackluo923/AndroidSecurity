package com.mobfox.adapter;

import com.adsdk.sdk.Ad;
import com.adsdk.sdk.AdListener;
import com.google.ads.b;
import com.google.ads.mediation.f;

class MobFoxAdapter$2
  implements AdListener
{
  MobFoxAdapter$2(MobFoxAdapter paramMobFoxAdapter) {}
  
  public void adClicked() {}
  
  public void adClosed(Ad paramAd, boolean paramBoolean)
  {
    if (MobFoxAdapter.access$3(this$0) != null) {
      MobFoxAdapter.access$3(this$0).onDismissScreen(this$0);
    }
  }
  
  public void adLoadSucceeded(Ad paramAd)
  {
    if (MobFoxAdapter.access$3(this$0) != null) {
      MobFoxAdapter.access$3(this$0).onReceivedAd(this$0);
    }
  }
  
  public void adShown(Ad paramAd, boolean paramBoolean)
  {
    if (MobFoxAdapter.access$3(this$0) != null) {
      MobFoxAdapter.access$3(this$0).onPresentScreen(this$0);
    }
  }
  
  public void noAdFound()
  {
    if (MobFoxAdapter.access$3(this$0) != null) {
      MobFoxAdapter.access$3(this$0).onFailedToReceiveAd(this$0, b.b);
    }
  }
}

/* Location:
 * Qualified Name:     com.mobfox.adapter.MobFoxAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
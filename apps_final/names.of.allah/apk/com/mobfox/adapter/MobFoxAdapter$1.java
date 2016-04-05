package com.mobfox.adapter;

import com.adsdk.sdk.Ad;
import com.adsdk.sdk.AdListener;
import com.google.ads.b;
import com.google.ads.mediation.d;

class MobFoxAdapter$1
  implements AdListener
{
  MobFoxAdapter$1(MobFoxAdapter paramMobFoxAdapter) {}
  
  public void adClicked()
  {
    if (MobFoxAdapter.access$2(this$0) != null) {
      MobFoxAdapter.access$2(this$0).onClick(this$0);
    }
  }
  
  public void adClosed(Ad paramAd, boolean paramBoolean)
  {
    if (MobFoxAdapter.access$2(this$0) != null) {
      MobFoxAdapter.access$2(this$0).onDismissScreen(this$0);
    }
  }
  
  public void adLoadSucceeded(Ad paramAd)
  {
    if (MobFoxAdapter.access$2(this$0) != null) {
      MobFoxAdapter.access$2(this$0).onReceivedAd(this$0);
    }
  }
  
  public void adShown(Ad paramAd, boolean paramBoolean)
  {
    if (MobFoxAdapter.access$2(this$0) != null) {
      MobFoxAdapter.access$2(this$0).onPresentScreen(this$0);
    }
  }
  
  public void noAdFound()
  {
    if (MobFoxAdapter.access$2(this$0) != null) {
      MobFoxAdapter.access$2(this$0).onFailedToReceiveAd(this$0, b.b);
    }
  }
}

/* Location:
 * Qualified Name:     com.mobfox.adapter.MobFoxAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
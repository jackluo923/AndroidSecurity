package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.aw;

public final class PublisherInterstitialAd
{
  private final aw kw;
  
  public PublisherInterstitialAd(Context paramContext)
  {
    kw = new aw(paramContext);
  }
  
  public final AdListener getAdListener()
  {
    return kw.getAdListener();
  }
  
  public final String getAdUnitId()
  {
    return kw.getAdUnitId();
  }
  
  public final AppEventListener getAppEventListener()
  {
    return kw.getAppEventListener();
  }
  
  public final boolean isLoaded()
  {
    return kw.isLoaded();
  }
  
  public final void loadAd(PublisherAdRequest paramPublisherAdRequest)
  {
    kw.a(paramPublisherAdRequest.O());
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    kw.setAdListener(paramAdListener);
  }
  
  public final void setAdUnitId(String paramString)
  {
    kw.setAdUnitId(paramString);
  }
  
  public final void setAppEventListener(AppEventListener paramAppEventListener)
  {
    kw.setAppEventListener(paramAppEventListener);
  }
  
  public final void show()
  {
    kw.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherInterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
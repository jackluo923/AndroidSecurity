package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.aw;

public final class InterstitialAd
{
  private final aw kw;
  
  public InterstitialAd(Context paramContext)
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
  
  public final InAppPurchaseListener getInAppPurchaseListener()
  {
    return kw.getInAppPurchaseListener();
  }
  
  public final boolean isLoaded()
  {
    return kw.isLoaded();
  }
  
  public final void loadAd(AdRequest paramAdRequest)
  {
    kw.a(paramAdRequest.O());
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    kw.setAdListener(paramAdListener);
  }
  
  public final void setAdUnitId(String paramString)
  {
    kw.setAdUnitId(paramString);
  }
  
  public final void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    kw.setInAppPurchaseListener(paramInAppPurchaseListener);
  }
  
  public final void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    kw.setPlayStorePurchaseParams(paramPlayStorePurchaseListener, paramString);
  }
  
  public final void show()
  {
    kw.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.InterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
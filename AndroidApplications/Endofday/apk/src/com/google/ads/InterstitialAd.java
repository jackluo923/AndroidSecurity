package com.google.ads;

import android.app.Activity;
import d;
import e;

public class InterstitialAd
  implements Ad
{
  private d a;
  
  public InterstitialAd(Activity paramActivity, String paramString)
  {
    d locald = new d;
    AdSize localAdSize = null;
    locald.<init>(paramActivity, this, localAdSize, paramString);
    a = locald;
  }
  
  public boolean isReady()
  {
    d locald = a;
    boolean bool = locald.k();
    return bool;
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    d locald = a;
    locald.a(paramAdRequest);
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    d locald = a;
    locald.a(paramAdListener);
  }
  
  public void show()
  {
    boolean bool = isReady();
    if (bool)
    {
      d locald = a;
      locald.q();
      locald = a;
      e locale = new e;
      String str = "interstitial";
      locale.<init>(str);
      AdActivity.launchAdActivity(locald, locale);
    }
  }
  
  public void stopLoading()
  {
    d locald = a;
    locald.s();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.InterstitialAd
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
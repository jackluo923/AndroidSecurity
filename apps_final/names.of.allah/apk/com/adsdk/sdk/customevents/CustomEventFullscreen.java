package com.adsdk.sdk.customevents;

import android.content.Context;
import android.os.AsyncTask;

public abstract class CustomEventFullscreen
{
  protected CustomEventFullscreen.CustomEventFullscreenListener listener;
  protected String trackingPixel;
  
  public abstract void loadFullscreen(Context paramContext, CustomEventFullscreen.CustomEventFullscreenListener paramCustomEventFullscreenListener, String paramString1, String paramString2);
  
  protected void reportImpression()
  {
    new CustomEventFullscreen.1(this).execute(new Void[0]);
  }
  
  public abstract void showFullscreen();
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventFullscreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
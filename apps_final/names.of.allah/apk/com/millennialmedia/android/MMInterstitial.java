package com.millennialmedia.android;

import android.content.Context;

public final class MMInterstitial
  implements MMAd
{
  MMAdImpl adImpl;
  int externalId;
  
  public MMInterstitial(Context paramContext)
  {
    adImpl = new MMInterstitial.MMInterstitialAdImpl(this, paramContext.getApplicationContext());
    adImpl.adType = "i";
  }
  
  private void fetchInternal()
  {
    if (isAdAvailable())
    {
      MMSDK.Log.d("Ad already fetched and ready for display...");
      MMSDK.Event.requestFailed(adImpl, new MMException(17));
      return;
    }
    MMSDK.Log.d("Fetching new ad...");
    adImpl.requestAd();
  }
  
  public final boolean display()
  {
    return display(false);
  }
  
  public final boolean display(boolean paramBoolean)
  {
    if (!MMSDK.isUiThread()) {
      MMSDK.Log.e(MMException.getErrorCodeMessage(3));
    }
    int i;
    do
    {
      do
      {
        return false;
        try
        {
          i = displayInternal();
          if ((i == 0) || (!paramBoolean)) {
            break;
          }
          throw new MMException(i);
        }
        catch (Exception localException) {}
      } while (!paramBoolean);
      throw new MMException(localException);
    } while (i != 0);
    return true;
  }
  
  final int displayInternal()
  {
    try
    {
      MMAdImplController.assignAdViewController(adImpl);
      if (adImpl.controller != null)
      {
        int i = adImpl.controller.display(adImpl);
        return i;
      }
    }
    catch (Exception localException)
    {
      MMSDK.Log.e("There was an exception displaying a cached ad. %s", new Object[] { localException.getMessage() });
      localException.printStackTrace();
    }
    return 100;
  }
  
  public final void fetch()
  {
    if ((adImpl != null) && (adImpl.requestListener != null))
    {
      fetch(adImpl.mmRequest, adImpl.requestListener);
      return;
    }
    fetchInternal();
  }
  
  public final void fetch(MMRequest paramMMRequest)
  {
    if ((adImpl != null) && (adImpl.requestListener != null))
    {
      fetch(paramMMRequest, adImpl.requestListener);
      return;
    }
    fetchInternal();
  }
  
  public final void fetch(MMRequest paramMMRequest, RequestListener paramRequestListener)
  {
    if (adImpl != null)
    {
      adImpl.mmRequest = paramMMRequest;
      adImpl.requestListener = paramRequestListener;
    }
    fetchInternal();
  }
  
  public final String getApid()
  {
    return adImpl.getApid();
  }
  
  public final boolean getIgnoresDensityScaling()
  {
    return adImpl.getIgnoresDensityScaling();
  }
  
  public final RequestListener getListener()
  {
    return adImpl.getListener();
  }
  
  public final MMRequest getMMRequest()
  {
    return adImpl.getMMRequest();
  }
  
  public final boolean isAdAvailable()
  {
    if (!MMSDK.isUiThread()) {
      MMSDK.Log.e(MMException.getErrorCodeMessage(3));
    }
    for (;;)
    {
      return false;
      try
      {
        MMAdImplController.assignAdViewController(adImpl);
        if (adImpl.controller != null)
        {
          int i = adImpl.controller.isAdAvailable(adImpl);
          if (i == 0) {
            return true;
          }
        }
      }
      catch (Exception localException)
      {
        MMSDK.Log.e("There was an exception checking for a cached ad. %s", new Object[] { localException.getMessage() });
        localException.printStackTrace();
      }
    }
    return false;
  }
  
  public final void setApid(String paramString)
  {
    adImpl.setApid(paramString);
  }
  
  public final void setIgnoresDensityScaling(boolean paramBoolean)
  {
    adImpl.setIgnoresDensityScaling(paramBoolean);
  }
  
  public final void setListener(RequestListener paramRequestListener)
  {
    adImpl.setListener(paramRequestListener);
  }
  
  public final void setMMRequest(MMRequest paramMMRequest)
  {
    adImpl.setMMRequest(paramMMRequest);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMInterstitial
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.millennialmedia.android;

import android.util.Log;

public class RequestListener$RequestListenerImpl
  implements RequestListener
{
  public void MMAdOverlayLaunched(MMAd paramMMAd)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View overlay launched");
  }
  
  public void MMAdRequestIsCaching(MMAd paramMMAd)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View caching request");
  }
  
  public void requestCompleted(MMAd paramMMAd)
  {
    Log.i("MillennialMediaSDK", "Ad request succeeded");
  }
  
  public void requestFailed(MMAd paramMMAd, MMException paramMMException)
  {
    Log.i("MillennialMediaSDK", String.format("Ad request failed with error: %d %s.", new Object[] { Integer.valueOf(paramMMException.getCode()), paramMMException.getMessage() }));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.RequestListener.RequestListenerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
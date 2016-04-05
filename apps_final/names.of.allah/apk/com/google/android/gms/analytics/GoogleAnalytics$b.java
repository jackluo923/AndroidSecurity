package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class GoogleAnalytics$b
  implements Application.ActivityLifecycleCallbacks
{
  GoogleAnalytics$b(GoogleAnalytics paramGoogleAnalytics) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    GoogleAnalytics.a(wr, paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    GoogleAnalytics.b(wr, paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.GoogleAnalytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
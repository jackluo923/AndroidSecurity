package com.admob.android.ads;

import android.util.Log;
import java.util.TimerTask;

class AdView$2
  extends TimerTask
{
  final AdView this$0;
  
  AdView$2(AdView paramAdView) {}
  
  public void run()
  {
    int k = 3;
    String str1 = "AdMob SDK";
    boolean bool1 = Log.isLoggable(str1, k);
    if (bool1)
    {
      AdView localAdView = this$0;
      int j = AdView.access$900(localAdView);
      int i = j / 1000;
      String str2 = "AdMob SDK";
      boolean bool2 = Log.isLoggable(str2, k);
      if (bool2)
      {
        localObject1 = "AdMob SDK";
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str3 = "Requesting a fresh ad because a request interval passed (";
        localObject2 = ((StringBuilder)localObject2).append(str3);
        localObject2 = ((StringBuilder)localObject2).append(i);
        str3 = " seconds).";
        localObject2 = ((StringBuilder)localObject2).append(str3);
        localObject2 = ((StringBuilder)localObject2).toString();
        Log.d((String)localObject1, (String)localObject2);
      }
    }
    Object localObject1 = this$0;
    ((AdView)localObject1).requestFreshAd();
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
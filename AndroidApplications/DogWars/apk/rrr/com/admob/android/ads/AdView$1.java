package com.admob.android.ads;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.widget.RelativeLayout.LayoutParams;

class AdView$1
  extends Thread
{
  final AdView this$0;
  
  AdView$1(AdView paramAdView) {}
  
  public void run()
  {
    boolean bool7 = false;
    for (;;)
    {
      try
      {
        localObject1 = this$0;
        localContext = ((AdView)localObject1).getContext();
        localObject1 = this$0;
        localObject1 = AdView.access$000((AdView)localObject1);
        Object localObject7 = this$0;
        localObject7 = AdView.access$100((AdView)localObject7);
        localAd = AdRequester.requestAd(localContext, (String)localObject1, (String)localObject7);
        if (localAd == null) {
          continue;
        }
      }
      catch (Exception localException2)
      {
        Object localObject1;
        Context localContext;
        Ad localAd;
        Object localObject2;
        int i;
        AdContainer localAdContainer;
        Object localObject3;
        localException1 = localException2;
        localObject5 = "AdMob SDK";
        localObject8 = "Unhandled exception requesting a fresh ad.";
        Log.e((String)localObject5, (String)localObject8, localException1);
        localObject5 = this$0;
        AdView.access$302((AdView)localObject5, bool7);
        continue;
        boolean bool1 = bool7;
        continue;
        localObject6 = this$0;
        localObject6 = AdView.access$500((AdView)localObject6);
        if (localObject6 == null) {
          break label524;
        }
      }
      try
      {
        localObject1 = this$0;
        localObject1 = AdView.access$200((AdView)localObject1);
        if (localObject1 != null)
        {
          localObject1 = this$0;
          localObject1 = AdView.access$200((AdView)localObject1);
          localObject1 = ((AdContainer)localObject1).getAd();
          boolean bool2 = localAd.equals(localObject1);
          if (bool2)
          {
            bool2 = AdManager.isInTestMode();
            if (!bool2)
            {
              String str1 = "AdMob SDK";
              int m = 3;
              boolean bool3 = Log.isLoggable(str1, m);
              if (bool3)
              {
                localObject2 = "AdMob SDK";
                String str3 = "Received the same ad we already had.  Discarding it.";
                Log.d((String)localObject2, str3);
              }
              localObject2 = this$0;
              boolean bool5 = false;
              AdView.access$302((AdView)localObject2, bool5);
              return;
            }
          }
        }
        localObject2 = this$0;
        localObject2 = AdView.access$200((AdView)localObject2);
        if (localObject2 == null)
        {
          boolean bool4 = true;
          bool1 = bool4;
          AdView localAdView1 = this$0;
          i = AdView.access$401(localAdView1);
          localAdContainer = new com/admob/android/ads/AdContainer;
          localAdContainer.<init>(localAd, localContext);
          localAdView1 = this$0;
          int j = localAdView1.getBackgroundColor();
          localAdContainer.setBackgroundColor(j);
          AdView localAdView2 = this$0;
          int k = localAdView2.getTextColor();
          localAdContainer.setTextColor(k);
          localAdContainer.setVisibility(i);
          RelativeLayout.LayoutParams localLayoutParams = new android/widget/RelativeLayout$LayoutParams;
          k = -1;
          int n = 48;
          localLayoutParams.<init>(k, n);
          localAdContainer.setLayoutParams(localLayoutParams);
          localObject3 = this$0;
          localObject3 = AdView.access$500((AdView)localObject3);
          if (localObject3 == null) {}
        }
      }
      finally {}
      try
      {
        localObject3 = this$0;
        localObject3 = AdView.access$500((AdView)localObject3);
        ((AdView.AdListener)localObject3).onNewAd();
        localObject3 = this$0;
        localObject3 = AdView.access$500((AdView)localObject3);
        localObject8 = this$0;
        ((AdView.AdListener)localObject3).onReceiveAd((AdView)localObject8);
      }
      catch (Exception localException3)
      {
        localException1 = localException3;
        localObject6 = "AdMob SDK";
        localObject8 = "Unhandled exception raised in your AdListener.onReceiveAd.";
        Log.w((String)localObject6, (String)localObject8, localException1);
        continue;
      }
      localObject3 = AdView.access$800();
      Object localObject8 = new com/admob/android/ads/AdView$1$1;
      ((AdView.1.1)localObject8).<init>(this, localAdContainer, i, bool1);
      ((Handler)localObject3).post((Runnable)localObject8);
      continue;
      try
      {
        Object localObject5;
        localObject6 = this$0;
        localObject6 = AdView.access$500((AdView)localObject6);
        localObject8 = this$0;
        ((AdView.AdListener)localObject6).onFailedToReceiveAd((AdView)localObject8);
      }
      catch (Exception localException4)
      {
        for (;;)
        {
          Object localObject6;
          label524:
          boolean bool6;
          Exception localException1 = localException4;
          String str2 = "AdMob SDK";
          String str4 = "Unhandled exception raised in your AdListener.onFailedToReceiveAd.";
          Log.w(str2, str4, localException1);
        }
      }
      localObject6 = this$0;
      bool6 = false;
      AdView.access$302((AdView)localObject6, bool6);
    }
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
package com.admob.android.ads;

import android.util.Log;
import android.view.View;

class AdView$1$1
  implements Runnable
{
  final AdView.1 this$1;
  
  AdView$1$1(AdView.1 param1, AdContainer paramAdContainer, int paramInt, boolean paramBoolean) {}
  
  public void run()
  {
    bool2 = false;
    for (;;)
    {
      try
      {
        Object localObject1 = this$1;
        localObject1 = this$0;
        localObject5 = val$newAdContainer;
        ((AdView)localObject1).addView((View)localObject5);
        int i = val$visibility;
        if (i != 0) {
          continue;
        }
        boolean bool1 = val$firstAd;
        if (!bool1) {
          continue;
        }
        localObject2 = this$1;
        localObject2 = this$0;
        localObject5 = val$newAdContainer;
        AdView.access$600((AdView)localObject2, (AdContainer)localObject5);
      }
      catch (Exception localException2)
      {
        Object localObject2;
        Exception localException1 = localException2;
        Object localObject3 = "AdMob SDK";
        localObject5 = "Unhandled exception placing AdContainer into AdView.";
        Log.e((String)localObject3, (String)localObject5, localException1);
        localObject3 = this$1;
        localObject3 = this$0;
        AdView.access$302((AdView)localObject3, bool2);
        continue;
        localObject3 = this$1;
        localObject3 = this$0;
        localObject5 = val$newAdContainer;
        AdView.access$202((AdView)localObject3, (AdContainer)localObject5);
        continue;
      }
      finally
      {
        Object localObject5 = this$1;
        localObject5 = this$0;
        AdView.access$302((AdView)localObject5, bool2);
      }
      localObject2 = this$1;
      localObject2 = this$0;
      AdView.access$302((AdView)localObject2, bool2);
      return;
      localObject2 = this$1;
      localObject2 = this$0;
      localObject5 = val$newAdContainer;
      AdView.access$700((AdView)localObject2, (AdContainer)localObject5);
    }
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.1.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
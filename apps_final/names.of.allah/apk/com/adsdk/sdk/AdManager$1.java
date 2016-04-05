package com.adsdk.sdk;

import android.os.Build.VERSION;
import com.adsdk.sdk.video.ResourceManager;
import java.util.List;

class AdManager$1
  implements Runnable
{
  AdManager$1(AdManager paramAdManager) {}
  
  public void run()
  {
    if (!ResourceManager.isDownloading()) {
      Log.d("starting request thread");
    }
    for (;;)
    {
      try
      {
        RequestGeneralAd localRequestGeneralAd = new RequestGeneralAd();
        if ((!AdManager.access$0(this$0)) || (AdManager.access$1(this$0)) || (AdManager.access$2(this$0))) {
          continue;
        }
        AdManager.access$4(this$0, AdManager.access$3(this$0));
        AdManager.access$5(this$0, true);
        AdManager.access$13(this$0, (AdResponse)localRequestGeneralAd.sendRequest(AdManager.access$12(this$0)));
        if ((AdManager.access$14(this$0).getType() == 2) && ((AdManager.access$14(this$0).getCustomEvents() == null) || (AdManager.access$14(this$0).getCustomEvents().isEmpty())))
        {
          if ((!AdManager.access$6(this$0)) || (AdManager.access$7(this$0))) {
            continue;
          }
          AdManager.access$4(this$0, AdManager.access$8(this$0));
          AdManager.access$9(this$0, true);
          AdManager.access$13(this$0, (AdResponse)localRequestGeneralAd.sendRequest(AdManager.access$12(this$0)));
        }
      }
      catch (Throwable localThrowable)
      {
        if ((!AdManager.access$6(this$0)) || (AdManager.access$7(this$0))) {
          continue;
        }
        AdManager.access$11(this$0, null);
        AdManager.access$18(this$0, true);
        continue;
        Log.d("Both video and interstitial ads disabled");
        AdManager.access$10(this$0);
        AdManager.access$11(this$0, null);
        return;
        if ((!AdManager.access$0(this$0)) || (AdManager.access$2(this$0))) {
          continue;
        }
        AdManager.access$4(this$0, AdManager.access$3(this$0));
        AdManager.access$5(this$0, true);
        AdManager.access$13(this$0, (AdResponse)localThrowable.sendRequest(AdManager.access$12(this$0)));
        continue;
        if ((AdManager.access$14(this$0).getType() != 3) || (!AdManager.access$14(this$0).getCustomEvents().isEmpty())) {
          continue;
        }
        Log.d("response OK received");
        AdManager.access$15(this$0, AdManager.access$14(this$0));
        continue;
        if ((!AdManager.access$14(this$0).getCustomEvents().isEmpty()) || ((AdManager.access$14(this$0).getType() != 1) && (AdManager.access$14(this$0).getType() != 4) && (AdManager.access$14(this$0).getType() != 0))) {
          continue;
        }
        AdManager.access$15(this$0, AdManager.access$14(this$0));
        continue;
        if ((AdManager.access$14(this$0).getType() != 2) || (AdManager.access$14(this$0).getCustomEvents() == null) || (!AdManager.access$14(this$0).getCustomEvents().isEmpty())) {
          continue;
        }
        Log.d("response NO AD received");
        AdManager.access$10(this$0);
        continue;
        if ((AdManager.access$14(this$0).getCustomEvents() == null) || (AdManager.access$14(this$0).getCustomEvents().isEmpty())) {
          continue;
        }
        AdManager.access$16(this$0);
        if (AdManager.access$17(this$0) != null) {
          continue;
        }
        AdManager.access$14(this$0).getCustomEvents().clear();
        AdManager.access$10(this$0);
        continue;
        AdManager.access$10(this$0);
        continue;
        if ((!AdManager.access$0(this$0)) || (AdManager.access$2(this$0))) {
          continue;
        }
        AdManager.access$11(this$0, null);
        AdManager.access$18(this$0, true);
        continue;
        AdManager.access$13(this$0, new AdResponse());
        AdManager.access$14(this$0).setType(-1);
        AdManager.access$10(this$0);
        continue;
      }
      if ((AdManager.access$14(this$0).getVideoData() == null) || (Build.VERSION.SDK_INT >= 8) || ((AdManager.access$14(this$0).getCustomEvents() != null) && (!AdManager.access$14(this$0).getCustomEvents().isEmpty()))) {
        continue;
      }
      Log.d("Not capable of video");
      AdManager.access$10(this$0);
      Log.d("finishing ad request thread");
      AdManager.access$11(this$0, null);
      return;
      try
      {
        Thread.sleep(200L);
      }
      catch (InterruptedException localInterruptedException) {}
      break;
      if ((!AdManager.access$6(this$0)) || (AdManager.access$7(this$0))) {
        continue;
      }
      AdManager.access$4(this$0, AdManager.access$8(this$0));
      AdManager.access$9(this$0, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
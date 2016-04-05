package com.adsdk.sdk;

import com.adsdk.sdk.video.ResourceManager;
import java.io.InputStream;
import java.util.List;

class AdManager$3
  implements Runnable
{
  AdManager$3(AdManager paramAdManager, InputStream paramInputStream) {}
  
  public void run()
  {
    if (!ResourceManager.isDownloading()) {
      Log.d("starting request thread");
    }
    for (;;)
    {
      try
      {
        RequestGeneralAd localRequestGeneralAd = new RequestGeneralAd(val$xml);
        if ((!AdManager.access$0(this$0)) || (AdManager.access$1(this$0))) {
          continue;
        }
        AdManager.access$4(this$0, AdManager.access$3(this$0));
        AdManager.access$13(this$0, (AdResponse)localRequestGeneralAd.sendRequest(AdManager.access$12(this$0)));
        if ((AdManager.access$14(this$0).getType() == 2) && (AdManager.access$14(this$0).getCustomEvents().isEmpty()))
        {
          if ((!AdManager.access$6(this$0)) || (AdManager.access$7(this$0))) {
            break label335;
          }
          AdManager.access$4(this$0, AdManager.access$8(this$0));
          AdManager.access$9(this$0, true);
          AdManager.access$13(this$0, (AdResponse)localRequestGeneralAd.sendRequest(AdManager.access$12(this$0)));
        }
        if ((AdManager.access$14(this$0).getType() == 2) || (!AdManager.access$14(this$0).getCustomEvents().isEmpty())) {
          break label401;
        }
        Log.d("response OK received");
        AdManager.access$15(this$0, AdManager.access$14(this$0));
      }
      catch (Throwable localThrowable)
      {
        AdManager.access$13(this$0, new AdResponse());
        AdManager.access$14(this$0).setType(-1);
        AdManager.access$10(this$0);
        continue;
        Log.d("Both video and interstitial ads disabled");
        AdManager.access$10(this$0);
        AdManager.access$11(this$0, null);
        return;
      }
      Log.d("finishing ad request thread");
      AdManager.access$11(this$0, null);
      return;
      try
      {
        Thread.sleep(200L);
      }
      catch (InterruptedException localInterruptedException) {}
      break;
      if (AdManager.access$6(this$0)) {
        AdManager.access$4(this$0, AdManager.access$8(this$0));
      } else {
        label335:
        if ((AdManager.access$0(this$0)) && (!AdManager.access$2(this$0)))
        {
          AdManager.access$4(this$0, AdManager.access$3(this$0));
          AdManager.access$5(this$0, true);
          AdManager.access$13(this$0, (AdResponse)localThrowable.sendRequest(AdManager.access$12(this$0)));
          continue;
          label401:
          if (AdManager.access$14(this$0).getCustomEvents().isEmpty())
          {
            Log.d("response NO AD received");
            AdManager.access$10(this$0);
          }
          else
          {
            AdManager.access$16(this$0);
            if (AdManager.access$17(this$0) == null)
            {
              AdManager.access$14(this$0).getCustomEvents().clear();
              AdManager.access$10(this$0);
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
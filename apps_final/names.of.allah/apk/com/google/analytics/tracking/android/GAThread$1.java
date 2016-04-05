package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.Map;

class GAThread$1
  implements Runnable
{
  GAThread$1(GAThread paramGAThread, Map paramMap) {}
  
  public void run()
  {
    if (TextUtils.isEmpty((CharSequence)val$hitCopy.get("&cid"))) {
      val$hitCopy.put("&cid", GAThread.access$000(this$0));
    }
    if ((GoogleAnalytics.getInstance(GAThread.access$100(this$0)).getAppOptOut()) || (GAThread.access$200(this$0, val$hitCopy))) {
      return;
    }
    if (!TextUtils.isEmpty(GAThread.access$300(this$0)))
    {
      GAUsage.getInstance().setDisableUsage(true);
      val$hitCopy.putAll(new MapBuilder().setCampaignParamsFromUrl(GAThread.access$300(this$0)).build());
      GAUsage.getInstance().setDisableUsage(false);
      GAThread.access$302(this$0, null);
    }
    GAThread.access$400(this$0, val$hitCopy);
    Map localMap = HitBuilder.generateHitParams(val$hitCopy);
    GAThread.access$700(this$0).putHit(localMap, Long.valueOf((String)val$hitCopy.get("&ht")).longValue(), GAThread.access$500(this$0, val$hitCopy), GAThread.access$600(this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAThread.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.Map;

class t$1
  implements Runnable
{
  t$1(t paramt, Map paramMap) {}
  
  public void run()
  {
    t.a(uO, uN);
    if (TextUtils.isEmpty((CharSequence)uN.get("&cid"))) {
      uN.put("&cid", h.cq().getValue("&cid"));
    }
    if ((GoogleAnalytics.getInstance(t.a(uO)).getAppOptOut()) || (t.b(uO, uN))) {
      return;
    }
    if (!TextUtils.isEmpty(t.b(uO)))
    {
      u.cP().u(true);
      uN.putAll(new HitBuilders.HitBuilder().setCampaignParamsFromUrl(t.b(uO)).build());
      u.cP().u(false);
      t.a(uO, null);
    }
    t.c(uO, uN);
    Map localMap = y.u(uN);
    t.d(uO).b(localMap, Long.valueOf((String)uN.get("&ht")).longValue(), t.d(uO, uN), t.c(uO));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.t.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
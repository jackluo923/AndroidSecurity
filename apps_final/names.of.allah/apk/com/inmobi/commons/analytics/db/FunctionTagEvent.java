package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionTagEvent
  extends AnalyticsFunctions
{
  private Context a;
  private String b;
  private Map<String, String> c;
  
  public FunctionTagEvent(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    a = paramContext;
    b = paramString;
    c = paramMap;
  }
  
  private AnalyticsEvent a()
  {
    if (SessionInfo.getSessionId(a) != null)
    {
      AnalyticsEvent localAnalyticsEvent = new AnalyticsEvent("ce");
      localAnalyticsEvent.setEventCustomName(b);
      if (c != null) {
        localAnalyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(c));
      }
      localAnalyticsEvent.setEventSessionId(SessionInfo.getSessionId(a));
      localAnalyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(a));
      localAnalyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000L);
      insertInDatabase(localAnalyticsEvent);
      return localAnalyticsEvent;
    }
    printWarning("Please call startSession before calling trackEvent");
    return null;
  }
  
  public AnalyticsEvent processFunction()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionTagEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
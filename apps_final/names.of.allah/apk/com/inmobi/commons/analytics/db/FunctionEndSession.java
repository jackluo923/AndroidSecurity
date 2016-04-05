package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionEndSession
  extends AnalyticsFunctions
{
  private Context a;
  private Map<String, String> b;
  
  public FunctionEndSession(Context paramContext, Map<String, String> paramMap)
  {
    a = paramContext;
    b = paramMap;
  }
  
  private AnalyticsEvent a()
  {
    if (SessionInfo.getSessionId(a) != null)
    {
      AnalyticsEvent localAnalyticsEvent = new AnalyticsEvent("es");
      localAnalyticsEvent.setEventSessionId(SessionInfo.getSessionId(a));
      localAnalyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(a));
      localAnalyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000L);
      SessionInfo.removeSessionId(a);
      if (b != null) {
        localAnalyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(b));
      }
      insertInDatabase(localAnalyticsEvent);
      return localAnalyticsEvent;
    }
    return null;
  }
  
  public AnalyticsEvent processFunction()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionEndSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
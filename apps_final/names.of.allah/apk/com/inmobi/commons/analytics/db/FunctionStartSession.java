package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionStartSession
  extends AnalyticsFunctions
{
  private Context a;
  private String b;
  private Map<String, String> c;
  
  public FunctionStartSession(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    a = paramContext;
    b = paramString;
    c = paramMap;
  }
  
  private AnalyticsEvent a()
  {
    if (SessionInfo.getSessionId(a) == null)
    {
      SessionInfo.storeAppId(a, b);
      SessionInfo.storeSessionId(a);
      SessionInfo.storeFirstTime(a);
      AnalyticsEvent localAnalyticsEvent = new AnalyticsEvent("ss");
      if (c != null) {
        localAnalyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(c));
      }
      localAnalyticsEvent.setEventSessionId(SessionInfo.getSessionId(a));
      localAnalyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(a));
      localAnalyticsEvent.setEventTimeStamp(SessionInfo.getSessionTime(a));
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
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionStartSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
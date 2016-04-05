package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionLevelBegin
  extends AnalyticsFunctions
{
  private Context a;
  private Map<String, String> b;
  private int c;
  private String d;
  
  public FunctionLevelBegin(Context paramContext, int paramInt, String paramString, Map<String, String> paramMap)
  {
    a = paramContext;
    b = paramMap;
    c = paramInt;
    d = paramString;
  }
  
  private AnalyticsEvent a()
  {
    if (SessionInfo.getSessionId(a) != null)
    {
      AnalyticsEvent localAnalyticsEvent = new AnalyticsEvent("lb");
      localAnalyticsEvent.setEventLevelId(Integer.toString(c));
      localAnalyticsEvent.setEventLevelName(d);
      if (b != null) {
        localAnalyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(b));
      }
      localAnalyticsEvent.setEventSessionId(SessionInfo.getSessionId(a));
      localAnalyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(a));
      localAnalyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000L);
      insertInDatabase(localAnalyticsEvent);
      return localAnalyticsEvent;
    }
    return null;
  }
  
  protected Map<String, String> getLbMap()
  {
    return b;
  }
  
  protected int getLevelId()
  {
    return c;
  }
  
  protected String getLevelName()
  {
    return d;
  }
  
  public AnalyticsEvent processFunction()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionLevelBegin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
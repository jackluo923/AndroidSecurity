package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionLevelEnd
  extends FunctionLevelBegin
{
  private AnalyticsEventsWrapper.IMSectionStatus a;
  private Context b;
  
  public FunctionLevelEnd(Context paramContext, int paramInt, String paramString, AnalyticsEventsWrapper.IMSectionStatus paramIMSectionStatus, Map<String, String> paramMap)
  {
    super(paramContext, paramInt, paramString, paramMap);
    b = paramContext;
    a = paramIMSectionStatus;
  }
  
  private AnalyticsEvent a()
  {
    if (SessionInfo.getSessionId(b) != null)
    {
      AnalyticsEvent localAnalyticsEvent = new AnalyticsEvent("le");
      localAnalyticsEvent.setEventLevelId(Integer.toString(getLevelId()));
      localAnalyticsEvent.setEventLevelName(getLevelName());
      if (getLbMap() != null) {
        localAnalyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(getLbMap()));
      }
      localAnalyticsEvent.setEventLevelStatus("1");
      localAnalyticsEvent.setEventSessionId(SessionInfo.getSessionId(b));
      localAnalyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(b));
      localAnalyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000L);
      insertInDatabase(localAnalyticsEvent);
      return localAnalyticsEvent;
    }
    printWarning("Please call startSession before calling levelEnd");
    return null;
  }
  
  protected AnalyticsEventsWrapper.IMSectionStatus getLevelStatus()
  {
    return a;
  }
  
  public AnalyticsEvent processFunction()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionLevelEnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
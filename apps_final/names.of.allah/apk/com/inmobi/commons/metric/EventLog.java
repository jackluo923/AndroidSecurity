package com.inmobi.commons.metric;

import com.inmobi.commons.internal.Log;
import org.json.JSONObject;

public class EventLog
{
  private EventType a;
  private JSONObject b;
  
  public EventLog(EventType paramEventType, JSONObject paramJSONObject)
  {
    a = paramEventType;
    b = paramJSONObject;
  }
  
  public String toString()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("t", a.getValue());
      localJSONObject.put("v", b);
      return localJSONObject.toString();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-4.4.1", "Unable to log json.", localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.EventLog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
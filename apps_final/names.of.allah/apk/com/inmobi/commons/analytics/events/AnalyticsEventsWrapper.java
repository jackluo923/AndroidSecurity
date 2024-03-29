package com.inmobi.commons.analytics.events;

import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsEventsQueue;
import com.inmobi.commons.analytics.db.FunctionEndSession;
import com.inmobi.commons.analytics.db.FunctionLevelBegin;
import com.inmobi.commons.analytics.db.FunctionLevelEnd;
import com.inmobi.commons.analytics.db.FunctionStartSession;
import com.inmobi.commons.analytics.db.FunctionTagEvent;
import com.inmobi.commons.analytics.db.FunctionTagTransaction;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;

public final class AnalyticsEventsWrapper
{
  private static AnalyticsEventsWrapper a;
  private static boolean c = false;
  private AnalyticsEventsQueue b;
  
  private void a(String paramString)
  {
    Log.debug("[InMobi]-[Analytics]-4.4.1", "IllegalArgumentException", new IllegalArgumentException(paramString));
  }
  
  private boolean a()
  {
    if ((InternalSDKUtil.getContext() != null) && (SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null)) {
      startSession(InMobi.getAppId(), null);
    }
    while (SessionInfo.getSessionId(InternalSDKUtil.getContext()) != null) {
      return true;
    }
    Log.internal("[InMobi]-[Analytics]-4.4.1", "Please call InMobi.initialize or startSession before calling any events API");
    return false;
  }
  
  public static AnalyticsEventsWrapper getInstance()
  {
    try
    {
      if (AnalyticsUtils.getWebviewUserAgent() == null) {
        AnalyticsUtils.setWebviewUserAgent(InternalSDKUtil.getUserAgent(InternalSDKUtil.getContext()));
      }
      if (a == null)
      {
        a = new AnalyticsEventsWrapper();
        AnalyticsUtils.setStartHandle(false);
        AnalyticsNetworkManager.startInstance();
      }
      ab = AnalyticsEventsQueue.getInstance();
      AnalyticsEventsWrapper localAnalyticsEventsWrapper = a;
      return localAnalyticsEventsWrapper;
    }
    finally {}
  }
  
  public static boolean isEventsUser()
  {
    return c;
  }
  
  public static void setIsEventsUser()
  {
    c = true;
  }
  
  public final void beginSection(int paramInt, String paramString, Map<String, String> paramMap)
  {
    if (paramString == null) {
      a("arguments cannot be null");
    }
    for (;;)
    {
      return;
      try
      {
        if (a())
        {
          paramString = new FunctionLevelBegin(InternalSDKUtil.getContext(), paramInt, paramString, paramMap);
          b.addElement(paramString);
          b.processFunctions();
          return;
        }
      }
      catch (Exception paramString)
      {
        Log.internal("[InMobi]-[Analytics]-4.4.1", "Begin Section Exception", paramString);
      }
    }
  }
  
  public final void endSection(int paramInt, String paramString, Map<String, String> paramMap)
  {
    if (paramString == null) {
      a("arguments cannot be null");
    }
    for (;;)
    {
      return;
      try
      {
        if (a())
        {
          paramString = new FunctionLevelEnd(InternalSDKUtil.getContext(), paramInt, paramString, null, paramMap);
          b.addElement(paramString);
          b.processFunctions();
          return;
        }
      }
      catch (Exception paramString)
      {
        Log.internal("[InMobi]-[Analytics]-4.4.1", "End Section Exception", paramString);
      }
    }
  }
  
  public final void endSession(Map<String, String> paramMap)
  {
    try
    {
      paramMap = new FunctionEndSession(InternalSDKUtil.getContext(), paramMap);
      b.addElement(paramMap);
      b.processFunctions();
      return;
    }
    catch (Exception paramMap)
    {
      Log.internal("[InMobi]-[Analytics]-4.4.1", "End Session Exception", paramMap);
    }
  }
  
  public final void startSession(String paramString, Map<String, String> paramMap)
  {
    if ((paramString == null) || (paramString.trim().equals("")))
    {
      a("appid cannot be null or empty");
      return;
    }
    try
    {
      paramString = new FunctionStartSession(InternalSDKUtil.getContext(), paramString, paramMap);
      b.addElement(paramString);
      b.processFunctions();
      return;
    }
    catch (Exception paramString)
    {
      Log.internal("[InMobi]-[Analytics]-4.4.1", "Init exception", paramString);
    }
  }
  
  public final void tagEvent(String paramString, Map<String, String> paramMap)
  {
    if ((paramString == null) || (paramString.trim().equals(""))) {
      a("arguments cannot be null or empty");
    }
    for (;;)
    {
      return;
      try
      {
        if (a())
        {
          paramString = new FunctionTagEvent(InternalSDKUtil.getContext(), paramString, paramMap);
          b.addElement(paramString);
          b.processFunctions();
          return;
        }
      }
      catch (Exception paramString)
      {
        Log.internal("[InMobi]-[Analytics]-4.4.1", "Tag Event Exception", paramString);
      }
    }
  }
  
  public final void tagTransactionManually(Intent paramIntent, Bundle paramBundle)
  {
    if (paramIntent == null) {
      a("transaction intent cannot be null or empty");
    }
    for (;;)
    {
      return;
      try
      {
        if (a())
        {
          paramIntent = new FunctionTagTransaction(InternalSDKUtil.getContext(), paramIntent, paramBundle);
          b.addElement(paramIntent);
          b.processFunctions();
          return;
        }
      }
      catch (Exception paramIntent)
      {
        Log.internal("[InMobi]-[Analytics]-4.4.1", "Tag Transaction Manually Exception", paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.events.AnalyticsEventsWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
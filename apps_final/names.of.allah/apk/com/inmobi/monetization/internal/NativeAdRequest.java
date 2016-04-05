package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NativeConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.RequestBuilder;
import com.inmobi.commons.uid.UID;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public class NativeAdRequest
  extends RequestBuilder
{
  private String a;
  private String b = null;
  private String c = null;
  private String d = null;
  private HashMap<String, String> e = null;
  
  public NativeAdRequest(String paramString)
  {
    try
    {
      AppInfo.setAppId(paramString);
      a = paramString;
      return;
    }
    catch (Exception paramString)
    {
      Log.internal("[InMobi]-[Monetization]", "Failed to init Native Ad request", paramString);
    }
  }
  
  public String buildPostBody()
  {
    return super.buildPostBody();
  }
  
  public String getAdFormatPostBody()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("format=native");
    localStringBuilder.append("&mk-ads=" + Initializer.getConfigParams().getNativeSdkConfigParams().getmFetchLimit());
    return localStringBuilder.toString();
  }
  
  public String getAppId()
  {
    return a;
  }
  
  protected String getPublisherPostBody()
  {
    Object localObject1 = new StringBuilder();
    if (e != null)
    {
      localObject2 = e.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append("&").append(getURLEncoded(((String)localEntry.getKey()).toString())).append("=").append(getURLEncoded(((String)localEntry.getValue()).toString()));
      }
    }
    if ((c != null) && (d != null)) {
      ((StringBuilder)localObject1).append("&").append(getURLEncoded(c)).append("=").append(getURLEncoded(d));
    }
    if (b != null)
    {
      ((StringBuilder)localObject1).append("&p-keywords=");
      ((StringBuilder)localObject1).append(getURLEncoded(b));
    }
    Object localObject2 = ((StringBuilder)localObject1).toString();
    localObject1 = localObject2;
    try
    {
      if (((String)localObject2).charAt(0) == '&') {
        localObject1 = ((String)localObject2).substring(1);
      }
      return (String)localObject1;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException);
    }
    return (String)localObject2;
  }
  
  public String getUidMapPostBody()
  {
    String str = null;
    Object localObject3 = new HashMap();
    try
    {
      localObject1 = AnalyticsInitializer.getConfigParams().getLTVId();
      if (localObject1 != null) {
        ((Map)localObject3).put("LTVID", localObject1);
      }
      localObject1 = Integer.toString(new Random().nextInt());
      localObject3 = Initializer.getConfigParams().getUID().getUidMapWitoutXOR(UserInfo.getInstance().getDeviceIDMask(), (String)localObject1, (Map)localObject3);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("u-id-adt=");
      if (InternalSDKUtil.isLimitAdTrackingEnabled())
      {
        localStringBuilder.append(1);
        localObject1 = str;
        if (localObject3 != null)
        {
          localStringBuilder.append("&u-id-map=");
          localStringBuilder.append(getURLEncoded((String)localObject3));
          str = localStringBuilder.toString();
          localObject1 = str;
        }
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          Object localObject1;
          if (str.charAt(0) == '&') {
            localObject1 = str.substring(1);
          }
          return (String)localObject1;
        }
        catch (Exception localException2)
        {
          StringBuilder localStringBuilder;
          Object localObject2;
          Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException2);
        }
        localException1 = localException1;
        Log.internal("[InMobi]-4.4.1", "LTVID not available yet in configs");
        localObject2 = null;
        continue;
        localStringBuilder.append(0);
      }
    }
    return str;
  }
  
  public void setKeywords(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString))) {
      b = paramString;
    }
  }
  
  public void setRefTagParam(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (!"".equals(paramString1)) && (paramString2 != null) && (!"".equals(paramString2)))
    {
      c = paramString1;
      d = paramString2;
    }
  }
  
  public void setRequestParams(Map<String, String> paramMap)
  {
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      if (e == null) {
        e = new HashMap();
      }
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        e.put(str, paramMap.get(str));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.NativeAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
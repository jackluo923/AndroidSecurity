package com.inmobi.androidsdk.impl.net;

import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import java.io.IOException;
import java.net.SocketTimeoutException;

class RequestResponseManager$b
  extends Thread
{
  RequestResponseManager$b(RequestResponseManager paramRequestResponseManager, UserInfo paramUserInfo, String paramString, RequestResponseManager.ActionType paramActionType, HttpRequestCallback paramHttpRequestCallback) {}
  
  public void run()
  {
    Object localObject = null;
    try
    {
      WifiInfo localWifiInfo = IceDataCollector.getConnectedWifiInfo(a.getApplicationContext());
      localObject = localWifiInfo;
      return;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Ad Serving URL: " + b);
          localObject = HttpRequestBuilder.buildPostBody(a, (WifiInfo)localObject, c);
          Log.debug("[InMobi]-[Network]-4.4.1", (String)localObject);
          RequestResponseManager.a(e, RequestResponseManager.a(e, b, a));
          RequestResponseManager.a(e, (String)localObject);
          localObject = RequestResponseManager.a(e, a);
          RequestResponseManager.a(e, 0, localObject, d);
          return;
        }
        catch (Exception localException1)
        {
          Log.debug("[InMobi]-[Network]-4.4.1", "Exception retrieving ad ", localException1);
          RequestResponseManager.a(e, 1, AdRequest.ErrorCode.INTERNAL_ERROR, d);
        }
        localException2 = localException2;
        Log.internal("[InMobi]-[Network]-4.4.1", "No wifi permissions set, unable to send wifi data");
      }
    }
    catch (AdException localAdException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception retrieving ad ", localAdException);
      RequestResponseManager.a(e, 1, localAdException, d);
      return;
    }
    catch (IOException localIOException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Exception retrieving ad ", localIOException);
      if ((localIOException instanceof SocketTimeoutException))
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "Server Timeout");
        RequestResponseManager.a(e, 1, AdRequest.ErrorCode.AD_FETCH_TIMEOUT, d);
        return;
      }
      RequestResponseManager.a(e, 1, AdRequest.ErrorCode.NETWORK_ERROR, d);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.RequestResponseManager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
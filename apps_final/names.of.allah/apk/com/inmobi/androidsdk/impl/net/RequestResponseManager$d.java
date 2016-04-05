package com.inmobi.androidsdk.impl.net;

import android.content.Context;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class RequestResponseManager$d
  implements Runnable
{
  RequestResponseManager$d(RequestResponseManager paramRequestResponseManager, Context paramContext, HttpRequestCallback paramHttpRequestCallback) {}
  
  public void run()
  {
    String str;
    int i;
    boolean bool1;
    boolean bool2;
    int j;
    try
    {
      for (;;)
      {
        if (RequestResponseManager.isSynced.get()) {
          break label622;
        }
        RequestResponseManager.isSynced.set(true);
        if ((RequestResponseManager.mNetworkQueue == null) || (RequestResponseManager.mNetworkQueue.isEmpty()))
        {
          if ((RequestResponseManager.mDBWriterQueue == null) && (RequestResponseManager.mDBWriterQueue.isEmpty()))
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Click event list empty");
            c.deinit();
            return;
          }
          RequestResponseManager.mNetworkQueue.addAll(RequestResponseManager.mDBWriterQueue);
          RequestResponseManager.mDBWriterQueue.clear();
        }
        try
        {
          if (!RequestResponseManager.mNetworkQueue.isEmpty())
          {
            ClickData localClickData = (ClickData)RequestResponseManager.mNetworkQueue.remove(0);
            str = localClickData.getClickUrl();
            i = localClickData.getRetryCount();
            bool1 = localClickData.isPingWv();
            bool2 = localClickData.isFollowRedirects();
            j = Initializer.getConfigParams().getImai().getRetryInterval();
            if (!InternalSDKUtil.checkNetworkAvailibility(a))
            {
              Log.internal("[InMobi]-[Network]-4.4.1", "Cannot process click. Network Not available");
              if (i > 1) {
                RequestResponseManager.mDBWriterQueue.add(localClickData);
              }
              if (b != null) {
                b.notifyResult(1, null);
              }
              c.deinit();
              return;
            }
          }
        }
        catch (Exception localException1)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Exception pinging click in background", localException1);
          c.deinit();
          return;
        }
      }
      k = Initializer.getConfigParams().getImai().getMaxRetry();
    }
    catch (Exception localException2)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception ping to server ", localException2);
      return;
    }
    int k;
    if ((!RequestResponseManager.a().get()) && (i < k)) {
      Log.internal("[InMobi]-[Network]-4.4.1", "Retrying to ping in background after " + j / 1000 + " secs");
    }
    for (;;)
    {
      synchronized (RequestResponseManager.a)
      {
        try
        {
          RequestResponseManager.a.wait(j);
          Log.internal("[InMobi]-[Network]-4.4.1", "Processing click in background: " + str);
          if (!bool1) {
            break label482;
          }
          if (c.processClickUrlInWebview(str))
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Ping in webview successful: " + str);
            if (b != null) {
              b.notifyResult(0, null);
            }
            if (RequestResponseManager.mDBWriterQueue.size() <= Initializer.getConfigParams().getImai().getmDefaultEventsBatch()) {
              break;
            }
            RequestResponseManager.mDBWriterQueue.saveClickEvents();
            RequestResponseManager.mDBWriterQueue.clear();
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Network thread wait failure", localInterruptedException);
          continue;
        }
      }
      ((ClickData)localObject).setRetryCount(i - 1);
      if (i > 1) {
        RequestResponseManager.mDBWriterQueue.add(localObject);
      }
      Log.internal("[InMobi]-[Network]-4.4.1", "Ping in webview failed: " + str);
      if (b != null)
      {
        b.notifyResult(1, null);
        continue;
        label482:
        if (c.processClickHttpClient(str, bool2))
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Ping successful: " + str);
          if (b != null) {
            b.notifyResult(0, null);
          }
        }
        else
        {
          ((ClickData)localObject).setRetryCount(i - 1);
          if (i > 1) {
            RequestResponseManager.mDBWriterQueue.add(localObject);
          }
          Log.internal("[InMobi]-[Network]-4.4.1", "Ping  failed: " + str);
          if (b != null) {
            b.notifyResult(1, null);
          }
          Log.internal("[InMobi]-[Network]-4.4.1", "Ping failed: " + str);
        }
      }
    }
    label622:
    c.deinit();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.RequestResponseManager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
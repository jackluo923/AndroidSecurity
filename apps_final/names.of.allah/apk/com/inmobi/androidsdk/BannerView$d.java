package com.inmobi.androidsdk;

import android.os.Handler;
import android.os.Message;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NetworkEventType;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

class BannerView$d
  extends Handler
{
  private final WeakReference<BannerView> a;
  
  public BannerView$d(BannerView paramBannerView)
  {
    a = new WeakReference(paramBannerView);
  }
  
  public void handleMessage(Message paramMessage)
  {
    localBannerView = (BannerView)a.get();
    if (localBannerView != null) {}
    try
    {
      int i = what;
      switch (i)
      {
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          JSONObject localJSONObject;
          localJSONObject.put("ad", BannerView.d(localBannerView));
          localJSONObject.put("t", l1);
          Initializer.getLogger().logEvent(new EventLog(NetworkEventType.FETCH_COMPLETE, localJSONObject));
          removeMessages(107);
          if (BannerView.e(localBannerView) != null) {
            BannerView.a(localBannerView, BannerView.e(localBannerView).replace("@__imm_aft@", l1));
          }
          BannerView.b(localBannerView, BannerView.e(localBannerView));
          continue;
          localException = localException;
          Log.internal("[InMobi]-[Network]-4.4.1", "Exception hanlde message adview", localException);
        }
        catch (JSONException localJSONException1)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
          continue;
        }
        removeMessages(107);
        BannerView.a(localBannerView, 101, (AdRequest.ErrorCode)obj);
        BannerView.a(localBannerView, false);
        continue;
        removeMessages(108);
        removeMessages(101);
        BannerView.a(localBannerView, 101, AdRequest.ErrorCode.INTERNAL_ERROR);
        continue;
        Object localObject;
        if (BannerView.c(localBannerView))
        {
          l1 = System.currentTimeMillis();
          l2 = BannerView.f(localBannerView);
          localObject = new JSONObject();
        }
        try
        {
          ((JSONObject)localObject).put("ad", BannerView.d(localBannerView));
          ((JSONObject)localObject).put("t", l1 - l2);
          Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_TIMEOUT, (JSONObject)localObject));
          removeMessages(111);
          removeMessages(101);
          BannerView.a(localBannerView, false);
          if (BannerView.g(localBannerView))
          {
            localObject = BannerView.h(localBannerView);
            BannerView.a(localBannerView, null);
            ((IMWebView)localObject).cancelLoad();
            ((IMWebView)localObject).stopLoading();
            ((IMWebView)localObject).deinit();
            BannerView.a(localBannerView, 101, AdRequest.ErrorCode.AD_RENDERING_TIMEOUT);
          }
        }
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
            continue;
            localObject = BannerView.i(localBannerView);
            BannerView.b(localBannerView, null);
          }
        }
        removeMessages(109);
        removeMessages(110);
        BannerView.j(localBannerView).doCancel();
        long l1 = System.currentTimeMillis();
        long l2 = BannerView.b(localBannerView);
        if (BannerView.c(localBannerView)) {
          localObject = new JSONObject();
        }
        try
        {
          ((JSONObject)localObject).put("t", l1 - l2);
          ((JSONObject)localObject).put("m", 1);
          Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, (JSONObject)localObject));
          BannerView.a(localBannerView, false);
          BannerView.a(localBannerView, 101, AdRequest.ErrorCode.AD_FETCH_TIMEOUT);
        }
        catch (JSONException localJSONException3)
        {
          for (;;)
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Error creating metric logs for error at " + System.currentTimeMillis());
          }
        }
        if (BannerView.c(localBannerView))
        {
          l1 = System.currentTimeMillis();
          l2 = BannerView.b(localBannerView);
          localObject = new JSONObject();
        }
        try
        {
          ((JSONObject)localObject).put("ad", BannerView.d(localBannerView));
          ((JSONObject)localObject).put("t", l1 - l2);
          Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_COMPLETE, (JSONObject)localObject));
          removeMessages(108);
          if (BannerView.k(localBannerView))
          {
            BannerView.l(localBannerView);
            BannerView.b(localBannerView, false);
          }
        }
        catch (JSONException localJSONException4)
        {
          for (;;)
          {
            Log.internal("[InMobi]-[Network]-4.4.1", "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
          }
          if (BannerView.m(localBannerView) == AnimationType.ANIMATION_OFF)
          {
            BannerView.l(localBannerView);
            continue;
          }
          BannerView.n(localBannerView).a(BannerView.m(localBannerView));
        }
        continue;
        BannerView.c(localBannerView, false);
        continue;
        BannerView.a(localBannerView, 103, null);
        continue;
        BannerView.a(localBannerView, 102, null);
        continue;
        BannerView.a(localBannerView, 104, null);
      }
    }
    super.handleMessage(paramMessage);
    return;
    l1 = System.currentTimeMillis() - BannerView.b(localBannerView);
    if (BannerView.c(localBannerView)) {
      localJSONObject = new JSONObject();
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.BannerView.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
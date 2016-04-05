package com.inmobi.commons.analytics.iat.impl.net;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

public class AdTrackerWebViewLoader$MyWebViewClient
  extends WebViewClient
{
  protected AdTrackerWebViewLoader$MyWebViewClient(AdTrackerWebViewLoader paramAdTrackerWebViewLoader) {}
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        if (AdTrackerWebViewLoader.b().compareAndSet(true, false)) {
          AdTrackerNetworkInterface.setWebviewUploadStatus(false);
        }
      }
      catch (Exception localException)
      {
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Exception onReceived Error", localException);
        continue;
      }
      synchronized (AdTrackerNetworkInterface.getNetworkThread())
      {
        AdTrackerNetworkInterface.getNetworkThread().notify();
        AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, AdTrackerWebViewLoader.b(a), 0, 0L, paramInt, null);
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Webview Received Error");
        super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
        return;
      }
    }
  }
  
  @TargetApi(8)
  public void onReceivedSslError(WebView arg1, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    Log.internal("[InMobi]-[AdTracker]-4.4.1", "SSL Error. Proceeding" + paramSslError);
    for (;;)
    {
      try
      {
        if (AdTrackerWebViewLoader.b().compareAndSet(true, false)) {
          AdTrackerNetworkInterface.setWebviewUploadStatus(false);
        }
      }
      catch (Exception ???)
      {
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Exception onReceived SSL Error", ???);
        continue;
      }
      synchronized (AdTrackerNetworkInterface.getNetworkThread())
      {
        AdTrackerNetworkInterface.getNetworkThread().notify();
        AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, AdTrackerWebViewLoader.b(a), 0, 0L, paramSslError.getPrimaryError(), null);
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Webview Received SSL Error");
        paramSslErrorHandler.proceed();
        return;
      }
    }
  }
  
  /* Error */
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:b	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   3: iconst_1
    //   4: iconst_0
    //   5: invokevirtual 30	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   8: ifeq +117 -> 125
    //   11: aload_0
    //   12: getfield 10	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient:a	Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    //   15: invokestatic 121	java/lang/System:currentTimeMillis	()J
    //   18: aload_0
    //   19: getfield 10	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient:a	Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    //   22: invokestatic 124	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J
    //   25: lsub
    //   26: invokestatic 127	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J
    //   29: pop2
    //   30: aload_2
    //   31: ldc -127
    //   33: invokevirtual 135	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   36: ifeq +75 -> 111
    //   39: aload_2
    //   40: bipush 7
    //   42: invokevirtual 139	java/lang/String:substring	(I)Ljava/lang/String;
    //   45: astore_3
    //   46: aload_0
    //   47: getfield 10	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient:a	Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    //   50: aload_3
    //   51: invokestatic 142	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;
    //   54: astore_3
    //   55: aload_3
    //   56: ifnull +108 -> 164
    //   59: invokestatic 148	com/inmobi/commons/internal/InternalSDKUtil:getContext	()Landroid/content/Context;
    //   62: ldc -106
    //   64: ldc -104
    //   66: aload_3
    //   67: invokestatic 157	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;)I
    //   70: invokestatic 161	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   73: invokestatic 167	com/inmobi/commons/internal/FileOperations:setPreferences	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    //   76: pop
    //   77: sipush 5000
    //   80: aload_3
    //   81: invokestatic 157	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;)I
    //   84: if_icmpeq +48 -> 132
    //   87: iconst_0
    //   88: invokestatic 36	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:setWebviewUploadStatus	(Z)V
    //   91: getstatic 51	com/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType:GOAL_FAILURE	Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;
    //   94: aload_0
    //   95: getfield 10	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient:a	Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    //   98: invokestatic 54	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:b	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    //   101: iconst_0
    //   102: lconst_0
    //   103: aload_3
    //   104: invokestatic 157	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e:a	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;)I
    //   107: aconst_null
    //   108: invokestatic 60	com/inmobi/commons/analytics/iat/impl/AdTrackerUtils:reportMetric	(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V
    //   111: invokestatic 40	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:getNetworkThread	()Ljava/lang/Thread;
    //   114: astore_3
    //   115: aload_3
    //   116: monitorenter
    //   117: invokestatic 40	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:getNetworkThread	()Ljava/lang/Thread;
    //   120: invokevirtual 45	java/lang/Object:notify	()V
    //   123: aload_3
    //   124: monitorexit
    //   125: aload_1
    //   126: aload_2
    //   127: invokevirtual 172	android/webkit/WebView:loadUrl	(Ljava/lang/String;)V
    //   130: iconst_1
    //   131: ireturn
    //   132: aload_0
    //   133: getfield 10	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient:a	Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    //   136: aload_3
    //   137: invokestatic 175	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e:b	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;)Ljava/lang/String;
    //   140: invokestatic 178	com/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader:b	(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Z
    //   143: ifeq +21 -> 164
    //   146: iconst_1
    //   147: invokestatic 36	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:setWebviewUploadStatus	(Z)V
    //   150: goto -39 -> 111
    //   153: astore_1
    //   154: ldc 62
    //   156: ldc -76
    //   158: aload_1
    //   159: invokestatic 77	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   162: iconst_1
    //   163: ireturn
    //   164: iconst_0
    //   165: invokestatic 36	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:setWebviewUploadStatus	(Z)V
    //   168: goto -57 -> 111
    //   171: astore_1
    //   172: aload_3
    //   173: monitorexit
    //   174: aload_1
    //   175: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	MyWebViewClient
    //   0	176	1	paramWebView	WebView
    //   0	176	2	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	55	153	java/lang/Exception
    //   59	111	153	java/lang/Exception
    //   111	117	153	java/lang/Exception
    //   125	130	153	java/lang/Exception
    //   132	150	153	java/lang/Exception
    //   164	168	153	java/lang/Exception
    //   172	176	153	java/lang/Exception
    //   117	125	171	finally
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.MyWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
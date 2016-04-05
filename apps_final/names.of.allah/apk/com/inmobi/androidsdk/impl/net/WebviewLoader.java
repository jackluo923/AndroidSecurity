package com.inmobi.androidsdk.impl.net;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class WebviewLoader
{
  static boolean a = false;
  static AtomicBoolean b = null;
  private WebView c = null;
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public WebviewLoader(Context paramContext)
  {
    RequestResponseManager.b.post(new WebviewLoader.c(this, paramContext));
  }
  
  public void deinit(int paramInt)
  {
    RequestResponseManager.b.postDelayed(new WebviewLoader.d(this), paramInt);
  }
  
  public void loadInWebview(String paramString, HashMap<String, String> paramHashMap)
  {
    RequestResponseManager.b.post(new WebviewLoader.b(this, paramString, paramHashMap));
  }
  
  public void stopLoading()
  {
    RequestResponseManager.b.post(new WebviewLoader.a(this));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
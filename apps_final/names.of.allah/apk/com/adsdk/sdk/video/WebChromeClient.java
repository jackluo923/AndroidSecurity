package com.adsdk.sdk.video;

import android.app.Activity;
import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;
import com.adsdk.sdk.Log;

public class WebChromeClient
  extends android.webkit.WebChromeClient
{
  private RichMediaActivity mActivity;
  
  public WebChromeClient(Activity paramActivity)
  {
    if ((paramActivity instanceof RichMediaActivity)) {
      mActivity = ((RichMediaActivity)paramActivity);
    }
  }
  
  public void onHideCustomView()
  {
    Log.d("WebChromeClient onHideCustomView");
    if (mActivity == null)
    {
      super.onHideCustomView();
      return;
    }
    mActivity.onHideCustomView();
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    Log.d("WebChromeClient onShowCustomView");
    if (mActivity == null)
    {
      super.onShowCustomView(paramView, paramCustomViewCallback);
      return;
    }
    mActivity.onShowCustomView(paramView, paramCustomViewCallback);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.WebChromeClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.adsdk.sdk.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.net.Uri;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.adsdk.sdk.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@SuppressLint({"ViewConstructor"})
public class WebFrame
  extends FrameLayout
{
  private static Field mWebView_LAYER_TYPE_SOFTWARE;
  private static Method mWebView_SetLayerType;
  private boolean enableZoom = true;
  private Activity mActivity;
  private ImageView mExitButton;
  private WebView mWebView;
  private WebViewClient mWebViewClient;
  
  static {}
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public WebFrame(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramActivity);
    initCompatibility();
    mActivity = paramActivity;
    mWebView = new WebView(paramActivity);
    mWebView.setVerticalScrollBarEnabled(paramBoolean2);
    mWebView.setHorizontalScrollBarEnabled(paramBoolean2);
    mWebView.setBackgroundColor(0);
    setLayer(mWebView);
    Object localObject = mWebView.getSettings();
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setSaveFormData(false);
    ((WebSettings)localObject).setJavaScriptEnabled(true);
    ((WebSettings)localObject).setPluginState(WebSettings.PluginState.ON);
    ((WebSettings)localObject).setSupportZoom(enableZoom);
    ((WebSettings)localObject).setBuiltInZoomControls(enableZoom);
    mWebViewClient = new WebViewClient(mActivity, paramBoolean1);
    mWebView.setWebViewClient(mWebViewClient);
    if (paramBoolean3)
    {
      localObject = new ImageView(paramActivity);
      ((ImageView)localObject).setBackgroundColor(0);
      addView((View)localObject, new FrameLayout.LayoutParams(-1, -1, 17));
      addView(mWebView, new FrameLayout.LayoutParams(-1, -1, 17));
      mExitButton = new ImageView(paramActivity);
      mExitButton.setAdjustViewBounds(false);
      mExitButton.setOnClickListener(new WebFrame.1(this, paramActivity));
      int i = (int)TypedValue.applyDimension(1, 35.0F, getResources().getDisplayMetrics());
      mExitButton.setImageDrawable(ResourceManager.getStaticResource(paramActivity, -18));
      paramActivity = new FrameLayout.LayoutParams(i, i, 53);
      i = (int)TypedValue.applyDimension(1, 6.0F, getResources().getDisplayMetrics());
      topMargin = i;
      rightMargin = i;
      addView(mExitButton, paramActivity);
      return;
    }
    addView(mWebView, new FrameLayout.LayoutParams(-1, -1, 17));
  }
  
  private String getUserAgentString()
  {
    return mWebView.getSettings().getUserAgentString();
  }
  
  private static void initCompatibility()
  {
    for (;;)
    {
      int j;
      int i;
      try
      {
        arrayOfMethod = WebView.class.getMethods();
        j = arrayOfMethod.length;
        i = 0;
      }
      catch (SecurityException localSecurityException)
      {
        Method[] arrayOfMethod;
        Method localMethod;
        Log.v("SecurityException");
        return;
        i += 1;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.v("NoSuchFieldException");
        return;
      }
      Log.v("set layer " + mWebView_SetLayerType);
      mWebView_LAYER_TYPE_SOFTWARE = WebView.class.getField("LAYER_TYPE_SOFTWARE");
      Log.v("set1 layer " + mWebView_LAYER_TYPE_SOFTWARE);
      return;
      localMethod = arrayOfMethod[i];
      if (localMethod.getName().equals("setLayerType")) {
        mWebView_SetLayerType = localMethod;
      } else if (i < j) {}
    }
  }
  
  private static void setLayer(WebView paramWebView)
  {
    if ((mWebView_SetLayerType != null) && (mWebView_LAYER_TYPE_SOFTWARE != null)) {
      try
      {
        Log.v("Set Layer is supported");
        mWebView_SetLayerType.invoke(paramWebView, new Object[] { Integer.valueOf(mWebView_LAYER_TYPE_SOFTWARE.getInt(WebView.class)), null });
        return;
      }
      catch (InvocationTargetException paramWebView)
      {
        Log.v("Set InvocationTargetException");
        return;
      }
      catch (IllegalArgumentException paramWebView)
      {
        Log.v("Set IllegalArgumentException");
        return;
      }
      catch (IllegalAccessException paramWebView)
      {
        Log.v("Set IllegalAccessException");
        return;
      }
    }
    Log.v("Set Layer is not supported");
  }
  
  public WebView getWebView()
  {
    return mWebView;
  }
  
  public boolean isEnableZoom()
  {
    return enableZoom;
  }
  
  public void loadUrl(String paramString)
  {
    new WebFrame.LoadUrlTask(this).execute(new String[] { paramString });
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    onTouchEvent(paramMotionEvent);
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    super.setBackgroundColor(paramInt);
    mWebView.setBackgroundColor(paramInt);
  }
  
  public void setEnableZoom(boolean paramBoolean)
  {
    enableZoom = paramBoolean;
    WebSettings localWebSettings = mWebView.getSettings();
    localWebSettings.setSupportZoom(paramBoolean);
    localWebSettings.setBuiltInZoomControls(paramBoolean);
  }
  
  public void setMarkup(String paramString)
  {
    paramString = Uri.encode(paramString);
    mWebViewClient.setAllowedUrl(null);
    mWebView.loadData(paramString, "text/html", "UTF-8");
  }
  
  public void setOnPageLoadedListener(WebViewClient.OnPageLoadedListener paramOnPageLoadedListener)
  {
    mWebViewClient.setOnPageLoadedListener(paramOnPageLoadedListener);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.WebFrame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
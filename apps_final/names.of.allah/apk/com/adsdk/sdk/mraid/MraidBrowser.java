package com.adsdk.sdk.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class MraidBrowser
  extends Activity
{
  public static final int INNER_LAYOUT_ID = 1;
  public static final String URL_EXTRA = "extra_url";
  private ImageButton mBackButton;
  private ImageButton mCloseButton;
  private ImageButton mForwardButton;
  private ImageButton mRefreshButton;
  private WebView mWebView;
  
  private void enableCookies()
  {
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
  }
  
  private ImageButton getButton(Drawable paramDrawable)
  {
    ImageButton localImageButton = new ImageButton(this);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0F);
    gravity = 16;
    localImageButton.setLayoutParams(localLayoutParams);
    localImageButton.setImageDrawable(paramDrawable);
    return localImageButton;
  }
  
  private View getMraidBrowserView()
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    localLinearLayout.setOrientation(1);
    RelativeLayout localRelativeLayout = new RelativeLayout(this);
    localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    localLinearLayout.addView(localRelativeLayout);
    Object localObject = new LinearLayout(this);
    ((LinearLayout)localObject).setId(1);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams.addRule(12);
    ((LinearLayout)localObject).setLayoutParams(localLayoutParams);
    ((LinearLayout)localObject).setBackgroundDrawable(Drawables.BACKGROUND.decodeImage(this));
    localRelativeLayout.addView((View)localObject);
    mBackButton = getButton(Drawables.LEFT_ARROW.decodeImage(this));
    mForwardButton = getButton(Drawables.RIGHT_ARROW.decodeImage(this));
    mRefreshButton = getButton(Drawables.REFRESH.decodeImage(this));
    mCloseButton = getButton(Drawables.CLOSE.decodeImage(this));
    ((LinearLayout)localObject).addView(mBackButton);
    ((LinearLayout)localObject).addView(mForwardButton);
    ((LinearLayout)localObject).addView(mRefreshButton);
    ((LinearLayout)localObject).addView(mCloseButton);
    mWebView = new WebView(this);
    localObject = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject).addRule(2, 1);
    mWebView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localRelativeLayout.addView(mWebView);
    return localLinearLayout;
  }
  
  private void initializeButtons()
  {
    mBackButton.setBackgroundColor(0);
    mBackButton.setOnClickListener(new MraidBrowser.3(this));
    mForwardButton.setBackgroundColor(0);
    mForwardButton.setOnClickListener(new MraidBrowser.4(this));
    mRefreshButton.setBackgroundColor(0);
    mRefreshButton.setOnClickListener(new MraidBrowser.5(this));
    mCloseButton.setBackgroundColor(0);
    mCloseButton.setOnClickListener(new MraidBrowser.6(this));
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void initializeWebView(Intent paramIntent)
  {
    WebSettings localWebSettings = mWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setUseWideViewPort(true);
    mWebView.loadUrl(paramIntent.getStringExtra("extra_url"));
    mWebView.setWebViewClient(new MraidBrowser.1(this));
    mWebView.setWebChromeClient(new MraidBrowser.2(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(2);
    getWindow().setFeatureInt(2, -1);
    setContentView(getMraidBrowserView());
    initializeWebView(getIntent());
    initializeButtons();
    enableCookies();
  }
  
  protected void onPause()
  {
    super.onPause();
    CookieSyncManager.getInstance().stopSync();
  }
  
  protected void onResume()
  {
    super.onResume();
    CookieSyncManager.getInstance().startSync();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
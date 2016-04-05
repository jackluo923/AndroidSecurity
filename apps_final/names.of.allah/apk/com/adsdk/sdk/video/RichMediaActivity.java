package com.adsdk.sdk.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.VideoView;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.AdManager;
import com.adsdk.sdk.AdResponse;
import com.adsdk.sdk.Const;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.banner.BannerAdView;
import com.adsdk.sdk.mraid.MraidView;
import com.adsdk.sdk.mraid.MraidView.MraidListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.Vector;

public class RichMediaActivity
  extends Activity
{
  public static final int TYPE_BROWSER = 0;
  public static final int TYPE_INTERSTITIAL = 2;
  public static final int TYPE_UNKNOWN = -1;
  public static final int TYPE_VIDEO = 1;
  private AdResponse mAd;
  private boolean mCanClose;
  private Runnable mCheckProgressTask = new RichMediaActivity.5(this);
  private VideoView mCustomVideoView;
  private FrameLayout mCustomView;
  private WebChromeClient.CustomViewCallback mCustomViewCallback;
  private RichMediaActivity.ResourceHandler mHandler;
  protected boolean mInterstitialAutocloseReset;
  private FrameLayout mLoadingView;
  private MediaController mMediaController;
  View.OnClickListener mOnInterstitialSkipListener = new RichMediaActivity.16(this);
  SDKVideoView.OnTimeEventListener mOnVideoCanCloseEventListener = new RichMediaActivity.13(this);
  View.OnClickListener mOnVideoClickListener = new RichMediaActivity.7(this);
  MediaPlayer.OnCompletionListener mOnVideoCompletionListener = new RichMediaActivity.8(this);
  MediaPlayer.OnErrorListener mOnVideoErrorListener = new RichMediaActivity.3(this);
  MediaPlayer.OnInfoListener mOnVideoInfoListener = new RichMediaActivity.4(this);
  MediaController.OnPauseListener mOnVideoPauseListener = new RichMediaActivity.10(this);
  MediaPlayer.OnPreparedListener mOnVideoPreparedListener = new RichMediaActivity.6(this);
  MediaController.OnReplayListener mOnVideoReplayListener = new RichMediaActivity.15(this);
  View.OnClickListener mOnVideoSkipListener = new RichMediaActivity.14(this);
  SDKVideoView.OnStartListener mOnVideoStartListener = new RichMediaActivity.9(this);
  SDKVideoView.OnTimeEventListener mOnVideoTimeEventListener = new RichMediaActivity.12(this);
  MediaController.OnUnpauseListener mOnVideoUnpauseListener = new RichMediaActivity.11(this);
  private final View.OnClickListener mOverlayClickListener = new RichMediaActivity.2(this);
  private final SDKVideoView.OnTimeEventListener mOverlayShowListener = new RichMediaActivity.1(this);
  private WebFrame mOverlayView;
  private ResourceManager mResourceManager;
  private boolean mResult;
  private FrameLayout mRootLayout;
  private ImageView mSkipButton;
  protected int mTimeTest;
  private int mType;
  private VideoData mVideoData;
  private int mVideoHeight;
  private int mVideoLastPosition;
  private FrameLayout mVideoLayout;
  private Timer mVideoTimeoutTimer;
  private SDKVideoView mVideoView;
  private int mVideoWidth;
  private WebFrame mWebBrowserView;
  private int mWindowHeight;
  private int mWindowWidth;
  int marginArg = 8;
  DisplayMetrics metrics;
  int paddingArg = 5;
  int skipButtonSizeLand = 40;
  int skipButtonSizePort = 40;
  private Uri uri;
  
  private AdListener createLocalAdListener()
  {
    return new RichMediaActivity.17(this);
  }
  
  private MraidView.MraidListener createMraidListener()
  {
    return new RichMediaActivity.18(this);
  }
  
  private void initInterstitialFromBannerView()
  {
    int j = 320;
    FrameLayout localFrameLayout = new FrameLayout(this);
    Object localObject;
    if ((mAd.getType() == 1) || (mAd.getType() == 0))
    {
      float f = getResourcesgetDisplayMetricsdensity;
      if (mAd.isHorizontalOrientationRequested())
      {
        i = 480;
        localObject = new BannerAdView(this, mAd, i, j, false, createLocalAdListener());
        ((BannerAdView)localObject).setLayoutParams(new FrameLayout.LayoutParams((int)(i * f + 0.5F), (int)(j * f + 0.5F), 17));
        localFrameLayout.addView((View)localObject);
      }
    }
    else
    {
      if (mAd.getType() == 4)
      {
        localObject = new MraidView(this);
        localFrameLayout.addView((View)localObject, new FrameLayout.LayoutParams(-1, -1));
        ((MraidView)localObject).setMraidListener(createMraidListener());
        ((MraidView)localObject).loadHtmlData(mAd.getText());
      }
      mSkipButton = new ImageView(this);
      mSkipButton.setAdjustViewBounds(false);
      if (!mAd.isHorizontalOrientationRequested()) {
        break label338;
      }
    }
    label338:
    for (int i = (int)TypedValue.applyDimension(1, skipButtonSizeLand, getResources().getDisplayMetrics());; i = (int)TypedValue.applyDimension(1, skipButtonSizePort, getResources().getDisplayMetrics()))
    {
      localObject = new FrameLayout.LayoutParams(i, i, 53);
      i = (int)TypedValue.applyDimension(1, 8.0F, getResources().getDisplayMetrics());
      topMargin = i;
      rightMargin = i;
      mSkipButton.setImageDrawable(mResourceManager.getResource(this, -18));
      mSkipButton.setOnClickListener(mOnInterstitialSkipListener);
      mCanClose = true;
      mSkipButton.setVisibility(0);
      localFrameLayout.addView(mSkipButton, (ViewGroup.LayoutParams)localObject);
      mRootLayout.addView(localFrameLayout);
      return;
      i = 320;
      j = 480;
      break;
    }
  }
  
  private void initRootLayout()
  {
    mRootLayout = new FrameLayout(this);
    mRootLayout.setBackgroundColor(-16777216);
  }
  
  private void initVideoView()
  {
    mVideoData = mAd.getVideoData();
    setRequestedOrientation(mVideoData.orientation);
    int i;
    label108:
    label324:
    Object localObject;
    if (mVideoData.orientation == 0)
    {
      if (mWindowWidth < mWindowHeight)
      {
        i = mWindowWidth;
        mWindowWidth = mWindowHeight;
        mWindowHeight = i;
      }
      mVideoWidth = mVideoData.width;
      mVideoHeight = mVideoData.height;
      if (mVideoWidth > 0) {
        break label1061;
      }
      mVideoWidth = mWindowWidth;
      mVideoHeight = mWindowHeight;
      Log.d("Video size (" + mVideoWidth + "," + mVideoHeight + ")");
      mVideoLayout = new FrameLayout(this);
      mVideoView = new SDKVideoView(this, mVideoWidth, mVideoHeight, mVideoData.display);
      mVideoLayout.addView(mVideoView, new FrameLayout.LayoutParams(-1, -1, 17));
      if (mVideoData.showHtmlOverlay)
      {
        mOverlayView = new WebFrame(this, false, false, false);
        mOverlayView.setEnableZoom(false);
        mOverlayView.setOnClickListener(mOverlayClickListener);
        mOverlayView.setBackgroundColor(0);
        if (mVideoData.showHtmlOverlayAfter > 0)
        {
          mOverlayView.setVisibility(8);
          mVideoView.setOnTimeEventListener(mVideoData.showHtmlOverlayAfter, mOverlayShowListener);
        }
        if (mVideoData.htmlOverlayType != 0) {
          break label1140;
        }
        mOverlayView.loadUrl(mVideoData.htmlOverlayUrl);
        float f = getResourcesgetDisplayMetricsdensity;
        localObject = new FrameLayout.LayoutParams((int)(mVideoData.overlayWidth * f + 0.5F), (int)(f * mVideoData.overlayHeight + 0.5F));
        if ((!mVideoData.showBottomNavigationBar) || (!mVideoData.showTopNavigationBar)) {
          break label1157;
        }
        bottomMargin = ((int)(mWindowWidth * 0.11875D));
        topMargin = ((int)(mWindowWidth * 0.11875D));
        gravity = 17;
        label427:
        mVideoLayout.addView(mOverlayView, (ViewGroup.LayoutParams)localObject);
      }
      mMediaController = new MediaController(this, mVideoData);
      mVideoView.setMediaController(mMediaController);
      if (mVideoData.showNavigationBars) {
        mMediaController.toggle();
      }
      if (!mVideoData.pauseEvents.isEmpty()) {
        mMediaController.setOnPauseListener(mOnVideoPauseListener);
      }
      if (!mVideoData.resumeEvents.isEmpty()) {
        mMediaController.setOnUnpauseListener(mOnVideoUnpauseListener);
      }
      if (!mVideoData.replayEvents.isEmpty()) {
        mMediaController.setOnReplayListener(mOnVideoReplayListener);
      }
      mVideoLayout.addView(mMediaController, new FrameLayout.LayoutParams(-1, -1, 7));
      if (!mVideoData.showSkipButton) {
        break label1342;
      }
      mSkipButton = new ImageView(this);
      mSkipButton.setAdjustViewBounds(false);
      if (!mAd.isHorizontalOrientationRequested()) {
        break label1252;
      }
      i = (int)TypedValue.applyDimension(1, skipButtonSizeLand, getResources().getDisplayMetrics());
      label636:
      localObject = new FrameLayout.LayoutParams(i, i, 53);
      if (mVideoData.orientation != 1) {
        break label1274;
      }
      i = (int)TypedValue.applyDimension(1, 8.0F, getResources().getDisplayMetrics());
      topMargin = i;
      rightMargin = i;
      label690:
      if ((mVideoData.skipButtonImage == null) || (mVideoData.skipButtonImage.length() <= 0)) {
        break label1306;
      }
      mResourceManager.fetchResource(this, mVideoData.skipButtonImage, -18);
      label730:
      mSkipButton.setOnClickListener(mOnVideoSkipListener);
      if (mVideoData.showSkipButtonAfter <= 0) {
        break label1326;
      }
      mCanClose = false;
      mSkipButton.setVisibility(8);
      label765:
      mVideoLayout.addView(mSkipButton, (ViewGroup.LayoutParams)localObject);
      label777:
      if (mVideoData.showSkipButtonAfter > 0) {
        mVideoView.setOnTimeEventListener(mVideoData.showSkipButtonAfter, mOnVideoCanCloseEventListener);
      }
      localObject = new FrameLayout.LayoutParams(-2, -2, 17);
      mLoadingView = new FrameLayout(this);
      TextView localTextView = new TextView(this);
      localTextView.setText(Const.LOADING);
      mLoadingView.addView(localTextView, (ViewGroup.LayoutParams)localObject);
      mVideoLayout.addView(mLoadingView, new FrameLayout.LayoutParams(-1, -1, 17));
      if (mVideoData.videoClickThrough != null) {
        mVideoView.setOnClickListener(mOnVideoClickListener);
      }
      mVideoView.setOnPreparedListener(mOnVideoPreparedListener);
      mVideoView.setOnCompletionListener(mOnVideoCompletionListener);
      mVideoView.setOnErrorListener(mOnVideoErrorListener);
      mVideoView.setOnInfoListener(mOnVideoInfoListener);
      if (!mVideoData.startEvents.isEmpty()) {
        mVideoView.setOnStartListener(mOnVideoStartListener);
      }
      if (!mVideoData.timeTrackingEvents.isEmpty()) {
        localObject = mVideoData.timeTrackingEvents.keySet().iterator();
      }
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        mVideoLastPosition = 0;
        localObject = mVideoData.videoUrl;
        mVideoView.setVideoPath((String)localObject);
        return;
        if (mWindowHeight >= mWindowWidth) {
          break;
        }
        i = mWindowHeight;
        mWindowHeight = mWindowWidth;
        mWindowWidth = i;
        break;
        label1061:
        localObject = getResources().getDisplayMetrics();
        mVideoWidth = ((int)TypedValue.applyDimension(1, mVideoWidth, (DisplayMetrics)localObject));
        mVideoHeight = ((int)TypedValue.applyDimension(1, mVideoHeight, (DisplayMetrics)localObject));
        if (mVideoWidth > mWindowWidth) {
          mVideoWidth = mWindowWidth;
        }
        if (mVideoHeight <= mWindowHeight) {
          break label108;
        }
        mVideoHeight = mWindowHeight;
        break label108;
        label1140:
        mOverlayView.setMarkup(mVideoData.htmlOverlayMarkup);
        break label324;
        label1157:
        if ((mVideoData.showBottomNavigationBar) && (!mVideoData.showTopNavigationBar))
        {
          bottomMargin = ((int)(mWindowWidth * 0.11875D));
          gravity = 48;
          break label427;
        }
        if ((mVideoData.showTopNavigationBar) && (!mVideoData.showBottomNavigationBar))
        {
          topMargin = ((int)(mWindowWidth * 0.11875D));
          gravity = 80;
          break label427;
        }
        gravity = 81;
        break label427;
        label1252:
        i = (int)TypedValue.applyDimension(1, skipButtonSizePort, getResources().getDisplayMetrics());
        break label636;
        label1274:
        i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
        topMargin = i;
        rightMargin = i;
        break label690;
        label1306:
        mSkipButton.setImageDrawable(mResourceManager.getResource(this, -18));
        break label730;
        label1326:
        mCanClose = true;
        mSkipButton.setVisibility(0);
        break label765;
        label1342:
        mCanClose = false;
        break label777;
      }
      i = ((Integer)((Iterator)localObject).next()).intValue();
      mVideoView.setOnTimeEventListener(i, mOnVideoTimeEventListener);
    }
  }
  
  private void initWebBrowserView(boolean paramBoolean)
  {
    mWebBrowserView = new WebFrame(this, true, true, paramBoolean);
    mRootLayout.addView(mWebBrowserView);
  }
  
  private void notifyAdClicked()
  {
    AdManager.notifyAdClick(mAd);
  }
  
  @TargetApi(9)
  private void setOrientation()
  {
    if (mAd.isHorizontalOrientationRequested())
    {
      setRequestedOrientation(6);
      return;
    }
    setRequestedOrientation(7);
  }
  
  private void setOrientationOldApi()
  {
    if (mAd.isHorizontalOrientationRequested())
    {
      setRequestedOrientation(0);
      return;
    }
    setRequestedOrientation(1);
  }
  
  private void trackClick(String paramString)
  {
    TrackEvent localTrackEvent = new TrackEvent();
    url = paramString;
    timestamp = System.currentTimeMillis();
    TrackerService.requestTrack(localTrackEvent);
  }
  
  public void finish()
  {
    if (mAd != null)
    {
      Log.d("Finish Activity type:" + mType + " ad Type:" + mAd.getType());
      switch (mType)
      {
      }
    }
    for (;;)
    {
      super.finish();
      return;
      if (mAd.getType() == 3) {
        AdManager.closeRunningAd(mAd, mResult);
      }
    }
  }
  
  public int getDipSize(int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, getResources().getDisplayMetrics());
  }
  
  public FrameLayout getRootLayout()
  {
    return mRootLayout;
  }
  
  public void goBack()
  {
    if (mCustomView != null)
    {
      Log.d("Closing custom view on back key pressed");
      onHideCustomView();
      return;
    }
    switch (mType)
    {
    default: 
      return;
    }
    for (;;)
    {
      finish();
      return;
      if (!mCanClose) {
        break;
      }
      continue;
      mResult = true;
      setResult(-1);
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      switch (arg1)
      {
      default: 
        return;
      }
    } while (mSkipButton == null);
    mSkipButton.setImageDrawable(mResourceManager.getResource(this, -18));
  }
  
  public void navigate(String paramString)
  {
    AdManager.notifyAdClick(mAd);
    switch (mType)
    {
    default: 
      Intent localIntent = new Intent(this, RichMediaActivity.class);
      localIntent.setData(Uri.parse(paramString));
      startActivity(localIntent);
      return;
    }
    mWebBrowserView.loadUrl(paramString);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    Log.d("RichMediaActivity onConfigurationChanged");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Log.d("RichMediaActivity onCreate");
    super.onCreate(paramBundle);
    for (;;)
    {
      Object localObject;
      try
      {
        mResult = false;
        setResult(0);
        paramBundle = getWindow();
        paramBundle.setFlags(1024, 1024);
        requestWindowFeature(1);
        paramBundle.addFlags(512);
        localObject = getWindowManager().getDefaultDisplay();
        metrics = new DisplayMetrics();
        ((WindowManager)getSystemService("window")).getDefaultDisplay().getMetrics(metrics);
        mWindowWidth = ((Display)localObject).getWidth();
        mWindowHeight = ((Display)localObject).getHeight();
        paramBundle.clearFlags(512);
        Log.d("RichMediaActivity Window Size:(" + mWindowWidth + "," + mWindowHeight + ")");
        setVolumeControlStream(3);
        mType = -1;
        paramBundle = getIntent();
        localObject = paramBundle.getExtras();
        if ((localObject == null) || (((Bundle)localObject).getSerializable("RICH_AD_DATA") == null))
        {
          uri = paramBundle.getData();
          if (uri == null)
          {
            Log.d("url is null so do not load anything");
            finish();
            return;
          }
          mType = 0;
          mHandler = new RichMediaActivity.ResourceHandler(this);
          mResourceManager = new ResourceManager(this, mHandler);
          initRootLayout();
          if (mType != 0) {
            break label310;
          }
          initWebBrowserView(true);
          mWebBrowserView.loadUrl(uri.toString());
          setContentView(mRootLayout);
          Log.d("RichMediaActivity onCreate done");
          return;
        }
      }
      catch (Exception paramBundle)
      {
        finish();
        return;
      }
      requestWindowFeature(1);
      continue;
      label310:
      mAd = ((AdResponse)((Bundle)localObject).getSerializable("RICH_AD_DATA"));
      mCanClose = false;
      mType = ((Bundle)localObject).getInt("RICH_AD_TYPE", -1);
      if (mType == -1) {
        switch (mAd.getType())
        {
        }
      }
      for (;;)
      {
        switch (mType)
        {
        case 1: 
          Log.v("Type video");
          initVideoView();
          break;
          mType = 1;
          continue;
          if (Build.VERSION.SDK_INT < 9) {
            setOrientationOldApi();
          }
          for (;;)
          {
            mType = 2;
            break;
            setOrientation();
          }
        case 2: 
          Log.v("Type interstitial like banner");
          initInterstitialFromBannerView();
          break;
        }
      }
    }
  }
  
  protected void onDestroy()
  {
    mMediaController = null;
    mResourceManager.releaseInstance();
    if (mVideoView != null) {
      mVideoView.destroy();
    }
    Log.d("RichMediaActivity onDestroy");
    super.onDestroy();
    Log.d("RichMediaActivity onDestroy done");
  }
  
  public void onHideCustomView()
  {
    Log.d("onHideCustomView Hidding Custom View");
    if (mCustomView != null)
    {
      mCustomView.setVisibility(8);
      mCustomView = null;
      if (mCustomVideoView == null) {}
    }
    try
    {
      Log.d("onHideCustomView stop video");
      mCustomVideoView.stopPlayback();
      mCustomVideoView = null;
      Log.d("onHideCustomView calling callback");
      mCustomViewCallback.onCustomViewHidden();
      mRootLayout.setVisibility(0);
      setContentView(mRootLayout);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.d("Couldn't stop custom video view");
      }
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    Log.d("RichMediaActivity onPause");
    super.onPause();
    switch (mType)
    {
    }
    for (;;)
    {
      Log.d("RichMediaActivity onPause done");
      return;
      mVideoLastPosition = mVideoView.getCurrentPosition();
      mVideoView.stopPlayback();
      mRootLayout.removeView(mVideoLayout);
      if (mVideoTimeoutTimer != null)
      {
        mVideoTimeoutTimer.cancel();
        mVideoTimeoutTimer = null;
      }
    }
  }
  
  protected void onResume()
  {
    Log.d("RichMediaActivity onResume");
    super.onResume();
    switch (mType)
    {
    }
    for (;;)
    {
      Log.d("RichMediaActivity onResume done");
      return;
      mRootLayout.addView(mVideoLayout);
      mVideoView.seekTo(mVideoLastPosition);
      mVideoView.start();
      if (mVideoTimeoutTimer == null)
      {
        RichMediaActivity.VideoTimeoutTask localVideoTimeoutTask = new RichMediaActivity.VideoTimeoutTask(this, this);
        mVideoTimeoutTimer = new Timer();
        mVideoTimeoutTimer.schedule(localVideoTimeoutTask, 1200000L);
      }
    }
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    Log.d(" onShowCustomView");
    if ((paramView instanceof FrameLayout))
    {
      mCustomView = ((FrameLayout)paramView);
      mCustomViewCallback = paramCustomViewCallback;
      if ((mCustomView.getFocusedChild() instanceof VideoView))
      {
        Log.d(" onShowCustomView Starting Video View");
        mCustomVideoView = ((VideoView)mCustomView.getFocusedChild());
        mCustomVideoView.setOnCompletionListener(new RichMediaActivity.19(this));
        mCustomVideoView.start();
      }
      mRootLayout.setVisibility(8);
      mCustomView.setVisibility(0);
      setContentView(mCustomView);
    }
  }
  
  public void playVideo()
  {
    Log.d("RichMediaActivity play video:" + mType);
    switch (mType)
    {
    }
    do
    {
      return;
    } while (mMediaController == null);
    mMediaController.replay();
  }
  
  public void replayVideo()
  {
    if (mMediaController != null) {
      mMediaController.replay();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
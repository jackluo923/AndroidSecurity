package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

abstract class MMLayout
  extends RelativeLayout
  implements InlineVideoView.TransparentFix, MMAd
{
  static final String BOTTOM_CENTER = "bottom-center";
  static final String BOTTOM_LEFT = "bottom-left";
  static final String BOTTOM_RIGHT = "bottom-right";
  static final String CENTER = "center";
  private static final int CLOSE_AREA_SIZE = 50;
  public static final String KEY_HEIGHT = "height";
  public static final String KEY_WIDTH = "width";
  static final String TOP_CENTER = "top-center";
  static final String TOP_LEFT = "top-left";
  static final String TOP_RIGHT = "top-right";
  private static boolean appInit;
  MMAdImpl adImpl;
  View blackView;
  View closeAreaView;
  private GestureDetector diagnosticDetector;
  String goalId;
  RelativeLayout inlineVideoLayout;
  InlineVideoView inlineVideoView;
  boolean isResizing;
  
  protected MMLayout(Context paramContext)
  {
    super(paramContext);
    initLayout(paramContext);
  }
  
  @Deprecated
  protected MMLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initLayout(paramContext);
  }
  
  private void initInlineVideoTransparentFix()
  {
    if (blackView != null)
    {
      localObject = blackView.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup)))
      {
        ((ViewGroup)localObject).removeView(blackView);
        blackView = null;
      }
    }
    blackView = new View(getContext());
    blackView.setBackgroundColor(-16777216);
    Object localObject = new RelativeLayout.LayoutParams(-1, -1);
    blackView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    if ((inlineVideoLayout != null) && (blackView.getParent() == null)) {
      inlineVideoLayout.addView(blackView);
    }
  }
  
  private void internalSetCloseArea(String paramString)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (closeAreaView == null)
    {
      closeAreaView = new View(getContext());
      float f = getContextgetResourcesgetDisplayMetricsdensity;
      localLayoutParams = new RelativeLayout.LayoutParams((int)(50.0F * f), (int)(f * 50.0F));
      if (!"top-right".equals(paramString)) {
        break label94;
      }
      localLayoutParams.addRule(11);
    }
    for (;;)
    {
      closeAreaView.setOnClickListener(new MMLayout.3(this));
      addView(closeAreaView, localLayoutParams);
      return;
      label94:
      if ("top-center".equals(paramString))
      {
        localLayoutParams.addRule(14);
      }
      else if ("bottom-left".equals(paramString))
      {
        localLayoutParams.addRule(12);
      }
      else if ("bottom-center".equals(paramString))
      {
        localLayoutParams.addRule(12);
        localLayoutParams.addRule(14);
      }
      else if ("bottom-right".equals(paramString))
      {
        localLayoutParams.addRule(12);
        localLayoutParams.addRule(11);
      }
      else if ("center".equals(paramString))
      {
        localLayoutParams.addRule(13);
      }
    }
  }
  
  public void addBlackView()
  {
    initInlineVideoTransparentFix();
    if (blackView != null) {
      blackView.setVisibility(0);
    }
  }
  
  void addInlineVideo()
  {
    if ((inlineVideoLayout != null) && (inlineVideoLayout.getParent() != null)) {
      ((ViewGroup)inlineVideoLayout.getParent()).removeView(inlineVideoLayout);
    }
    inlineVideoLayout = new RelativeLayout(getContext());
    inlineVideoLayout.setId(892934232);
    if (inlineVideoView.getParent() != null) {
      ((ViewGroup)inlineVideoView.getParent()).removeView(inlineVideoView);
    }
    inlineVideoLayout.addView(inlineVideoView);
    if (blackView != null)
    {
      if (blackView.getParent() == null) {
        inlineVideoLayout.addView(blackView);
      }
      blackView.bringToFront();
    }
    addView(inlineVideoLayout, inlineVideoView.getCustomLayoutParams());
  }
  
  boolean adjustVideo(InlineVideoView.InlineParams paramInlineParams)
  {
    MMSDK.runOnUiThread(new MMLayout.4(this, paramInlineParams));
    return false;
  }
  
  void closeAreaTouched() {}
  
  protected void finalize()
  {
    if (getId() == -1)
    {
      adImpl.isFinishing = true;
      MMSDK.Log.d("finalize() for " + adImpl);
      MMAdImplController.removeAdViewController(adImpl);
    }
  }
  
  void fullScreenVideoLayout() {}
  
  public String getApid()
  {
    return adImpl.getApid();
  }
  
  public boolean getIgnoresDensityScaling()
  {
    return adImpl.getIgnoresDensityScaling();
  }
  
  public RequestListener getListener()
  {
    return adImpl.getListener();
  }
  
  public MMRequest getMMRequest()
  {
    return adImpl.getMMRequest();
  }
  
  void initInlineVideo(InlineVideoView.InlineParams paramInlineParams)
  {
    if (inlineVideoView != null)
    {
      ViewGroup localViewGroup = (ViewGroup)inlineVideoView.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(inlineVideoView);
      }
      if (inlineVideoView.isPlaying()) {
        inlineVideoView.stopPlayback();
      }
      inlineVideoView = null;
    }
    inlineVideoView = new InlineVideoView(this);
    inlineVideoView.initInlineVideo(paramInlineParams);
    paramInlineParams = new RelativeLayout.LayoutParams(-2, -2);
    paramInlineParams.addRule(13, -1);
    inlineVideoView.setLayoutParams(paramInlineParams);
    addInlineVideo();
  }
  
  protected final void initLayout(Context paramContext)
  {
    try
    {
      MMSDK.Log.i("Initializing MMLayout.");
      MMSDK.checkPermissions(paramContext);
      MMSDK.checkActivity(paramContext);
      diagnosticDetector = new GestureDetector(new MMLayout.1(this));
      if (!appInit)
      {
        MMSDK.Log.d("********** Millennial Device Id *****************");
        MMSDK.Log.d(MMSDK.getMMdid(paramContext));
        MMSDK.Log.d("Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com.");
        MMSDK.Log.d("*************************************************");
        AdCache.cleanCache(paramContext);
        appInit = true;
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        MMSDK.Log.e("There was an exception initializing the MMAdView. %s", new Object[] { localException.getMessage() });
        localException.printStackTrace();
      }
    }
  }
  
  boolean isVideoPlayingStreaming()
  {
    return (inlineVideoView != null) && (inlineVideoView.isPlayingStreaming());
  }
  
  void loadUrl(String paramString)
  {
    if (MMSDK.isConnected(getContext()))
    {
      if (adImpl.controller != null) {
        adImpl.controller.loadUrl(paramString);
      }
      return;
    }
    MMSDK.Log.e("No network available, can't load overlay.");
  }
  
  void loadWebContent(String paramString1, String paramString2)
  {
    if (MMSDK.isConnected(getContext()))
    {
      if (adImpl.controller != null) {
        adImpl.controller.loadWebContent(paramString1, paramString2);
      }
      return;
    }
    MMSDK.Log.e("No network available, can't load overlay.");
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (!isInEditMode())
    {
      MMSDK.Log.d("onAttachedToWindow for " + adImpl);
      if (getId() == -1) {
        MMSDK.Log.w("MMAd missing id from getId(). Performance will be affected for configuration changes.");
      }
      if (!isResizing) {
        MMAdImplController.assignAdViewController(adImpl);
      }
      if (inlineVideoLayout != null) {
        inlineVideoLayout.bringToFront();
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    MMSDK.Log.d("onDetachedFromWindow for" + adImpl);
    if (!isResizing) {
      MMAdImplController.removeAdViewController(adImpl);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    long l = adImpl.internalId;
    adImpl.internalId = paramParcelable.getLong("MMAdImplId");
    adImpl.linkForExpansionId = paramParcelable.getLong("MMAdImplLinkedId");
    MMSDK.Log.d("onRestoreInstanceState replacing adImpl-" + l + " with " + adImpl + " id=" + getId());
    String str = paramParcelable.getString("inlineVideoViewGson");
    if (str != null) {
      initInlineVideo(InlineVideoView.InlineParams.getInlineParams(str));
    }
    super.onRestoreInstanceState(paramParcelable.getParcelable("super"));
  }
  
  protected Parcelable onSaveInstanceState()
  {
    super.onSaveInstanceState();
    MMSDK.Log.d("onSaveInstanceState saving - " + adImpl + " id=" + getId());
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("super", super.onSaveInstanceState());
    localBundle.putLong("MMAdImplId", adImpl.internalId);
    localBundle.putLong("MMAdImplLinkedId", adImpl.linkForExpansionId);
    if (inlineVideoView != null)
    {
      if (inlineVideoView.isPlaying()) {
        inlineVideoView.inlineParams.currentPosition = inlineVideoView.getCurrentPosition();
      }
      localBundle.putString("inlineVideoViewGson", inlineVideoView.getGsonState());
    }
    return localBundle;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return (diagnosticDetector.onTouchEvent(paramMotionEvent)) || (!isClickable()) || (super.onTouchEvent(paramMotionEvent));
  }
  
  @Deprecated
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      if (inlineVideoView != null) {
        inlineVideoView.resumeVideo();
      }
      MMSDK.Log.d("Window Focus Changed. For %s, Window in focus?: %b Controllers: %s", new Object[] { adImpl, Boolean.valueOf(paramBoolean), MMAdImplController.controllersToString() });
      if ((adImpl != null) && (adImpl.controller != null) && (adImpl.controller.webView != null))
      {
        if (!paramBoolean) {
          break label243;
        }
        adImpl.controller.webView.setMraidViewableVisible();
      }
    }
    for (;;)
    {
      if ((!paramBoolean) && ((getContext() instanceof Activity)))
      {
        Activity localActivity = (Activity)getContext();
        if ((localActivity == null) || ((localActivity.isFinishing()) && (adImpl != null)))
        {
          adImpl.isFinishing = true;
          MMSDK.Log.d("Window Focus Changed.removing " + adImpl);
          if ((adImpl.controller != null) && (adImpl.controller.webView != null)) {
            adImpl.controller.webView.setMraidHidden();
          }
          MMAdImplController.removeAdViewController(adImpl);
        }
      }
      BridgeMMMedia.Audio.sharedAudio(getContext()).stop();
      return;
      if (inlineVideoView == null) {
        break;
      }
      inlineVideoView.pauseVideo();
      break;
      label243:
      adImpl.controller.webView.setMraidViewableHidden();
    }
  }
  
  void pauseVideo()
  {
    if (inlineVideoView != null) {
      inlineVideoView.pauseVideo();
    }
  }
  
  void playVideo()
  {
    if (inlineVideoView != null) {
      inlineVideoView.playVideo();
    }
  }
  
  public void removeBlackView()
  {
    if (blackView != null) {
      blackView.setVisibility(4);
    }
  }
  
  void removeCloseTouchDelegate()
  {
    if ((closeAreaView != null) && (closeAreaView.getParent() != null) && ((closeAreaView.getParent() instanceof ViewGroup)))
    {
      ((ViewGroup)closeAreaView.getParent()).removeView(closeAreaView);
      closeAreaView = null;
    }
  }
  
  void removeVideo()
  {
    if (inlineVideoView != null)
    {
      inlineVideoView.removeVideo();
      inlineVideoView = null;
    }
  }
  
  void repositionVideoLayout() {}
  
  void resumeVideo()
  {
    if (inlineVideoView != null) {
      inlineVideoView.resumeVideo();
    }
  }
  
  public void setApid(String paramString)
  {
    adImpl.setApid(paramString);
  }
  
  void setCloseArea(String paramString)
  {
    post(new MMLayout.2(this, paramString));
  }
  
  public void setIgnoresDensityScaling(boolean paramBoolean)
  {
    adImpl.setIgnoresDensityScaling(paramBoolean);
  }
  
  public void setListener(RequestListener paramRequestListener)
  {
    adImpl.setListener(paramRequestListener);
  }
  
  public void setMMRequest(MMRequest paramMMRequest)
  {
    adImpl.setMMRequest(paramMMRequest);
  }
  
  void setVideoSource(String paramString)
  {
    if (inlineVideoView != null) {
      inlineVideoView.setVideoSource(paramString);
    }
  }
  
  void stopVideo()
  {
    if (inlineVideoView != null) {
      inlineVideoView.stopVideo();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
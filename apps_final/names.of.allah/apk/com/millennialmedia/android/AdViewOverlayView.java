package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.lang.ref.WeakReference;

class AdViewOverlayView
  extends MMLayout
{
  private Button mraidCloseButton;
  AdViewOverlayView.CloseTopDrawable mraidCloseDrawable;
  WeakReference<AdViewOverlayActivity> overlayActivityRef;
  private ProgressBar progressBar;
  private boolean progressDone;
  OverlaySettings settings;
  
  AdViewOverlayView(AdViewOverlayActivity paramAdViewOverlayActivity, OverlaySettings paramOverlaySettings)
  {
    super(activity);
    overlayActivityRef = new WeakReference(paramAdViewOverlayActivity);
    adImpl = new AdViewOverlayView.AdViewOverlayViewMMAdImpl(this, activity);
    setId(15062);
    adImpl.adType = "i";
    settings = paramOverlaySettings;
    paramOverlaySettings = null;
    Object localObject;
    if ((activity instanceof Activity))
    {
      paramOverlaySettings = (AdViewOverlayView.NonConfigurationInstance)activity.getLastNonConfigurationInstance();
      if (paramOverlaySettings != null)
      {
        progressDone = progressDone;
        adImpl.controller = controller;
        settings = settings;
        if ((adImpl != null) && (adImpl.controller != null) && (adImpl.controller.webView != null)) {
          addView(adImpl.controller.webView);
        }
        MMSDK.Log.d("Restoring configurationinstance w/ controller= " + controller);
      }
    }
    else
    {
      float f = activity.getResources().getDisplayMetrics().density;
      if ((settings.height == 0) || (settings.width == 0)) {
        break label481;
      }
      localObject = new RelativeLayout.LayoutParams((int)(settings.width * f), (int)(settings.height * f));
      label242:
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = Integer.valueOf((int)(0.0625F * f * settings.shouldResizeOverlay));
      setPadding(((Integer)localObject).intValue(), ((Integer)localObject).intValue(), ((Integer)localObject).intValue(), ((Integer)localObject).intValue());
      mraidCloseButton = initMRaidCloseButton(activity, f);
      if ((settings.isExpanded()) && (!settings.hasExpandUrl())) {
        adImpl.linkForExpansionId = settings.creatorAdImplId;
      }
      MMAdImplController.assignAdViewController(adImpl);
      if (mraidCloseButton != null) {
        addView(mraidCloseButton);
      }
      if ((!progressDone) && (!settings.isExpanded()) && (!settings.isFromInterstitial())) {
        initProgressBar();
      }
      if (!settings.getIsTransparent()) {
        break label495;
      }
      adImpl.controller.webView.setBackgroundColor(0);
      adImpl.setBackgroundColor(0);
    }
    for (;;)
    {
      if (settings.enableHardwareAccel()) {
        adImpl.controller.webView.enableHardwareAcceleration();
      }
      if (paramOverlaySettings == null) {
        animateView();
      }
      setUseCustomClose(settings.getUseCustomClose());
      return;
      MMSDK.Log.d("Null configurationinstance ");
      break;
      label481:
      localObject = new RelativeLayout.LayoutParams(-1, -1);
      break label242;
      label495:
      adImpl.controller.webView.setBackgroundColor(-1);
      adImpl.setBackgroundColor(-1);
    }
  }
  
  private void animateView()
  {
    Object localObject;
    if (settings.getTransition().equals("slideup"))
    {
      localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      MMSDK.Log.v("Translate up");
    }
    for (;;)
    {
      ((Animation)localObject).setDuration(settings.getTransitionDurationInMillis());
      startAnimation((Animation)localObject);
      do
      {
        return;
        if (settings.getTransition().equals("slidedown"))
        {
          localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
          MMSDK.Log.v("Translate down");
          break;
        }
      } while (!settings.getTransition().equals("explode"));
      localObject = new ScaleAnimation(1.1F, 0.9F, 0.1F, 0.9F, 1, 0.5F, 1, 0.5F);
      MMSDK.Log.v("Explode");
    }
  }
  
  private RelativeLayout.LayoutParams getCloseAreaParams(float paramFloat)
  {
    int i = (int)(50.0F * paramFloat + 0.5F);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, i);
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(10);
    return localLayoutParams;
  }
  
  private Button initMRaidCloseButton(Context paramContext, float paramFloat)
  {
    paramContext = new Button(paramContext);
    paramContext.setId(301);
    mraidCloseDrawable = new AdViewOverlayView.CloseTopDrawable(true, paramFloat);
    paramContext.setOnClickListener(new AdViewOverlayView.1(this));
    RelativeLayout.LayoutParams localLayoutParams = getCloseAreaParams(paramFloat);
    paramContext.setLayoutParams(localLayoutParams);
    paramContext.post(new AdViewOverlayView.SetCloseButtonTouchDelegateRunnable(paramContext, topMargin, leftMargin, bottomMargin, rightMargin));
    return paramContext;
  }
  
  private void initProgressBar()
  {
    Object localObject = (AdViewOverlayActivity)overlayActivityRef.get();
    if (localObject != null)
    {
      progressBar = new ProgressBar(activity);
      progressBar.setIndeterminate(true);
      progressBar.setVisibility(0);
      localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      addView(progressBar, (ViewGroup.LayoutParams)localObject);
    }
  }
  
  private void removeProgressBar()
  {
    if ((!progressDone) && (progressBar != null))
    {
      progressDone = true;
      progressBar.setVisibility(8);
      removeView(progressBar);
      progressBar = null;
    }
  }
  
  void addInlineVideo()
  {
    super.addInlineVideo();
    bringMraidCloseToFront();
  }
  
  void attachWebViewToLink()
  {
    if (adImpl.linkForExpansionId != 0L) {
      MMAdImplController.attachWebViewFromOverlay(adImpl);
    }
  }
  
  void bringMraidCloseToFront()
  {
    if (mraidCloseButton != null) {
      mraidCloseButton.bringToFront();
    }
  }
  
  void closeAreaTouched()
  {
    post(new AdViewOverlayView.2(this));
  }
  
  void finishOverlayWithAnimation()
  {
    MMSDK.Log.d("Ad overlay closed");
    if ((Activity)getContext() == null) {
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setAnimationListener(new AdViewOverlayView.3(this));
    localAlphaAnimation.setFillEnabled(true);
    localAlphaAnimation.setFillBefore(true);
    localAlphaAnimation.setFillAfter(true);
    localAlphaAnimation.setDuration(400L);
    startAnimation(localAlphaAnimation);
  }
  
  void fullScreenVideoLayout()
  {
    removeView(inlineVideoLayout);
    addView(inlineVideoLayout, new RelativeLayout.LayoutParams(-1, -1));
    bringMraidCloseToFront();
  }
  
  Object getNonConfigurationInstance()
  {
    MMSDK.Log.d("Saving getNonConfigurationInstance for " + adImpl);
    AdViewOverlayView.NonConfigurationInstance localNonConfigurationInstance = new AdViewOverlayView.NonConfigurationInstance(null);
    if (adImpl.controller != null) {
      adImpl.controller.webView.removeFromParent();
    }
    progressDone = progressDone;
    controller = adImpl.controller;
    settings = settings;
    return localNonConfigurationInstance;
  }
  
  void getWebContent(String paramString)
  {
    new AdViewOverlayView.FetchWebViewContentTask(this, paramString).execute(new Void[0]);
  }
  
  void injectJS(String paramString)
  {
    if (adImpl.controller != null) {
      adImpl.controller.loadUrl(paramString);
    }
  }
  
  void inlineConfigChange()
  {
    if ((inlineVideoView != null) && (inlineVideoLayout != null))
    {
      inlineVideoLayout.setLayoutParams(inlineVideoView.getCustomLayoutParams());
      bringMraidCloseToFront();
    }
  }
  
  void repositionVideoLayout()
  {
    removeView(inlineVideoLayout);
    addView(inlineVideoLayout, inlineVideoView.getCustomLayoutParams());
    bringMraidCloseToFront();
  }
  
  void setUseCustomClose(boolean paramBoolean)
  {
    settings.setUseCustomClose(paramBoolean);
    Button localButton = mraidCloseButton;
    if (paramBoolean) {}
    for (Object localObject = null;; localObject = mraidCloseDrawable)
    {
      localButton.setBackgroundDrawable((Drawable)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Message;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.ConfigParams;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import java.util.concurrent.atomic.AtomicBoolean;

public class MRAIDInterstitialController
{
  protected static final int INT_BACKGROUND_ID = 224;
  public static final int INT_CLOSE_BUTTON = 225;
  public static AtomicBoolean isInterstitialDisplayed = new AtomicBoolean();
  private IMWebView a;
  private Activity b;
  private long c = 0L;
  private int d;
  public boolean lockOrientationValueForInterstitial = true;
  public Message mMsgOnInterstitialClosed;
  public Message mMsgOnInterstitialShown;
  public Display mSensorDisplay;
  public String orientationValueForInterstitial;
  
  public MRAIDInterstitialController(IMWebView paramIMWebView, Activity paramActivity)
  {
    a = paramIMWebView;
  }
  
  public void animateAndDismissWebview()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    localAlphaAnimation.setStartOffset(0L);
    localAlphaAnimation.setDuration(c);
    localAlphaAnimation.setAnimationListener(new MRAIDInterstitialController.c(this));
    a.startAnimation(localAlphaAnimation);
  }
  
  public void changeContentAreaForInterstitials(long paramLong)
  {
    try
    {
      c = paramLong;
      int i = Initializer.getConfigParams().getWebviewBgColor();
      d = b.getRequestedOrientation();
      handleOrientationForInterstitial();
      FrameLayout localFrameLayout = (FrameLayout)b.findViewById(16908290);
      RelativeLayout localRelativeLayout = new RelativeLayout(a.getContext());
      Object localObject = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
      ((RelativeLayout.LayoutParams)localObject).addRule(10);
      a.setFocusable(true);
      a.setFocusableInTouchMode(true);
      localRelativeLayout.addView(a, (ViewGroup.LayoutParams)localObject);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams((int)(a.getDensity() * 50.0F), (int)(a.getDensity() * 50.0F));
      if (!a.getCustomClose()) {}
      for (localObject = new CustomView(a.getContext(), a.getDensity(), CustomView.SwitchIconType.CLOSE_BUTTON);; localObject = new CustomView(a.getContext(), a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT))
      {
        localLayoutParams.addRule(11);
        ((CustomView)localObject).setId(225);
        localRelativeLayout.addView((View)localObject, localLayoutParams);
        localObject = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        localRelativeLayout.setId(224);
        localRelativeLayout.setBackgroundColor(i);
        localFrameLayout.addView(localRelativeLayout, (ViewGroup.LayoutParams)localObject);
        a.setBackgroundColor(i);
        a.requestFocus();
        a.setOnKeyListener(new MRAIDInterstitialController.b(this));
        a.setOnTouchListener(new MRAIDInterstitialController.a(this));
        isInterstitialDisplayed.set(true);
        if (mMsgOnInterstitialShown == null) {
          break;
        }
        mMsgOnInterstitialShown.sendToTarget();
        mMsgOnInterstitialShown = null;
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Failed showing interstitial ad", localException);
    }
  }
  
  public void dismissWebview()
  {
    FrameLayout localFrameLayout = (FrameLayout)b.findViewById(16908290);
    RelativeLayout localRelativeLayout = (RelativeLayout)localFrameLayout.findViewById(224);
    b.runOnUiThread(new MRAIDInterstitialController.d(this, localRelativeLayout, localFrameLayout));
  }
  
  public void handleInterstitialClose()
  {
    IMWebView.userInitiatedClose = true;
    isInterstitialDisplayed.set(false);
    a.close();
  }
  
  public void handleOrientationForInterstitial()
  {
    a.lockExpandOrientation(b, lockOrientationValueForInterstitial, orientationValueForInterstitial);
  }
  
  public void resetContentsForInterstitials()
  {
    for (;;)
    {
      try
      {
        if (a.getParent() == null) {
          return;
        }
        b.setRequestedOrientation(d);
        a.mAudioVideoController.releaseAllPlayers();
        if ((RelativeLayout)((FrameLayout)b.findViewById(16908290)).findViewById(224) != null)
        {
          if (c > 0L) {
            animateAndDismissWebview();
          }
        }
        else
        {
          if (mMsgOnInterstitialClosed != null)
          {
            mMsgOnInterstitialClosed.sendToTarget();
            mMsgOnInterstitialClosed = null;
          }
          a.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
          a.setState(IMWebView.ViewState.HIDDEN);
          return;
        }
      }
      catch (Exception localException)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Failed to close the interstitial ad", localException);
        return;
      }
      dismissWebview();
    }
  }
  
  public void setActivity(Activity paramActivity)
  {
    if (paramActivity != null) {
      b = paramActivity;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDInterstitialController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
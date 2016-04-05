package com.millennialmedia.android;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

class AdViewOverlayActivity
  extends MMBaseActivity
{
  private SensorEventListener accelerometerEventListener = new AdViewOverlayActivity.1(this);
  private AdViewOverlayView adViewOverlayView;
  boolean hasFocus;
  private final int interval = 1000;
  boolean isPaused;
  private SensorManager sensorManager;
  private OverlaySettings settings;
  private final float threshold = 0.2F;
  
  private void didAccelerate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    MMSDK.Log.v("Accelerometer x:%fy:%fz:%f", new Object[] { Float.valueOf(paramFloat1), Float.valueOf(paramFloat2), Float.valueOf(paramFloat3) });
    adViewOverlayView.injectJS("javascript:didAccelerate(" + paramFloat1 + "," + paramFloat2 + "," + paramFloat3 + ")");
  }
  
  private void didShake(float paramFloat)
  {
    MMSDK.Log.v("Phone shaken: %f", new Object[] { Float.valueOf(paramFloat) });
    adViewOverlayView.injectJS("javascript:didShake(" + paramFloat + ")");
  }
  
  private void lockOrientation()
  {
    if (activity.getRequestedOrientation() == 0)
    {
      setRequestedOrientation(0);
      return;
    }
    if (activity.getRequestedOrientation() == 8)
    {
      setRequestedOrientation(8);
      return;
    }
    if (activity.getRequestedOrientation() == 9)
    {
      setRequestedOrientation(9);
      return;
    }
    setRequestedOrientation(1);
  }
  
  private void setRequestedOrientation(String paramString)
  {
    if ("landscape".equalsIgnoreCase(paramString)) {
      setRequestedOrientation(0);
    }
    while (!"portrait".equalsIgnoreCase(paramString)) {
      return;
    }
    setRequestedOrientation(1);
  }
  
  private void startAccelerating()
  {
    sensorManager = ((SensorManager)getSystemService("sensor"));
    if (!Boolean.valueOf(sensorManager.registerListener(accelerometerEventListener, sensorManager.getDefaultSensor(1), 1)).booleanValue())
    {
      MMSDK.Log.w("Accelerometer not supported by this device. Unregistering listener.");
      sensorManager.unregisterListener(accelerometerEventListener, sensorManager.getDefaultSensor(1));
      accelerometerEventListener = null;
      sensorManager = null;
    }
  }
  
  private void stopAccelerating()
  {
    try
    {
      if ((sensorManager != null) && (accelerometerEventListener != null)) {
        sensorManager.unregisterListener(accelerometerEventListener, sensorManager.getDefaultSensor(1));
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void finish()
  {
    if (adViewOverlayView != null) {
      adViewOverlayView.attachWebViewToLink();
    }
    super.finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (adViewOverlayView != null) {
      adViewOverlayView.inlineConfigChange();
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    setTheme(16973840);
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    getWindow().clearFlags(1024);
    getWindow().addFlags(2048);
    getWindow().addFlags(16777216);
    paramBundle = getIntent();
    settings = ((OverlaySettings)paramBundle.getParcelableExtra("settings"));
    if (settings == null) {
      settings = new OverlaySettings();
    }
    settings.log();
    if (settings.orientation != null) {
      setRequestedOrientation(settings.orientation);
    }
    if (settings.allowOrientationChange)
    {
      unlockScreenOrientation();
      if (paramBundle != null)
      {
        paramBundle = paramBundle.getData();
        if (paramBundle != null) {
          MMSDK.Log.v("Path: %s", new Object[] { paramBundle.getLastPathSegment() });
        }
      }
      paramBundle = new RelativeLayout(activity);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(13);
      paramBundle.setId(885394873);
      paramBundle.setLayoutParams(localLayoutParams);
      adViewOverlayView = new AdViewOverlayView(this, settings);
      paramBundle.addView(adViewOverlayView);
      setContentView(paramBundle);
      if (getLastNonConfigurationInstance() == null)
      {
        if (!settings.isExpanded()) {
          break label312;
        }
        adViewOverlayView.adImpl.controller.webView.setMraidExpanded();
        if (settings.hasExpandUrl()) {
          adViewOverlayView.getWebContent(settings.urlToLoad);
        }
      }
    }
    for (;;)
    {
      settings.orientation = null;
      return;
      lockOrientation();
      break;
      label312:
      if (!settings.isExpanded()) {
        adViewOverlayView.loadWebContent(settings.content, settings.adUrl);
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    MMSDK.Log.d("Overlay onDestroy");
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      adViewOverlayView.finishOverlayWithAnimation();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    isPaused = true;
    MMSDK.Log.d("Overlay onPause");
    if (settings.canAccelerate) {
      stopAccelerating();
    }
    BridgeMMMedia.Audio.sharedAudio(activity).stop();
    adViewOverlayView.pauseVideo();
    setResult(0);
    adViewOverlayView.adImpl.controller.pauseWebViewVideo();
    super.onPause();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
  }
  
  protected void onResume()
  {
    isPaused = false;
    MMSDK.Log.d("Overlay onResume");
    if (settings.canAccelerate) {
      startAccelerating();
    }
    if (hasFocus) {
      adViewOverlayView.resumeVideo();
    }
    adViewOverlayView.addBlackView();
    adViewOverlayView.adImpl.controller.resumeWebViewVideo();
    super.onResume();
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    return adViewOverlayView.getNonConfigurationInstance();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("adViewId", adViewOverlayView.getId());
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStop()
  {
    super.onStop();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    hasFocus = paramBoolean;
    if ((!isPaused) && (paramBoolean)) {
      adViewOverlayView.resumeVideo();
    }
  }
  
  void setAllowOrientationChange(boolean paramBoolean)
  {
    settings.allowOrientationChange = paramBoolean;
    if (paramBoolean)
    {
      unlockScreenOrientation();
      return;
    }
    lockOrientation();
  }
  
  void setRequestedOrientationLandscape()
  {
    settings.orientation = "landscape";
    settings.allowOrientationChange = false;
    setRequestedOrientation(0);
  }
  
  void setRequestedOrientationPortrait()
  {
    settings.orientation = "portrait";
    settings.allowOrientationChange = false;
    setRequestedOrientation(1);
  }
  
  void unlockScreenOrientation()
  {
    setRequestedOrientation(-1);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
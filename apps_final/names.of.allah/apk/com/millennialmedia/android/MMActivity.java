package com.millennialmedia.android;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;

public class MMActivity
  extends Activity
{
  long creatorAdImplInternalId;
  private MMBaseActivity mmBaseActivity;
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (mmBaseActivity != null) {
      return mmBaseActivity.dispatchTouchEvent(paramMotionEvent);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  boolean dispatchTouchEventSuper(MotionEvent paramMotionEvent)
  {
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void finish()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.finish();
      return;
    }
    MMSDK.Event.overlayClosed(this, creatorAdImplInternalId);
    super.finish();
  }
  
  public void finishSuper()
  {
    MMSDK.Event.overlayClosed(this, creatorAdImplInternalId);
    super.finish();
  }
  
  protected MMBaseActivity getWrappedActivity()
  {
    return mmBaseActivity;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  void onActivityResultSuper(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onConfigurationChanged(paramConfiguration);
      return;
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  void onConfigurationChangedSuper(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = null;
    creatorAdImplInternalId = getIntent().getLongExtra("internalId", -4L);
    try
    {
      String str = getIntent().getStringExtra("class");
      localObject = str;
      mmBaseActivity = ((MMBaseActivity)Class.forName(str).newInstance());
      localObject = str;
      mmBaseActivity.activity = this;
      localObject = str;
      mmBaseActivity.onCreate(paramBundle);
      return;
    }
    catch (Exception paramBundle)
    {
      MMSDK.Log.e("Could not start activity for %s. %s", new Object[] { localObject, paramBundle.getMessage() });
      paramBundle.printStackTrace();
      finish();
    }
  }
  
  void onCreateSuper(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  protected void onDestroy()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onDestroy();
      return;
    }
    super.onDestroy();
  }
  
  void onDestroySuper()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (mmBaseActivity != null) {
      return mmBaseActivity.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  boolean onKeyDownSuper(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onPause();
      return;
    }
    super.onPause();
  }
  
  void onPauseSuper()
  {
    super.onPause();
  }
  
  protected void onRestart()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onRestart();
      return;
    }
    super.onRestart();
  }
  
  void onRestartSuper()
  {
    super.onRestart();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onRestoreInstanceState(paramBundle);
      return;
    }
    super.onRestoreInstanceState(paramBundle);
  }
  
  void onRestoreInstanceStateSuper(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
  }
  
  protected void onResume()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onResume();
      return;
    }
    super.onResume();
  }
  
  void onResumeSuper()
  {
    super.onResume();
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    if (mmBaseActivity != null) {
      return mmBaseActivity.onRetainNonConfigurationInstance();
    }
    return super.onRetainNonConfigurationInstance();
  }
  
  Object onRetainNonConfigurationInstanceSuper()
  {
    return super.onRetainNonConfigurationInstance();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onSaveInstanceState(paramBundle);
      return;
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  void onSaveInstanceStateSuper(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onStart();
      return;
    }
    super.onStart();
  }
  
  void onStartSuper()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onStop();
      return;
    }
    super.onStop();
  }
  
  void onStopSuper()
  {
    super.onStop();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (mmBaseActivity != null)
    {
      mmBaseActivity.onWindowFocusChanged(paramBoolean);
      return;
    }
    super.onWindowFocusChanged(paramBoolean);
  }
  
  void onWindowFocusChangedSuper(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
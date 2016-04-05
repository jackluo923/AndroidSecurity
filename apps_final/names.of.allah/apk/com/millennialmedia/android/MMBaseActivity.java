package com.millennialmedia.android;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import java.io.File;

class MMBaseActivity
{
  MMActivity activity;
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return activity.dispatchTouchEventSuper(paramMotionEvent);
  }
  
  public void finish()
  {
    activity.finishSuper();
  }
  
  public File getCacheDir()
  {
    return activity.getCacheDir();
  }
  
  public ContentResolver getContentResolver()
  {
    return activity.getContentResolver();
  }
  
  public Intent getIntent()
  {
    return activity.getIntent();
  }
  
  public Object getLastNonConfigurationInstance()
  {
    return activity.getLastNonConfigurationInstance();
  }
  
  public Object getSystemService(String paramString)
  {
    return activity.getSystemService(paramString);
  }
  
  public Window getWindow()
  {
    return activity.getWindow();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    activity.onActivityResultSuper(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    activity.onConfigurationChangedSuper(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    activity.onCreateSuper(paramBundle);
  }
  
  protected void onDestroy()
  {
    activity.onDestroySuper();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return activity.onKeyDownSuper(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    activity.onPauseSuper();
  }
  
  protected void onRestart()
  {
    activity.onRestartSuper();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    activity.onRestoreInstanceStateSuper(paramBundle);
  }
  
  protected void onResume()
  {
    activity.onResumeSuper();
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    return activity.onRetainNonConfigurationInstanceSuper();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    activity.onSaveInstanceStateSuper(paramBundle);
  }
  
  protected void onStart()
  {
    activity.onStartSuper();
  }
  
  protected void onStop()
  {
    activity.onStopSuper();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    activity.onWindowFocusChangedSuper(paramBoolean);
  }
  
  public Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    return activity.registerReceiver(paramBroadcastReceiver, paramIntentFilter);
  }
  
  public final boolean requestWindowFeature(int paramInt)
  {
    return activity.requestWindowFeature(paramInt);
  }
  
  public final void runOnUiThread(Runnable paramRunnable)
  {
    activity.runOnUiThread(paramRunnable);
  }
  
  public void setContentView(View paramView)
  {
    activity.setContentView(paramView);
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    activity.setRequestedOrientation(paramInt);
  }
  
  public final void setResult(int paramInt)
  {
    activity.setResult(paramInt);
  }
  
  public void setTheme(int paramInt)
  {
    activity.setTheme(paramInt);
  }
  
  public void startActivity(Intent paramIntent)
  {
    activity.startActivity(paramIntent);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    activity.startActivityForResult(paramIntent, paramInt);
  }
  
  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    activity.unregisterReceiver(paramBroadcastReceiver);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMBaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
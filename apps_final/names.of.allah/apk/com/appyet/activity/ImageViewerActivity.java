package com.appyet.activity;

import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.Window;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.ap;

public class ImageViewerActivity
  extends SherlockFragmentActivity
{
  private ApplicationContext a;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    com.appyet.manager.ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      getWindow().setFlags(16777216, 16777216);
    }
    super.onCreate(paramBundle);
    com.appyet.manager.ar.a(this);
    setContentView(2130903119);
    a = ((ApplicationContext)getApplicationContext());
    paramBundle = getSupportActionBar();
    paramBundle.setDisplayHomeAsUpEnabled(true);
    paramBundle.setHomeButtonEnabled(true);
    Object localObject = getSupportFragmentManager();
    paramBundle = ((FragmentManager)localObject).beginTransaction();
    if (((FragmentManager)localObject).findFragmentByTag("ImageViewerFragment") == null)
    {
      localObject = new com.appyet.c.ar();
      ((com.appyet.c.ar)localObject).setRetainInstance(true);
      paramBundle.add(2131361982, (Fragment)localObject, "ImageViewerFragment");
    }
    paramBundle.commit();
    getSupportActionBar().hide();
    if (Build.VERSION.SDK_INT >= 14) {
      getWindow().getDecorView().setSystemUiVisibility(1);
    }
    a.e.a("ImageViewer");
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ImageViewerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
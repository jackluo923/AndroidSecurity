package com.appyet.activity;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Window;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.as;

public class MediaPlayerActivity
  extends Activity
{
  private ApplicationContext a;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      getWindow().setFlags(16777216, 16777216);
    }
    a = ((ApplicationContext)getApplicationContext());
    super.onCreate(paramBundle);
    ar.a(this);
    setContentView(2130903129);
    ((TextView)findViewById(2131361908)).setText(getTitle());
    a.e.a("AudioPlayer");
  }
  
  protected void onPause()
  {
    super.onPause();
    try
    {
      a.c.k();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      a.c.a(this);
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.MediaPlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
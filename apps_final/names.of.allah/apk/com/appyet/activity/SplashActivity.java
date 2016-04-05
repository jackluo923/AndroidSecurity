package com.appyet.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.widget.LinearLayout;
import com.appyet.context.ApplicationContext;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataSetting;

public class SplashActivity
  extends Activity
{
  private LinearLayout a;
  private ApplicationContext b;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903137);
    b = ((ApplicationContext)getApplicationContext());
    a = ((LinearLayout)findViewById(2131362012));
    a.setBackgroundColor(Color.parseColor(b.q.MetadataSetting.SplashScreenBgColor));
  }
  
  protected void onPause()
  {
    super.onPause();
    overridePendingTransition(2130968590, 2130968592);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((b.q.MetadataSetting.IsShowSplashScreen) && (b.q.MetadataSetting.SplashTime > 0))
    {
      new Handler().postDelayed(new ab(this), b.q.MetadataSetting.SplashTime * 1000);
      return;
    }
    finish();
    startActivity(new Intent(this, MainActivity.class));
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.SplashActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
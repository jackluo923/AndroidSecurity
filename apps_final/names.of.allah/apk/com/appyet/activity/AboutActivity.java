package com.appyet.activity;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.ar;

public class AboutActivity
  extends Activity
{
  private ApplicationContext a;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    ar.a(this);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    a = ((ApplicationContext)getApplicationContext());
    ((TextView)findViewById(2131361908)).setText(getString(2131230998));
    ((TextView)findViewById(2131361856)).setText(a.b());
  }
  
  protected void onResume()
  {
    super.onResume();
    ar.a(this);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.AboutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
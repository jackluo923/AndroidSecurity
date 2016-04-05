package com.appyet.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.bp;

public class TranslateActivity
  extends Activity
{
  private ApplicationContext a;
  private String b = "en";
  private String c;
  private View.OnClickListener d = new ac(this);
  private View.OnClickListener e = new ad(this);
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ar.a(this);
    setContentView(2130903140);
    setTitle(2131230837);
    ((TextView)findViewById(2131361908)).setText(getTitle());
    a = ((ApplicationContext)getApplicationContext());
    for (;;)
    {
      try
      {
        paramBundle = getIntent().getExtras();
        if (paramBundle != null)
        {
          if (!paramBundle.containsKey("URL")) {
            continue;
          }
          c = paramBundle.getString("URL");
        }
      }
      catch (Exception paramBundle)
      {
        d.a(paramBundle);
        continue;
      }
      ((Button)findViewById(2131362023)).setOnClickListener(d);
      ((Button)findViewById(2131362024)).setOnClickListener(e);
      paramBundle = (Spinner)findViewById(2131362022);
      paramBundle.setSelection(a.d.J());
      paramBundle.setOnItemSelectedListener(new ae(this));
      a.e.a("Translate");
      return;
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.TranslateActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
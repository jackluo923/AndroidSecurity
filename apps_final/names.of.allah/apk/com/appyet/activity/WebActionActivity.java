package com.appyet.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.manager.ar;

public class WebActionActivity
  extends Activity
{
  View.OnClickListener a = new aj(this);
  View.OnClickListener b = new ak(this);
  View.OnClickListener c = new al(this);
  private ApplicationContext d;
  private Button e;
  private Button f;
  private Button g;
  private TextView h;
  private String i;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    d = ((ApplicationContext)getApplicationContext());
    ar.a(this);
    super.onCreate(paramBundle);
    setContentView(2130903143);
    setTitle(2131230874);
    ((TextView)findViewById(2131361908)).setText(getTitle());
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
          i = paramBundle.getString("URL");
        }
      }
      catch (Exception paramBundle)
      {
        d.a(paramBundle);
        continue;
      }
      h = ((TextView)findViewById(2131362004));
      h.setText(i);
      e = ((Button)findViewById(2131362005));
      f = ((Button)findViewById(2131362006));
      g = ((Button)findViewById(2131362007));
      e.setOnClickListener(a);
      f.setOnClickListener(b);
      g.setOnClickListener(c);
      d.e.a("WebAction");
      return;
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.WebActionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
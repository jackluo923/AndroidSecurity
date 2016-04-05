package com.appyet.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.d.d;
import com.appyet.data.FeedItem;
import com.appyet.manager.af;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import java.util.List;

public class PodcastActionActivity
  extends Activity
{
  View.OnClickListener a = new v(this);
  View.OnClickListener b = new w(this);
  View.OnClickListener c = new x(this);
  View.OnClickListener d = new y(this);
  private ApplicationContext e;
  private Button f;
  private Button g;
  private Button h;
  private Button i;
  private TextView j;
  private int k;
  private FeedItem l;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    e = ((ApplicationContext)getApplicationContext());
    super.onCreate(paramBundle);
    for (;;)
    {
      try
      {
        ar.a(this);
        setContentView(2130903132);
        ((TextView)findViewById(2131361908)).setText(getString(2131230808));
        try
        {
          paramBundle = getIntent().getExtras();
          if (paramBundle != null)
          {
            if (!paramBundle.containsKey("POSITION")) {
              continue;
            }
            k = paramBundle.getInt("POSITION");
          }
        }
        catch (Exception paramBundle)
        {
          d.a(paramBundle);
          continue;
        }
        l = ((FeedItem)e.n.b.get(k));
        j = ((TextView)findViewById(2131362004));
        j.setText(l.getEnclosureLink());
        f = ((Button)findViewById(2131362005));
        g = ((Button)findViewById(2131362006));
        h = ((Button)findViewById(2131362007));
        i = ((Button)findViewById(2131362008));
        f.setOnClickListener(a);
        g.setOnClickListener(b);
        h.setOnClickListener(c);
        i.setOnClickListener(d);
        paramBundle = e.l.a(l.getTitle(), l.getEnclosureLink(), l.getEnclosureType());
        if (!e.l.c(paramBundle)) {
          break label322;
        }
        h.setVisibility(8);
        i.setVisibility(0);
        e.e.a("PodcastAction");
        return;
      }
      catch (Exception paramBundle)
      {
        d.a(paramBundle);
        return;
      }
      finish();
      continue;
      label322:
      h.setVisibility(0);
      i.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.PodcastActionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
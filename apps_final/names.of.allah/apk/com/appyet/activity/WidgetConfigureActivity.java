package com.appyet.activity;

import android.app.ListActivity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.ListView;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.manager.ar;
import com.appyet.manager.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WidgetConfigureActivity
  extends ListActivity
{
  int a = 0;
  private at b;
  private ApplicationContext c;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(5);
    setContentView(2130903080);
    c = ((ApplicationContext)getApplication());
    paramBundle = getIntent().getExtras();
    if (paramBundle != null) {
      a = paramBundle.getInt("appWidgetId", 0);
    }
    if (a == 0) {
      finish();
    }
    Object localObject = c.h.g();
    paramBundle = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      Module localModule = (Module)((Iterator)localObject).next();
      if (((localModule.getType().equals("Feed")) || (localModule.getType().equals("FeedQuery"))) && (!localModule.getIsHidden())) {
        paramBundle.add(localModule);
      }
    }
    getListView().setOnItemClickListener(new as(this));
    b = new at(this, this, paramBundle);
    setListAdapter(b);
  }
  
  protected void onResume()
  {
    ar.a(this);
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.WidgetConfigureActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
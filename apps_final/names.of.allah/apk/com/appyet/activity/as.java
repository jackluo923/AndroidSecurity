package com.appyet.activity;

import android.appwidget.AppWidgetManager;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.data.Widget;
import com.appyet.provider.WidgetProvider;

final class as
  implements AdapterView.OnItemClickListener
{
  as(WidgetConfigureActivity paramWidgetConfigureActivity) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      paramAdapterView = (Module)WidgetConfigureActivity.a(a).getItem(paramInt);
      paramView = new Widget();
      paramView.setWidgetId(Long.valueOf(a.a));
      paramView.setModuleId(paramAdapterView.getModuleId());
      paramView.setPosition(Long.valueOf(0L));
      ba).h.a(paramView);
      paramAdapterView = new Intent();
      paramAdapterView.putExtra("appWidgetId", a.a);
      a.setResult(-1, paramAdapterView);
      paramAdapterView = AppWidgetManager.getInstance(WidgetConfigureActivity.b(a));
      WidgetProvider.a(WidgetConfigureActivity.b(a), paramAdapterView, a.a, 0);
      a.finish();
      return;
    }
    catch (Exception paramAdapterView)
    {
      com.appyet.d.d.a(paramAdapterView);
      Toast.makeText(WidgetConfigureActivity.b(a), 2131230790, 1).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.manager;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import com.appyet.d.d;
import com.appyet.f.a;
import com.appyet.provider.WidgetProvider;

final class by
  extends a<Void, Void, Void>
{
  by(bx parambx) {}
  
  private Void f()
  {
    int i = 0;
    try
    {
      Object localObject = new ComponentName(a.a, WidgetProvider.class);
      AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(a.a);
      localObject = localAppWidgetManager.getAppWidgetIds((ComponentName)localObject);
      int j = localObject.length;
      while (i < j)
      {
        int k = localObject[i];
        WidgetProvider.a(a.a, localAppWidgetManager, k, 0);
        i += 1;
      }
      return null;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
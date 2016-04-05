package com.appyet.manager;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import com.appyet.activity.MainActivity;
import com.appyet.d.d;

public class ProgressNotificationManager
  extends Notification
{
  private int a;
  private int b;
  private int c = 0;
  private String d;
  private NotificationManager e;
  private Context f;
  
  public ProgressNotificationManager(Context paramContext, int paramInt, String paramString)
  {
    f = paramContext;
    a = 4303274;
    b = paramInt;
    d = paramString;
    try
    {
      e = ((NotificationManager)paramContext.getSystemService("notification"));
      icon = 17301633;
      flags |= 0x2;
      paramString = new Intent(paramContext, MainActivity.class);
      paramString.addCategory("android.intent.category.LAUNCHER");
      paramString.setAction("android.intent.action.MAIN");
      contentIntent = PendingIntent.getActivity(paramContext, 0, paramString, 0);
      contentView = new RemoteViews(paramContext.getPackageName(), 2130903133);
      contentView.setImageViewResource(2131362009, 17301633);
      contentView.setProgressBar(2131362011, paramInt, c, false);
      e.notify(4303274, this);
      return;
    }
    catch (Exception paramContext)
    {
      d.a(paramContext);
    }
  }
  
  public final void a()
  {
    try
    {
      e.cancel(a);
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public final void a(int paramInt, String paramString)
  {
    c = paramInt;
    try
    {
      icon = 17301633;
      contentView = new RemoteViews(f.getPackageName(), 2130903133);
      contentView.setImageViewResource(2131362009, 17301633);
      if (d != null) {
        contentView.setTextViewText(2131362010, d + ": " + paramString);
      }
      for (;;)
      {
        contentView.setProgressBar(2131362011, b, c, false);
        e.notify(a, this);
        return;
        contentView.setTextViewText(2131362010, paramString);
      }
      return;
    }
    catch (Exception paramString)
    {
      d.a(paramString);
    }
  }
  
  public final int b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.ProgressNotificationManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
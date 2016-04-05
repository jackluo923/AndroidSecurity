package com.appyet.manager;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.widget.RemoteViews;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.context.ApplicationContext;

public class MediaProgressNotification
  extends Notification
{
  private int a;
  private int b;
  private int c = 0;
  private String d;
  private NotificationManager e;
  private ApplicationContext f;
  
  public MediaProgressNotification(ApplicationContext paramApplicationContext, int paramInt)
  {
    f = paramApplicationContext;
    a = 2;
    b = paramInt;
    d = null;
    try
    {
      e = ((NotificationManager)f.getSystemService("notification"));
      icon = 2130837739;
      flags |= 0x2;
      paramApplicationContext = new Intent(f, MediaPlayerActivity.class);
      paramApplicationContext.addCategory("android.intent.category.LAUNCHER");
      paramApplicationContext.setAction("android.intent.action.MAIN");
      contentIntent = PendingIntent.getActivity(f, 0, paramApplicationContext, 0);
      contentView = new RemoteViews(f.getPackageName(), 2130903130);
      contentView.setImageViewResource(2131362000, 2130837739);
      e.notify(2, this);
      return;
    }
    catch (Exception paramApplicationContext) {}
  }
  
  public final int a()
  {
    return a;
  }
  
  public final void a(int paramInt, String paramString)
  {
    c = paramInt;
    try
    {
      contentView = new RemoteViews(f.getPackageName(), 2130903130);
      if (f.c.m())
      {
        contentView.setImageViewResource(2131362000, 2130837738);
        icon = 2130837738;
        if (d == null) {
          break label130;
        }
        contentView.setTextViewText(2131362001, d + ": " + paramString);
      }
      for (;;)
      {
        e.notify(a, this);
        return;
        contentView.setImageViewResource(2131362000, 2130837739);
        icon = 2130837739;
        break;
        label130:
        contentView.setTextViewText(2131362001, paramString);
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  public final void b()
  {
    try
    {
      e.cancel(a);
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.MediaProgressNotification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
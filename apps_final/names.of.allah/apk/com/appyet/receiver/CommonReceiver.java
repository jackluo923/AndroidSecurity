package com.appyet.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.as;
import com.appyet.manager.bl;
import com.appyet.manager.bo;
import com.appyet.manager.bp;
import com.appyet.manager.bq;

public class CommonReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext = (ApplicationContext)paramContext.getApplicationContext();
      if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      {
        paramIntent = g.a();
        if (paramContext.c() > 0)
        {
          if ((paramIntent != bo.a) && ((paramIntent != bo.c) || (!d.m()))) {
            break label393;
          }
          t.b();
          return;
        }
        if (!paramContext.f()) {
          break label393;
        }
        if (d.m())
        {
          if (paramIntent != bo.b) {
            break label393;
          }
          return;
        }
        paramContext = bo.a;
        return;
      }
      if (!"android.intent.action.MEDIA_BUTTON".equals(paramIntent.getAction())) {
        break label245;
      }
      if (!d.L()) {
        break label393;
      }
      paramIntent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
      if (paramIntent == null) {
        break label393;
      }
      int i = paramIntent.getKeyCode();
      paramIntent.getAction();
      paramIntent.getEventTime();
      switch (i)
      {
      case 79: 
      case 85: 
        if (!c.g()) {
          break label226;
        }
        c.h();
        return;
      }
    }
    catch (Exception paramContext)
    {
      d.a(paramContext);
      return;
    }
    if (c.g())
    {
      c.h();
      return;
      label226:
      if (c.m())
      {
        c.a(false);
        return;
        label245:
        if ("android.intent.action.HEADSET_PLUG".equals(paramIntent.getAction()))
        {
          if ((d.M()) && (paramIntent.getIntExtra("state", -1) == 0) && (c.g())) {
            c.h();
          }
        }
        else if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(paramIntent.getAction()))
        {
          if ((d.N()) && (c.g())) {
            c.h();
          }
        }
        else if (!"android.bluetooth.adapter.action.STATE_CHANGED".equals(paramIntent.getAction())) {}
      }
    }
    switch (paramIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE))
    {
    case 13: 
      if (c.g()) {
        c.h();
      }
    case 12: 
      label393:
      return;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.receiver.CommonReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
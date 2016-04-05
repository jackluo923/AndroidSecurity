package com.appyet.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;

public class AlarmReceiver
  extends BroadcastReceiver
{
  private ApplicationContext a;
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a = ((ApplicationContext)paramContext.getApplicationContext());
    try
    {
      new a(this, (byte)0).a(new Void[0]);
      return;
    }
    catch (Exception paramContext)
    {
      d.a(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.receiver.AlarmReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
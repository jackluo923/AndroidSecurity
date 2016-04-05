package com.appyet.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appyet.context.ApplicationContext;

public class BootCompletedReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ((ApplicationContext)paramContext.getApplicationContext()).h();
  }
}

/* Location:
 * Qualified Name:     com.appyet.receiver.BootCompletedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
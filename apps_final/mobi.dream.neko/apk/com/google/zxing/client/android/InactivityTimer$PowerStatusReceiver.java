package com.google.zxing.client.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class InactivityTimer$PowerStatusReceiver
  extends BroadcastReceiver
{
  private InactivityTimer$PowerStatusReceiver(InactivityTimer paramInactivityTimer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) {
      if (paramIntent.getIntExtra("plugged", -1) > 0) {
        break label36;
      }
    }
    label36:
    for (int i = 1; i != 0; i = 0)
    {
      this$0.onActivity();
      return;
    }
    InactivityTimer.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.InactivityTimer.PowerStatusReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
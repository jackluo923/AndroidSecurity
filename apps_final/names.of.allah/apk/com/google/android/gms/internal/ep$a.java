package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class ep$a
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.USER_PRESENT".equals(paramIntent.getAction())) {
      ep.p(true);
    }
    while (!"android.intent.action.SCREEN_OFF".equals(paramIntent.getAction())) {
      return;
    }
    ep.p(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ep.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
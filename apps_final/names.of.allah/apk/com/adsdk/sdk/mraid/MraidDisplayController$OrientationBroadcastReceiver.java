package com.adsdk.sdk.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

class MraidDisplayController$OrientationBroadcastReceiver
  extends BroadcastReceiver
{
  private Context mContext;
  private int mLastRotation;
  
  MraidDisplayController$OrientationBroadcastReceiver(MraidDisplayController paramMraidDisplayController) {}
  
  private boolean isRegistered()
  {
    return mContext != null;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!isRegistered()) {}
    int i;
    do
    {
      do
      {
        return;
      } while (!paramIntent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED"));
      i = MraidDisplayController.access$3(this$0);
    } while (i == mLastRotation);
    mLastRotation = i;
    MraidDisplayController.access$4(this$0, mLastRotation);
  }
  
  public void register(Context paramContext)
  {
    mContext = paramContext;
    paramContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
  }
  
  public void unregister()
  {
    mContext.unregisterReceiver(this);
    mContext = null;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidDisplayController.OrientationBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
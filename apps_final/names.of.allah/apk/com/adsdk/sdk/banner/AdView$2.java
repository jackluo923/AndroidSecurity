package com.adsdk.sdk.banner;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adsdk.sdk.Log;

class AdView$2
  extends BroadcastReceiver
{
  AdView$2(AdView paramAdView) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF")) {
      if (this$0.mIsInForeground)
      {
        Log.d("ADSDK", "Screen sleep with ad in foreground, disable refresh");
        this$0.pause();
      }
    }
    while (!paramIntent.getAction().equals("android.intent.action.USER_PRESENT"))
    {
      return;
      Log.d("ADSDK", "Screen sleep but ad in background; refresh should already be disabled");
      return;
    }
    if (this$0.mIsInForeground)
    {
      this$0.resume();
      Log.d("ADSDK", "Screen wake / ad in foreground, reset refresh");
      return;
    }
    Log.d("ADSDK", "Screen wake but ad in background; don't enable refresh");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
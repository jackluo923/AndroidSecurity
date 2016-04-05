package com.appyet.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appyet.activity.DownloadActivity;

public class DownloadReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getAction();
    if ((!"android.intent.action.DOWNLOAD_COMPLETE".equals(paramIntent)) && (("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED".equals(paramIntent)) || ("android.intent.action.VIEW_DOWNLOADS".equals(paramIntent)))) {
      paramContext.startActivity(new Intent(paramContext, DownloadActivity.class));
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.receiver.DownloadReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
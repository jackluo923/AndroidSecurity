package com.inmobi.re.controller;

import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.inmobi.re.container.IMWebView;

class JSUtilityController$f
  extends BroadcastReceiver
{
  JSUtilityController$f(JSUtilityController paramJSUtilityController) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if ("android.intent.action.DOWNLOAD_COMPLETE".equals(paramIntent.getAction()))
    {
      long l = paramIntent.getLongExtra("extra_download_id", 0L);
      paramContext = new DownloadManager.Query();
      paramContext.setFilterById(new long[] { l });
      paramContext = a.a.query(paramContext);
      if (paramContext.moveToFirst())
      {
        i = paramContext.getColumnIndex("status");
        if (16 != paramContext.getInt(i)) {
          break label99;
        }
        a.imWebView.raiseError("download failed", "storePicture");
      }
    }
    return;
    label99:
    paramContext.getInt(i);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSUtilityController.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
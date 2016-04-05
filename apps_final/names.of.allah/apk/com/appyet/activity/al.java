package com.appyet.activity;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.af;
import com.appyet.manager.bp;

final class al
  implements View.OnClickListener
{
  al(WebActionActivity paramWebActionActivity) {}
  
  public final void onClick(View paramView)
  {
    if (Build.VERSION.SDK_INT < 9) {
      return;
    }
    ba).l.a();
    paramView = (DownloadManager)a.getSystemService("download");
    DownloadManager.Request localRequest = new DownloadManager.Request(Uri.parse(WebActionActivity.c(a)));
    String str = ba).l.d(WebActionActivity.c(a));
    localRequest.setDestinationUri(ba).l.b(str));
    if (Build.VERSION.SDK_INT >= 11)
    {
      localRequest.setNotificationVisibility(1);
      if (!ba).d.s()) {
        break label177;
      }
      localRequest.setAllowedNetworkTypes(2);
    }
    for (;;)
    {
      localRequest.setAllowedOverRoaming(false);
      localRequest.setTitle(str);
      localRequest.setDescription(WebActionActivity.c(a));
      paramView.enqueue(localRequest);
      a.finish();
      return;
      localRequest.setShowRunningNotification(true);
      break;
      label177:
      localRequest.setAllowedNetworkTypes(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
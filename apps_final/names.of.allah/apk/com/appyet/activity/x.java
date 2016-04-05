package com.appyet.activity;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;
import com.appyet.manager.af;
import com.appyet.manager.bp;

final class x
  implements View.OnClickListener
{
  x(PodcastActionActivity paramPodcastActionActivity) {}
  
  public final void onClick(View paramView)
  {
    if (Build.VERSION.SDK_INT < 9) {
      return;
    }
    aa).l.a();
    paramView = (DownloadManager)a.getSystemService("download");
    DownloadManager.Request localRequest = new DownloadManager.Request(Uri.parse(PodcastActionActivity.b(a).getEnclosureLink()));
    String str = aa).l.a(PodcastActionActivity.b(a).getTitle(), PodcastActionActivity.b(a).getEnclosureLink(), PodcastActionActivity.b(a).getEnclosureType());
    localRequest.setDestinationUri(aa).l.b(str));
    if (Build.VERSION.SDK_INT >= 11)
    {
      localRequest.setNotificationVisibility(1);
      if (!aa).d.s()) {
        break label206;
      }
      localRequest.setAllowedNetworkTypes(2);
    }
    for (;;)
    {
      localRequest.setAllowedOverRoaming(false);
      localRequest.setTitle(str);
      localRequest.setDescription(PodcastActionActivity.b(a).getEnclosureLink());
      paramView.enqueue(localRequest);
      a.finish();
      return;
      localRequest.setShowRunningNotification(true);
      break;
      label206:
      localRequest.setAllowedNetworkTypes(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
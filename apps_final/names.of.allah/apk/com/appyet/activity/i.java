package com.appyet.activity;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.v;
import com.appyet.manager.as;
import java.io.File;

final class i
  implements AdapterView.OnItemClickListener
{
  i(DownloadActivity paramDownloadActivity) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (File)DownloadActivity.a(a).getItem(paramInt);
    try
    {
      paramView = v.a(paramAdapterView.getPath());
      if (paramView == null) {
        break label194;
      }
      if (paramView.contains("video"))
      {
        paramView = new Intent(a.a, VideoPlayerActivity.class);
        paramView.putExtra("URL", Uri.fromFile(paramAdapterView).toString());
        paramView.putExtra("TITLE", paramAdapterView.getName());
        a.a.startActivity(paramView);
        return;
      }
      if (paramView.contains("audio"))
      {
        a.a.c.a(paramAdapterView);
        a.a.c.a(false);
        paramAdapterView = new Intent(a.a, MediaPlayerActivity.class);
        a.startActivity(paramAdapterView);
        return;
      }
    }
    catch (Exception paramAdapterView)
    {
      d.a(paramAdapterView);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.fromFile(paramAdapterView), paramView);
    a.a.startActivity(localIntent);
    return;
    label194:
    paramAdapterView = new Intent("android.intent.action.VIEW", Uri.fromFile(paramAdapterView));
    a.a.startActivity(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.zxing.client.android.share;

import android.app.ListActivity;
import android.content.Intent;
import android.view.View;
import android.widget.ListView;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;
import java.util.ArrayList;
import java.util.List;

public final class AppPickerActivity
  extends ListActivity
{
  private LoadPackagesAsyncTask backgroundTask;
  private final List<String[]> labelsPackages = new ArrayList();
  private final AsyncTaskExecInterface taskExec = (AsyncTaskExecInterface)new AsyncTaskExecManager().build();
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt >= 0) && (paramInt < labelsPackages.size()))
    {
      paramListView = "market://details?id=" + ((String[])labelsPackages.get(paramInt))[1];
      paramView = new Intent();
      paramView.addFlags(524288);
      paramView.putExtra("url", paramListView);
      setResult(-1, paramView);
    }
    for (;;)
    {
      finish();
      return;
      setResult(0);
    }
  }
  
  protected void onPause()
  {
    LoadPackagesAsyncTask localLoadPackagesAsyncTask = backgroundTask;
    if (localLoadPackagesAsyncTask != null)
    {
      localLoadPackagesAsyncTask.cancel(true);
      backgroundTask = null;
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    labelsPackages.clear();
    backgroundTask = new LoadPackagesAsyncTask(this);
    taskExec.execute(backgroundTask, new List[] { labelsPackages });
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.AppPickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
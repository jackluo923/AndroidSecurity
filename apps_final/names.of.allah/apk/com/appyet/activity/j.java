package com.appyet.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.io.File;

final class j
  implements DialogInterface.OnClickListener
{
  j(DownloadActivity paramDownloadActivity, int paramInt) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    paramDialogInterface = (File)DownloadActivity.a(b).getItem(a);
    DownloadActivity.a(b).remove(paramDialogInterface);
    paramDialogInterface.delete();
    DownloadActivity.a(b).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
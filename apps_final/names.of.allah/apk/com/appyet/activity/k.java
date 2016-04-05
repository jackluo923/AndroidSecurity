package com.appyet.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bp;

final class k
  implements DialogInterface.OnClickListener
{
  k(DownloadActivity paramDownloadActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.d.h(paramInt);
    new m(a).a(new Void[0]);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
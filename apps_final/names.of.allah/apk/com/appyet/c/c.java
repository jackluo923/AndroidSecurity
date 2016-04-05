package com.appyet.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.bp;

final class c
  implements DialogInterface.OnClickListener
{
  c(a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      aa).d.W();
      paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + a.a(a).getPackageName()));
      a.startActivity(paramDialogInterface);
      return;
    }
    catch (Exception paramDialogInterface)
    {
      d.a(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
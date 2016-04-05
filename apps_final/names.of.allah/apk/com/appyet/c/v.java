package com.appyet.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bp;

final class v
  implements DialogInterface.OnClickListener
{
  v(r paramr) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.d.a(paramInt);
    r.a(a).clear();
    a.c();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.appyet.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bp;

final class b
  implements DialogInterface.OnClickListener
{
  b(a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa).d.f(paramInt);
    a.b(a).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
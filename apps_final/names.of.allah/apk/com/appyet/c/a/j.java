package com.appyet.c.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.view.ViewPager;

final class j
  implements DialogInterface.OnClickListener
{
  j(i parami) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    i.a(a).setCurrentItem(paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
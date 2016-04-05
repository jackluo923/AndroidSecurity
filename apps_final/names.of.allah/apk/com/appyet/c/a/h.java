package com.appyet.c.a;

import android.app.ProgressDialog;
import com.appyet.d.d;

final class h
  extends com.appyet.f.a<Void, Void, Void>
{
  private ProgressDialog b;
  private boolean c;
  
  private h(a parama) {}
  
  protected final void a()
  {
    try
    {
      b = new ProgressDialog(a.getActivity());
      b.setProgressStyle(0);
      b.setCancelable(true);
      b.setIndeterminate(true);
      b.setCanceledOnTouchOutside(false);
      b.setMessage(a.getString(2131230853));
      b.show();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
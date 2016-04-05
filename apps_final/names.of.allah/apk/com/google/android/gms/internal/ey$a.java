package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

class ey$a
  extends MutableContextWrapper
{
  private Context lx;
  private Activity sD;
  
  public ey$a(Context paramContext)
  {
    super(paramContext);
    setBaseContext(paramContext);
  }
  
  public Context ca()
  {
    return sD;
  }
  
  public void setBaseContext(Context paramContext)
  {
    lx = paramContext.getApplicationContext();
    if ((paramContext instanceof Activity)) {}
    for (paramContext = (Activity)paramContext;; paramContext = null)
    {
      sD = paramContext;
      super.setBaseContext(lx);
      return;
    }
  }
  
  public void startActivity(Intent paramIntent)
  {
    if (sD != null)
    {
      sD.startActivity(paramIntent);
      return;
    }
    paramIntent.setFlags(268435456);
    lx.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ey.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
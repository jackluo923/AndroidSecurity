package com.appyet.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bq;

public final class c
  extends BroadcastReceiver
{
  private ApplicationContext a;
  private b b;
  
  public c(b paramb)
  {
    b = paramb;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    a = ((ApplicationContext)paramContext.getApplicationContext());
    if (a.a)
    {
      b.b();
      if ((paramIntent.getExtras() == null) || (!paramIntent.getExtras().containsKey("moduleid"))) {
        break label145;
      }
      paramContext = Long.valueOf(paramIntent.getLongExtra("moduleid", -1L));
    }
    for (boolean bool = paramIntent.getBooleanExtra("forced", false);; bool = false)
    {
      if ((paramContext == null) && ((bool) || (a.a)) && (a.t.a() > 0)) {
        Toast.makeText(a, String.format(a.getString(2131230806), new Object[] { Integer.valueOf(a.t.a()) }), 1).show();
      }
      return;
      label145:
      paramContext = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.receiver.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
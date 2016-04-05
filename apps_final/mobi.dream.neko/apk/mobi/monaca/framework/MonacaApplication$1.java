package mobi.monaca.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class MonacaApplication$1
  extends BroadcastReceiver
{
  MonacaApplication$1(MonacaApplication paramMonacaApplication) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("gcm_registered_regid");
    this$0.sendGCMRegisterIdToAppAPI(paramContext);
    this$0.unregisterReceiver(this);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaApplication.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
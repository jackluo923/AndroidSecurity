package mobi.monaca.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import mobi.monaca.utils.gcm.GCMPushDataset;

class MonacaPageActivity$2
  extends BroadcastReceiver
{
  MonacaPageActivity$2(MonacaPageActivity paramMonacaPageActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this$0.isIndex())
    {
      paramContext = (GCMPushDataset)paramIntent.getExtras().get("get_pushdata_key");
      this$0.sendPushToWebView(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
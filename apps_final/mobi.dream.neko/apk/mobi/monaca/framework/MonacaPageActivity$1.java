package mobi.monaca.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import mobi.monaca.framework.psedo.R.string;

class MonacaPageActivity$1
  extends BroadcastReceiver
{
  MonacaPageActivity$1(MonacaPageActivity paramMonacaPageActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra(this$0.getString(R.string.key_closepage_level), 0);
    if (this$0.pageIndex >= i) {
      this$0.finish();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
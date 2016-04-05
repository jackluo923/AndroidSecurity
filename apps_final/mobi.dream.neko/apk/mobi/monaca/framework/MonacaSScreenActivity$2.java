package mobi.monaca.framework;

import android.widget.Toast;
import mobi.monaca.framework.psedo.R.string;

class MonacaSScreenActivity$2
  implements Runnable
{
  MonacaSScreenActivity$2(MonacaSScreenActivity paramMonacaSScreenActivity) {}
  
  public void run()
  {
    Toast.makeText(this$0, MonacaApplication.getStringFromResource(R.string.message_launch_failed), 1).show();
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaSScreenActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package mobi.monaca.framework;

import android.content.Intent;

class MonacaSScreenActivity$1$1
  implements Runnable
{
  MonacaSScreenActivity$1$1(MonacaSScreenActivity.1 param1) {}
  
  public void run()
  {
    Intent localIntent = this$1.this$0.createActivityIntent();
    this$1.this$0.startActivity(localIntent);
    this$1.this$0.finish();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaSScreenActivity.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
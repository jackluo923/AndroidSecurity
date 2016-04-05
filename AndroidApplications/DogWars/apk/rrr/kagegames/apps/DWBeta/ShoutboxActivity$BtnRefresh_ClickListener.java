package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class ShoutboxActivity$BtnRefresh_ClickListener
  implements View.OnClickListener
{
  final ShoutboxActivity this$0;
  
  private ShoutboxActivity$BtnRefresh_ClickListener(ShoutboxActivity paramShoutboxActivity) {}
  
  ShoutboxActivity$BtnRefresh_ClickListener(ShoutboxActivity paramShoutboxActivity, BtnRefresh_ClickListener paramBtnRefresh_ClickListener)
  {
    this(paramShoutboxActivity);
  }
  
  public void onClick(View paramView)
  {
    ShoutboxActivity.LoadShoutboxTask localLoadShoutboxTask1 = new kagegames/apps/DWBeta/ShoutboxActivity$LoadShoutboxTask;
    ShoutboxActivity localShoutboxActivity = this$0;
    ShoutboxActivity.LoadShoutboxTask localLoadShoutboxTask2 = null;
    localLoadShoutboxTask1.<init>(localShoutboxActivity, localLoadShoutboxTask2);
    int i = 0;
    String[] arrayOfString = new String[i];
    localLoadShoutboxTask1.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity.BtnRefresh_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
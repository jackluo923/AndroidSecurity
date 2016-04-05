package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class SystemMsgModalActivity$BtnOk_ClickListener
  implements View.OnClickListener
{
  final SystemMsgModalActivity this$0;
  
  private SystemMsgModalActivity$BtnOk_ClickListener(SystemMsgModalActivity paramSystemMsgModalActivity) {}
  
  SystemMsgModalActivity$BtnOk_ClickListener(SystemMsgModalActivity paramSystemMsgModalActivity, BtnOk_ClickListener paramBtnOk_ClickListener)
  {
    this(paramSystemMsgModalActivity);
  }
  
  public void onClick(View paramView)
  {
    SystemMsgModalActivity localSystemMsgModalActivity = this$0;
    localSystemMsgModalActivity.finish();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SystemMsgModalActivity.BtnOk_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
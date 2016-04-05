package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FightMainActivity$BtnReadyToFight_ClickListener
  implements View.OnClickListener
{
  final FightMainActivity this$0;
  
  private FightMainActivity$BtnReadyToFight_ClickListener(FightMainActivity paramFightMainActivity) {}
  
  FightMainActivity$BtnReadyToFight_ClickListener(FightMainActivity paramFightMainActivity, BtnReadyToFight_ClickListener paramBtnReadyToFight_ClickListener)
  {
    this(paramFightMainActivity);
  }
  
  public void onClick(View paramView)
  {
    FightMainActivity.ReadyToFightTask localReadyToFightTask1 = new kagegames/apps/DWBeta/FightMainActivity$ReadyToFightTask;
    FightMainActivity localFightMainActivity = this$0;
    FightMainActivity.ReadyToFightTask localReadyToFightTask2 = null;
    localReadyToFightTask1.<init>(localFightMainActivity, localReadyToFightTask2);
    int i = 0;
    String[] arrayOfString = new String[i];
    localReadyToFightTask1.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightMainActivity.BtnReadyToFight_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
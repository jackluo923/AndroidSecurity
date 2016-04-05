package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FightChallengeActivity$BtnBringIt_ClickListener
  implements View.OnClickListener
{
  final FightChallengeActivity this$0;
  
  private FightChallengeActivity$BtnBringIt_ClickListener(FightChallengeActivity paramFightChallengeActivity) {}
  
  FightChallengeActivity$BtnBringIt_ClickListener(FightChallengeActivity paramFightChallengeActivity, BtnBringIt_ClickListener paramBtnBringIt_ClickListener)
  {
    this(paramFightChallengeActivity);
  }
  
  public void onClick(View paramView)
  {
    FightChallengeActivity.BringItTask localBringItTask1 = new kagegames/apps/DWBeta/FightChallengeActivity$BringItTask;
    FightChallengeActivity localFightChallengeActivity = this$0;
    FightChallengeActivity.BringItTask localBringItTask2 = null;
    localBringItTask1.<init>(localFightChallengeActivity, localBringItTask2);
    int i = 0;
    String[] arrayOfString = new String[i];
    localBringItTask1.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightChallengeActivity.BtnBringIt_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
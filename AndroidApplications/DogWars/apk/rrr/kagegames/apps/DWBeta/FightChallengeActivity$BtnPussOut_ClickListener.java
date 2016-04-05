package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FightChallengeActivity$BtnPussOut_ClickListener
  implements View.OnClickListener
{
  final FightChallengeActivity this$0;
  
  private FightChallengeActivity$BtnPussOut_ClickListener(FightChallengeActivity paramFightChallengeActivity) {}
  
  FightChallengeActivity$BtnPussOut_ClickListener(FightChallengeActivity paramFightChallengeActivity, BtnPussOut_ClickListener paramBtnPussOut_ClickListener)
  {
    this(paramFightChallengeActivity);
  }
  
  public void onClick(View paramView)
  {
    FightChallengeActivity.PussOutTask localPussOutTask1 = new kagegames/apps/DWBeta/FightChallengeActivity$PussOutTask;
    FightChallengeActivity localFightChallengeActivity = this$0;
    FightChallengeActivity.PussOutTask localPussOutTask2 = null;
    localPussOutTask1.<init>(localFightChallengeActivity, localPussOutTask2);
    int i = 0;
    String[] arrayOfString = new String[i];
    localPussOutTask1.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightChallengeActivity.BtnPussOut_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
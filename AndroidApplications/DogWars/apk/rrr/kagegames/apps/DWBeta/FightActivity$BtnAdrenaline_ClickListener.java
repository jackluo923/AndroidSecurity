package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FightActivity$BtnAdrenaline_ClickListener
  implements View.OnClickListener
{
  final FightActivity this$0;
  
  private FightActivity$BtnAdrenaline_ClickListener(FightActivity paramFightActivity) {}
  
  FightActivity$BtnAdrenaline_ClickListener(FightActivity paramFightActivity, BtnAdrenaline_ClickListener paramBtnAdrenaline_ClickListener)
  {
    this(paramFightActivity);
  }
  
  public void onClick(View paramView)
  {
    Object localObject3 = null;
    int j = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurFightResult();
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = new kagegames/apps/DWBeta/FightActivity$SendConfirmFightOverTask;
      localObject2 = this$0;
      ((FightActivity.SendConfirmFightOverTask)localObject1).<init>((FightActivity)localObject2, (FightActivity.SendConfirmFightOverTask)localObject3);
      localObject2 = new String[j];
      ((FightActivity.SendConfirmFightOverTask)localObject1).execute((Object[])localObject2);
    }
    for (;;)
    {
      return;
      localObject1 = new kagegames/apps/DWBeta/FightActivity$SendResponseTask;
      localObject2 = this$0;
      ((FightActivity.SendResponseTask)localObject1).<init>((FightActivity)localObject2, (FightActivity.SendResponseTask)localObject3);
      int i = 1;
      String[] arrayOfString = new String[i];
      localObject3 = "EPI_PEN";
      arrayOfString[j] = localObject3;
      ((FightActivity.SendResponseTask)localObject1).execute(arrayOfString);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightActivity.BtnAdrenaline_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
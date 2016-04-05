package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class FightMainActivity$BtnPickFight_ClickListener
  implements View.OnClickListener
{
  final FightMainActivity this$0;
  
  private FightMainActivity$BtnPickFight_ClickListener(FightMainActivity paramFightMainActivity) {}
  
  FightMainActivity$BtnPickFight_ClickListener(FightMainActivity paramFightMainActivity, BtnPickFight_ClickListener paramBtnPickFight_ClickListener)
  {
    this(paramFightMainActivity);
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    Object localObject = this$0;
    localObject = ((FightMainActivity)localObject).getApplicationContext();
    String str = "kagegames.apps.DWBeta.FightListActivity";
    localIntent.setClassName((Context)localObject, str);
    localObject = this$0;
    ((FightMainActivity)localObject).startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightMainActivity.BtnPickFight_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
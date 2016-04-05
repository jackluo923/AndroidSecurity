package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

class DWMainActivity$BtnFight_ClickListener
  implements View.OnClickListener
{
  final DWMainActivity this$0;
  
  private DWMainActivity$BtnFight_ClickListener(DWMainActivity paramDWMainActivity) {}
  
  DWMainActivity$BtnFight_ClickListener(DWMainActivity paramDWMainActivity, BtnFight_ClickListener paramBtnFight_ClickListener)
  {
    this(paramDWMainActivity);
  }
  
  public void onClick(View paramView)
  {
    int k = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurDog();
    boolean bool = ((DWDog)localObject1).CanFight();
    Object localObject2;
    if (bool)
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localObject2 = this$0;
      localObject2 = ((DWMainActivity)localObject2).getApplicationContext();
      String str1 = "kagegames.apps.DWBeta.FightMainActivity";
      localIntent.setClassName((Context)localObject2, str1);
      localObject2 = this$0;
      int j = 6;
      ((DWMainActivity)localObject2).startActivityForResult(localIntent, j);
    }
    for (;;)
    {
      return;
      localObject2 = DWApplication.getInstance();
      String str2 = "you gotta learn the ropes before you can fight! hit up the training area...";
      Toast localToast = Toast.makeText((Context)localObject2, str2, k);
      int i = 17;
      localToast.setGravity(i, k, k);
      localToast.show();
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWMainActivity.BtnFight_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
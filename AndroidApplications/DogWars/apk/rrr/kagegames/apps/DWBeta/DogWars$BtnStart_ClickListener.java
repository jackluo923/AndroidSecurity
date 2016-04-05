package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class DogWars$BtnStart_ClickListener
  implements View.OnClickListener
{
  final DogWars this$0;
  
  private DogWars$BtnStart_ClickListener(DogWars paramDogWars) {}
  
  DogWars$BtnStart_ClickListener(DogWars paramDogWars, BtnStart_ClickListener paramBtnStart_ClickListener)
  {
    this(paramDogWars);
  }
  
  public void onClick(View paramView)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    boolean bool1 = ((PrefsManager)localObject1).isOwnerDogCreated();
    Object localObject3;
    String str;
    if (bool1)
    {
      Object localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getPrefsManager();
      boolean bool2 = ((PrefsManager)localObject2).loadOwnerAndDogIDs();
      if (bool2)
      {
        Intent localIntent2 = new android/content/Intent;
        localIntent2.<init>();
        localObject3 = this$0;
        localObject3 = ((DogWars)localObject3).getApplicationContext();
        str = "kagegames.apps.DWBeta.DWMainActivity";
        localIntent2.setClassName((Context)localObject3, str);
        localObject3 = this$0;
        ((DogWars)localObject3).startActivity(localIntent2);
        localObject3 = this$0;
        ((DogWars)localObject3).finish();
      }
    }
    for (;;)
    {
      return;
      Intent localIntent1 = new android/content/Intent;
      localIntent1.<init>();
      localObject3 = this$0;
      localObject3 = ((DogWars)localObject3).getApplicationContext();
      str = "kagegames.apps.DWBeta.SelectPlayerActivity";
      localIntent1.setClassName((Context)localObject3, str);
      localObject3 = this$0;
      int i = 1;
      ((DogWars)localObject3).startActivityForResult(localIntent1, i);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DogWars.BtnStart_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
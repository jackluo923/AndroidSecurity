package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

public class DogWars
  extends _DWActivity
{
  Button btnStart;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = -1;
    switch (paramInt1)
    {
    }
    for (;;)
    {
      return;
      if (paramInt2 == i)
      {
        Intent localIntent1 = new android/content/Intent;
        localIntent1.<init>();
        Context localContext1 = getApplicationContext();
        String str = "kagegames.apps.DWBeta.IntroStoryActivity";
        localIntent1.setClassName(localContext1, str);
        int j = 3;
        startActivityForResult(localIntent1, j);
        continue;
        if (paramInt2 == j)
        {
          Intent localIntent2 = new android/content/Intent;
          localIntent2.<init>();
          Context localContext2 = getApplicationContext();
          str = "kagegames.apps.DWBeta.SelectDogTypeActivity";
          localIntent2.setClassName(localContext2, str);
          int k = 2;
          startActivityForResult(localIntent2, k);
          continue;
          if (paramInt2 == k)
          {
            Intent localIntent3 = new android/content/Intent;
            localIntent3.<init>();
            Context localContext3 = getApplicationContext();
            str = "kagegames.apps.DWBeta.NameOwnerDogActivity";
            localIntent3.setClassName(localContext3, str);
            int m = 4;
            startActivityForResult(localIntent3, m);
            continue;
            if (paramInt2 == m)
            {
              Intent localIntent4 = new android/content/Intent;
              localIntent4.<init>();
              Context localContext4 = getApplicationContext();
              str = "kagegames.apps.DWBeta.DWMainActivity";
              localIntent4.setClassName(localContext4, str);
              startActivity(localIntent4);
              finish();
            }
          }
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 2130903070;
    setContentView(i);
    i = 2131099789;
    Object localObject = findViewById(i);
    localObject = (Button)localObject;
    btnStart = ((Button)localObject);
    localObject = btnStart;
    DogWars.BtnStart_ClickListener localBtnStart_ClickListener1 = new kagegames/apps/DWBeta/DogWars$BtnStart_ClickListener;
    DogWars.BtnStart_ClickListener localBtnStart_ClickListener2 = null;
    localBtnStart_ClickListener1.<init>(this, localBtnStart_ClickListener2);
    ((Button)localObject).setOnClickListener(localBtnStart_ClickListener1);
    localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getSoundsManager();
    ((SoundsManager)localObject).playIntroMusic();
  }
  
  public void onDestroy()
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getSoundsManager();
    ((SoundsManager)localObject).pauseSound();
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DogWars
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
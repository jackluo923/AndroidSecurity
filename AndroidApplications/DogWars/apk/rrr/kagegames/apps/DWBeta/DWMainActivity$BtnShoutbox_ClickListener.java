package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class DWMainActivity$BtnShoutbox_ClickListener
  implements View.OnClickListener
{
  final DWMainActivity this$0;
  
  private DWMainActivity$BtnShoutbox_ClickListener(DWMainActivity paramDWMainActivity) {}
  
  DWMainActivity$BtnShoutbox_ClickListener(DWMainActivity paramDWMainActivity, BtnShoutbox_ClickListener paramBtnShoutbox_ClickListener)
  {
    this(paramDWMainActivity);
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    Object localObject = this$0;
    localObject = ((DWMainActivity)localObject).getApplicationContext();
    String str = "kagegames.apps.DWBeta.ShoutboxActivity";
    localIntent.setClassName((Context)localObject, str);
    localObject = this$0;
    ((DWMainActivity)localObject).startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWMainActivity.BtnShoutbox_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
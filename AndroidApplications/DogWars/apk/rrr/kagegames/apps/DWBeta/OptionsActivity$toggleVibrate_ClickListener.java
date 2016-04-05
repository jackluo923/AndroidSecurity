package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;

class OptionsActivity$toggleVibrate_ClickListener
  implements View.OnClickListener
{
  final OptionsActivity this$0;
  
  private OptionsActivity$toggleVibrate_ClickListener(OptionsActivity paramOptionsActivity) {}
  
  OptionsActivity$toggleVibrate_ClickListener(OptionsActivity paramOptionsActivity, toggleVibrate_ClickListener paramtoggleVibrate_ClickListener)
  {
    this(paramOptionsActivity);
  }
  
  public void onClick(View paramView)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    Object localObject2 = this$0;
    localObject2 = toggleVibrate;
    boolean bool = ((ToggleButton)localObject2).isChecked();
    ((PrefsManager)localObject1).setVibrateOn(bool);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.OptionsActivity.toggleVibrate_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
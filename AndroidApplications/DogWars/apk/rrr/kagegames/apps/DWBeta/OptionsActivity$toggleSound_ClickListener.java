package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;

class OptionsActivity$toggleSound_ClickListener
  implements View.OnClickListener
{
  final OptionsActivity this$0;
  
  private OptionsActivity$toggleSound_ClickListener(OptionsActivity paramOptionsActivity) {}
  
  OptionsActivity$toggleSound_ClickListener(OptionsActivity paramOptionsActivity, toggleSound_ClickListener paramtoggleSound_ClickListener)
  {
    this(paramOptionsActivity);
  }
  
  public void onClick(View paramView)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    Object localObject2 = this$0;
    localObject2 = toggleSound;
    boolean bool = ((ToggleButton)localObject2).isChecked();
    ((PrefsManager)localObject1).setSoundOn(bool);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.OptionsActivity.toggleSound_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
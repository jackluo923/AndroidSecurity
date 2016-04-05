package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class BuildCredActivity$BtnMarket_ClickListener
  implements View.OnClickListener
{
  final BuildCredActivity this$0;
  
  private BuildCredActivity$BtnMarket_ClickListener(BuildCredActivity paramBuildCredActivity) {}
  
  BuildCredActivity$BtnMarket_ClickListener(BuildCredActivity paramBuildCredActivity, BtnMarket_ClickListener paramBtnMarket_ClickListener)
  {
    this(paramBuildCredActivity);
  }
  
  public void onClick(View paramView)
  {
    BuildCredActivity localBuildCredActivity = this$0;
    String str = "market://details?id=kagegames.apps.DWBeta";
    localBuildCredActivity.LaunchMarketplace(str);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.BuildCredActivity.BtnMarket_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
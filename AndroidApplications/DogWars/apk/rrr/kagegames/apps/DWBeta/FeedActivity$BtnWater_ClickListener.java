package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FeedActivity$BtnWater_ClickListener
  implements View.OnClickListener
{
  final FeedActivity this$0;
  
  private FeedActivity$BtnWater_ClickListener(FeedActivity paramFeedActivity) {}
  
  FeedActivity$BtnWater_ClickListener(FeedActivity paramFeedActivity, BtnWater_ClickListener paramBtnWater_ClickListener)
  {
    this(paramFeedActivity);
  }
  
  public void onClick(View paramView)
  {
    FeedActivity.FeedWaterTask localFeedWaterTask = new kagegames/apps/DWBeta/FeedActivity$FeedWaterTask;
    FeedActivity localFeedActivity = this$0;
    String str1 = "watering your dog...";
    localFeedWaterTask.<init>(localFeedActivity, str1);
    int i = 2;
    String[] arrayOfString = new String[i];
    int j = 0;
    String str2 = "true";
    arrayOfString[j] = str2;
    j = 1;
    str2 = null;
    arrayOfString[j] = str2;
    localFeedWaterTask.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FeedActivity.BtnWater_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
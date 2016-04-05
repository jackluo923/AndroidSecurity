package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class FeedActivity$BtnRegDogFood_ClickListener
  implements View.OnClickListener
{
  final FeedActivity this$0;
  
  private FeedActivity$BtnRegDogFood_ClickListener(FeedActivity paramFeedActivity) {}
  
  FeedActivity$BtnRegDogFood_ClickListener(FeedActivity paramFeedActivity, BtnRegDogFood_ClickListener paramBtnRegDogFood_ClickListener)
  {
    this(paramFeedActivity);
  }
  
  public void onClick(View paramView)
  {
    FeedActivity.FeedWaterTask localFeedWaterTask = new kagegames/apps/DWBeta/FeedActivity$FeedWaterTask;
    FeedActivity localFeedActivity = this$0;
    String str1 = "feeding your dog...";
    localFeedWaterTask.<init>(localFeedActivity, str1);
    int i = 2;
    String[] arrayOfString = new String[i];
    int j = 0;
    String str2 = "false";
    arrayOfString[j] = str2;
    j = 1;
    str2 = "REG_FOOD";
    arrayOfString[j] = str2;
    localFeedWaterTask.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FeedActivity.BtnRegDogFood_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
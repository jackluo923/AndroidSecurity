package kagegames.apps.DWBeta;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.ViewFlipper;

class IntroStoryActivity$BtnNext_ClickListener
  implements View.OnClickListener
{
  final IntroStoryActivity this$0;
  
  private IntroStoryActivity$BtnNext_ClickListener(IntroStoryActivity paramIntroStoryActivity) {}
  
  IntroStoryActivity$BtnNext_ClickListener(IntroStoryActivity paramIntroStoryActivity, BtnNext_ClickListener paramBtnNext_ClickListener)
  {
    this(paramIntroStoryActivity);
  }
  
  public void onClick(View paramView)
  {
    IntroStoryActivity localIntroStoryActivity1 = this$0;
    int i = IntroStoryActivity.access$0(localIntroStoryActivity1);
    int j = 2;
    Object localObject1;
    if (i >= j)
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localObject1 = this$0;
      j = -1;
      ((IntroStoryActivity)localObject1).setResult(j, localIntent);
      localObject1 = this$0;
      ((IntroStoryActivity)localObject1).finish();
    }
    for (;;)
    {
      return;
      localObject1 = this$0;
      j = IntroStoryActivity.access$0((IntroStoryActivity)localObject1);
      j += 1;
      IntroStoryActivity.access$1((IntroStoryActivity)localObject1, j);
      localObject1 = this$0;
      localObject1 = IntroStoryActivity.access$2((IntroStoryActivity)localObject1);
      Object localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = mSelectedNewOwner;
      IntroStoryActivity localIntroStoryActivity2 = this$0;
      int m = IntroStoryActivity.access$0(localIntroStoryActivity2);
      localObject2 = ((NewOwnerObject)localObject2).getStoryBoardText(m);
      ((TextView)localObject1).setText((CharSequence)localObject2);
      localObject1 = this$0;
      localObject1 = IntroStoryActivity.access$3((IntroStoryActivity)localObject1);
      localObject2 = this$0;
      int k = IntroStoryActivity.access$0((IntroStoryActivity)localObject2);
      ((ViewFlipper)localObject1).setDisplayedChild(k);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.IntroStoryActivity.BtnNext_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
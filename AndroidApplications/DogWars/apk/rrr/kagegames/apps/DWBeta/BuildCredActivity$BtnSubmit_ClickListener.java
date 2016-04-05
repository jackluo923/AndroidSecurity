package kagegames.apps.DWBeta;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

class BuildCredActivity$BtnSubmit_ClickListener
  implements View.OnClickListener
{
  final BuildCredActivity this$0;
  
  private BuildCredActivity$BtnSubmit_ClickListener(BuildCredActivity paramBuildCredActivity) {}
  
  BuildCredActivity$BtnSubmit_ClickListener(BuildCredActivity paramBuildCredActivity, BtnSubmit_ClickListener paramBtnSubmit_ClickListener)
  {
    this(paramBuildCredActivity);
  }
  
  public void onClick(View paramView)
  {
    int m = 17;
    int n = 0;
    Object localObject1 = this$0;
    localObject1 = edTags;
    localObject1 = ((EditText)localObject1).getText();
    int i = ((Editable)localObject1).length();
    Object localObject2;
    Toast localToast;
    if (i <= 0)
    {
      localObject2 = this$0;
      String str = "please enter a TAG number";
      localToast = Toast.makeText((Context)localObject2, str, n);
      localToast.setGravity(m, n, n);
      localToast.show();
    }
    for (;;)
    {
      return;
      localObject2 = this$0;
      localObject2 = edTags;
      localObject2 = ((EditText)localObject2).getText();
      int j = ((Editable)localObject2).length();
      int k = DWApplication.TAG_LENGTH;
      Object localObject3;
      Object localObject4;
      if (j > k)
      {
        localObject3 = this$0;
        localObject4 = "TAG is too long";
        localToast = Toast.makeText((Context)localObject3, (CharSequence)localObject4, n);
        localToast.setGravity(m, n, n);
        localToast.show();
      }
      else
      {
        localObject3 = new kagegames/apps/DWBeta/BuildCredActivity$SendTagTask;
        localObject4 = this$0;
        BuildCredActivity.SendTagTask localSendTagTask = null;
        ((BuildCredActivity.SendTagTask)localObject3).<init>((BuildCredActivity)localObject4, localSendTagTask);
        localObject4 = new String[n];
        ((BuildCredActivity.SendTagTask)localObject3).execute((Object[])localObject4);
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.BuildCredActivity.BtnSubmit_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
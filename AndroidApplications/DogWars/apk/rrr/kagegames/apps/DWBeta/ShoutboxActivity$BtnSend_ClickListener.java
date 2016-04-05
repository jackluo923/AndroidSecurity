package kagegames.apps.DWBeta;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

class ShoutboxActivity$BtnSend_ClickListener
  implements View.OnClickListener
{
  final ShoutboxActivity this$0;
  
  private ShoutboxActivity$BtnSend_ClickListener(ShoutboxActivity paramShoutboxActivity) {}
  
  ShoutboxActivity$BtnSend_ClickListener(ShoutboxActivity paramShoutboxActivity, BtnSend_ClickListener paramBtnSend_ClickListener)
  {
    this(paramShoutboxActivity);
  }
  
  public void onClick(View paramView)
  {
    int k = 0;
    Object localObject1 = this$0;
    localObject1 = edShout;
    localObject1 = ((EditText)localObject1).getText();
    int i = ((Editable)localObject1).length();
    Object localObject2;
    if (i <= 0)
    {
      ShoutboxActivity localShoutboxActivity = this$0;
      localObject2 = "please enter some text";
      Toast localToast = Toast.makeText(localShoutboxActivity, (CharSequence)localObject2, k);
      int j = 17;
      localToast.setGravity(j, k, k);
      localToast.show();
    }
    for (;;)
    {
      return;
      ShoutboxActivity.SendTask localSendTask1 = new kagegames/apps/DWBeta/ShoutboxActivity$SendTask;
      localObject2 = this$0;
      ShoutboxActivity.SendTask localSendTask2 = null;
      localSendTask1.<init>((ShoutboxActivity)localObject2, localSendTask2);
      localObject2 = new String[k];
      localSendTask1.execute((Object[])localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity.BtnSend_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
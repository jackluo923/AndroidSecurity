package kagegames.apps.DWBeta;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Toast;

class NameOwnerDogActivity$BtnSubmit_ClickListener
  implements View.OnClickListener
{
  final NameOwnerDogActivity this$0;
  
  private NameOwnerDogActivity$BtnSubmit_ClickListener(NameOwnerDogActivity paramNameOwnerDogActivity) {}
  
  NameOwnerDogActivity$BtnSubmit_ClickListener(NameOwnerDogActivity paramNameOwnerDogActivity, BtnSubmit_ClickListener paramBtnSubmit_ClickListener)
  {
    this(paramNameOwnerDogActivity);
  }
  
  public void onClick(View paramView)
  {
    int k = 18;
    int m = 17;
    int n = 0;
    Object localObject1 = this$0;
    localObject1 = edDogName;
    localObject1 = ((EditText)localObject1).getText();
    int i = ((Editable)localObject1).length();
    Object localObject2;
    Toast localToast;
    if (i <= 0)
    {
      localObject2 = this$0;
      localObject7 = "please enter a name";
      localToast = Toast.makeText((Context)localObject2, (CharSequence)localObject7, n);
      localToast.setGravity(m, n, n);
      localToast.show();
    }
    for (;;)
    {
      return;
      localObject2 = this$0;
      localObject2 = edOwnerName;
      localObject2 = ((EditText)localObject2).getText();
      int j = ((Editable)localObject2).length();
      Object localObject3;
      if (j <= 0)
      {
        localObject3 = this$0;
        localObject7 = "please enter a name";
        localToast = Toast.makeText((Context)localObject3, (CharSequence)localObject7, n);
        localToast.setGravity(m, n, n);
        localToast.show();
      }
      else
      {
        localObject3 = this$0;
        localObject3 = edOwnerName;
        localObject3 = ((EditText)localObject3).getText();
        Object localObject4 = ((Editable)localObject3).length();
        if (localObject4 <= localObject7)
        {
          localObject4 = this$0;
          localObject4 = edDogName;
          localObject4 = ((EditText)localObject4).getText();
          localObject5 = ((Editable)localObject4).length();
          if (localObject5 <= localObject7) {
            break;
          }
        }
        localObject5 = this$0;
        localObject7 = "names must be 18 characters or less.  Please enter a new name.";
        localToast = Toast.makeText((Context)localObject5, (CharSequence)localObject7, n);
        localToast.setGravity(m, n, n);
        localToast.show();
      }
    }
    Object localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getDWGameState();
    localObject5 = mSelectedNewOwner;
    Object localObject7 = this$0;
    localObject7 = edOwnerName;
    localObject7 = ((EditText)localObject7).getText();
    localObject7 = ((Editable)localObject7).toString();
    localObject7 = ((String)localObject7).trim();
    ((NewOwnerObject)localObject5).setName((String)localObject7);
    localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getDWGameState();
    localObject5 = mSelectedNewDog;
    localObject7 = this$0;
    localObject7 = edDogName;
    localObject7 = ((EditText)localObject7).getText();
    localObject7 = ((Editable)localObject7).toString();
    localObject7 = ((String)localObject7).trim();
    ((NewDogObject)localObject5).setName((String)localObject7);
    localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getDWGameState();
    localObject5 = mSelectedNewOwner;
    localObject7 = this$0;
    localObject7 = edOwnerEmail;
    localObject7 = ((EditText)localObject7).getText();
    localObject7 = ((Editable)localObject7).toString();
    localObject7 = ((String)localObject7).trim();
    email = ((String)localObject7);
    localObject5 = this$0;
    localObject5 = radioMale;
    boolean bool = ((RadioButton)localObject5).isChecked();
    Object localObject6;
    if (bool)
    {
      localObject6 = DWApplication.getInstance();
      localObject6 = ((DWApplication)localObject6).getDWGameState();
      localObject6 = mSelectedNewDog;
      localObject7 = "M";
      ((NewDogObject)localObject6).setSex((String)localObject7);
    }
    for (;;)
    {
      localObject6 = new kagegames/apps/DWBeta/NameOwnerDogActivity$NewOwnerDogTask;
      localObject7 = this$0;
      NameOwnerDogActivity.NewOwnerDogTask localNewOwnerDogTask = null;
      ((NameOwnerDogActivity.NewOwnerDogTask)localObject6).<init>((NameOwnerDogActivity)localObject7, localNewOwnerDogTask);
      localObject7 = new String[n];
      ((NameOwnerDogActivity.NewOwnerDogTask)localObject6).execute((Object[])localObject7);
      break;
      localObject6 = DWApplication.getInstance();
      localObject6 = ((DWApplication)localObject6).getDWGameState();
      localObject6 = mSelectedNewDog;
      localObject7 = "F";
      ((NewDogObject)localObject6).setSex((String)localObject7);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.NameOwnerDogActivity.BtnSubmit_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
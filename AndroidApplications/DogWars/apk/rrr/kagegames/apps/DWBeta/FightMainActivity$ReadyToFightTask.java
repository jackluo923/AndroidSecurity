package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;
import android.widget.ToggleButton;

class FightMainActivity$ReadyToFightTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final FightMainActivity this$0;
  
  private FightMainActivity$ReadyToFightTask(FightMainActivity paramFightMainActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramFightMainActivity);
    dialog = localProgressDialog;
  }
  
  FightMainActivity$ReadyToFightTask(FightMainActivity paramFightMainActivity, ReadyToFightTask paramReadyToFightTask)
  {
    this(paramFightMainActivity);
  }
  
  protected Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    String str = doInBackground(paramArrayOfObject);
    return str;
  }
  
  protected String doInBackground(String[] paramArrayOfString)
  {
    String str3 = null;
    Object localObject1 = this$0;
    localObject1 = toggleReadyToFight;
    boolean bool = ((ToggleButton)localObject1).isChecked();
    Object localObject2;
    FightMainActivity localFightMainActivity;
    String str1;
    String str2;
    if (bool)
    {
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getServerRequestsMgr();
      localFightMainActivity = this$0;
      str1 = "TAKE_FIGHT";
      str2 = "Y";
      ((ServerRequestsMgr)localObject2).SendDWCommand(localFightMainActivity, str1, str2, str3);
    }
    for (;;)
    {
      localObject2 = "";
      return (String)localObject2;
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getServerRequestsMgr();
      localFightMainActivity = this$0;
      str1 = "TAKE_FIGHT";
      str2 = "N";
      ((ServerRequestsMgr)localObject2).SendDWCommand(localFightMainActivity, str1, str2, str3);
    }
  }
  
  protected void onPostExecute(Object paramObject)
  {
    paramObject = (String)paramObject;
    onPostExecute((String)paramObject);
  }
  
  protected void onPostExecute(String paramString)
  {
    int k = 1;
    int j = 0;
    ProgressDialog localProgressDialog = dialog;
    boolean bool1 = localProgressDialog.isShowing();
    if (bool1)
    {
      localObject = dialog;
      ((ProgressDialog)localObject).dismiss();
    }
    Object localObject = this$0;
    ((FightMainActivity)localObject).UpdateUI();
    localObject = this$0;
    localObject = toggleReadyToFight;
    boolean bool2 = ((ToggleButton)localObject).isChecked();
    FightMainActivity localFightMainActivity1;
    String str;
    if (bool2)
    {
      localFightMainActivity1 = this$0;
      str = "You have been added to the Pick Fight list.  You will be notified when someone Challenges you...";
    }
    FightMainActivity localFightMainActivity2;
    for (Toast localToast = Toast.makeText(localFightMainActivity1, str, k);; localToast = Toast.makeText(localFightMainActivity2, str, k))
    {
      int i = 17;
      localToast.setGravity(i, j, j);
      localToast.show();
      return;
      localFightMainActivity2 = this$0;
      str = "You have been removed from the Pick Fight list...";
    }
  }
  
  protected void onPreExecute()
  {
    Object localObject = this$0;
    localObject = toggleReadyToFight;
    boolean bool = ((ToggleButton)localObject).isChecked();
    ProgressDialog localProgressDialog;
    String str;
    if (bool)
    {
      localProgressDialog = dialog;
      str = "Turning ON Ready to Fight...";
      localProgressDialog.setMessage(str);
    }
    for (;;)
    {
      localProgressDialog = dialog;
      localProgressDialog.show();
      return;
      localProgressDialog = dialog;
      str = "Turning OFF Ready to Fight...";
      localProgressDialog.setMessage(str);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightMainActivity.ReadyToFightTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
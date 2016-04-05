package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.Toast;

class FightListActivity$PickFightTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final FightListActivity this$0;
  
  private FightListActivity$PickFightTask(FightListActivity paramFightListActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramFightListActivity);
    dialog = localProgressDialog;
  }
  
  FightListActivity$PickFightTask(FightListActivity paramFightListActivity, PickFightTask paramPickFightTask)
  {
    this(paramFightListActivity);
  }
  
  protected Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    String str = doInBackground(paramArrayOfObject);
    return str;
  }
  
  protected String doInBackground(String[] paramArrayOfString)
  {
    String str2 = null;
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getServerRequestsMgr();
    FightListActivity localFightListActivity = this$0;
    String str1 = "PICK_FIGHT";
    ((ServerRequestsMgr)localObject).SendDWCommand(localFightListActivity, str1, str2, str2);
    localObject = "dummy";
    return (String)localObject;
  }
  
  protected void onPostExecute(Object paramObject)
  {
    paramObject = (String)paramObject;
    onPostExecute((String)paramObject);
  }
  
  protected void onPostExecute(String paramString)
  {
    int m = 0;
    ProgressDialog localProgressDialog = dialog;
    boolean bool1 = localProgressDialog.isShowing();
    if (bool1)
    {
      localObject = dialog;
      ((ProgressDialog)localObject).dismiss();
    }
    Object localObject = this$0;
    ((FightListActivity)localObject).UpdateUI();
    localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    boolean bool2 = ((DWGameState)localObject).WasSuccessful();
    if (bool2)
    {
      FightListActivity localFightListActivity1 = this$0;
      String str = "Waiting for opponent's response...you will be updated soon. Be Ready to Fight!";
      int k = 1;
      Toast localToast = Toast.makeText(localFightListActivity1, str, k);
      int i = 17;
      localToast.setGravity(i, m, m);
      localToast.show();
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      FightListActivity localFightListActivity2 = this$0;
      int j = -1;
      localFightListActivity2.setResult(j, localIntent);
      localFightListActivity2 = this$0;
      localFightListActivity2.finish();
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "challenging other player...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightListActivity.PickFightTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
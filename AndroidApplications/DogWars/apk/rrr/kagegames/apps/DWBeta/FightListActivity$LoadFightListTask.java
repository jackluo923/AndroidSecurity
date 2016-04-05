package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;

class FightListActivity$LoadFightListTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final FightListActivity this$0;
  
  private FightListActivity$LoadFightListTask(FightListActivity paramFightListActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramFightListActivity);
    dialog = localProgressDialog;
  }
  
  FightListActivity$LoadFightListTask(FightListActivity paramFightListActivity, LoadFightListTask paramLoadFightListTask)
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
    String str3 = null;
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getServerRequestsMgr();
    FightListActivity localFightListActivity = this$0;
    String str2 = "GET_FIGHT_LIST";
    boolean bool = ((ServerRequestsMgr)localObject).SendDWCommand(localFightListActivity, str2, str3, str3);
    if (!bool) {}
    for (String str1 = "err";; str1 = "") {
      return str1;
    }
  }
  
  protected void onPostExecute(Object paramObject)
  {
    paramObject = (String)paramObject;
    onPostExecute((String)paramObject);
  }
  
  protected void onPostExecute(String paramString)
  {
    ProgressDialog localProgressDialog = dialog;
    boolean bool = localProgressDialog.isShowing();
    if (bool)
    {
      localObject = dialog;
      ((ProgressDialog)localObject).dismiss();
    }
    Object localObject = this$0;
    ((FightListActivity)localObject).UpdateUI();
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Looking for Fighters...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightListActivity.LoadFightListTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
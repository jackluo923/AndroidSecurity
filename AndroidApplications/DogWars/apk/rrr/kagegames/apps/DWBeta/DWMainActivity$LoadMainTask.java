package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.Log;

class DWMainActivity$LoadMainTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final DWMainActivity this$0;
  
  private DWMainActivity$LoadMainTask(DWMainActivity paramDWMainActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramDWMainActivity);
    dialog = localProgressDialog;
  }
  
  DWMainActivity$LoadMainTask(DWMainActivity paramDWMainActivity, LoadMainTask paramLoadMainTask)
  {
    this(paramDWMainActivity);
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
    DWMainActivity localDWMainActivity = this$0;
    String str1 = "POLL_NORMAL";
    ((ServerRequestsMgr)localObject).SendDWCommand(localDWMainActivity, str1, str2, str2);
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
    DWMainActivity localDWMainActivity = this$0;
    localDWMainActivity.UpdateUI();
    localDWMainActivity = this$0;
    boolean bool1 = localDWMainActivity.isFinishing();
    Object localObject;
    if (!bool1)
    {
      ProgressDialog localProgressDialog = dialog;
      boolean bool2 = localProgressDialog.isShowing();
      if (bool2)
      {
        localObject = dialog;
        ((ProgressDialog)localObject).dismiss();
      }
    }
    for (;;)
    {
      return;
      localObject = "DWMainActivity";
      String str = "activity is already finishing. don't dismiss dialog";
      Log.d((String)localObject, str);
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Loading...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWMainActivity.LoadMainTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
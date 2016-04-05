package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.text.Editable;
import android.widget.EditText;

class BuildCredActivity$SendTagTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final BuildCredActivity this$0;
  
  private BuildCredActivity$SendTagTask(BuildCredActivity paramBuildCredActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramBuildCredActivity);
    dialog = localProgressDialog;
  }
  
  BuildCredActivity$SendTagTask(BuildCredActivity paramBuildCredActivity, SendTagTask paramSendTagTask)
  {
    this(paramBuildCredActivity);
  }
  
  protected Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    String str = doInBackground(paramArrayOfObject);
    return str;
  }
  
  protected String doInBackground(String[] paramArrayOfString)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getServerRequestsMgr();
    BuildCredActivity localBuildCredActivity = this$0;
    String str1 = "BUILD_CRED_TAGS";
    Object localObject2 = this$0;
    localObject2 = edTags;
    localObject2 = ((EditText)localObject2).getText();
    localObject2 = ((Editable)localObject2).toString();
    String str2 = null;
    ((ServerRequestsMgr)localObject1).SendDWCommand(localBuildCredActivity, str1, (String)localObject2, str2);
    localObject1 = "dummy";
    return (String)localObject1;
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
    ((BuildCredActivity)localObject).UpdateUI();
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "sending tag...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.BuildCredActivity.SendTagTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
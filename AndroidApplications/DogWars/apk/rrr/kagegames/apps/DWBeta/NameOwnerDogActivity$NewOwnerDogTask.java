package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.Toast;

class NameOwnerDogActivity$NewOwnerDogTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final NameOwnerDogActivity this$0;
  
  private NameOwnerDogActivity$NewOwnerDogTask(NameOwnerDogActivity paramNameOwnerDogActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramNameOwnerDogActivity);
    dialog = localProgressDialog;
  }
  
  NameOwnerDogActivity$NewOwnerDogTask(NameOwnerDogActivity paramNameOwnerDogActivity, NewOwnerDogTask paramNewOwnerDogTask)
  {
    this(paramNameOwnerDogActivity);
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
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getServerRequestsMgr();
    NameOwnerDogActivity localNameOwnerDogActivity = this$0;
    Object localObject2 = DWApplication.getInstance();
    ((DWApplication)localObject2).getServerRequestsMgr();
    localObject2 = "REQUEST_NEW_OWNER_AND_DOG";
    boolean bool = ((ServerRequestsMgr)localObject1).SendDWCommand(localNameOwnerDogActivity, (String)localObject2, str2, str2);
    if (bool) {}
    for (String str1 = "";; str1 = "err") {
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
    int m = 0;
    ProgressDialog localProgressDialog1 = dialog;
    boolean bool = localProgressDialog1.isShowing();
    if (bool)
    {
      ProgressDialog localProgressDialog2 = dialog;
      localProgressDialog2.dismiss();
    }
    int i = paramString.length();
    Object localObject2;
    if (i > 0)
    {
      NameOwnerDogActivity localNameOwnerDogActivity = this$0;
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getErrorMessage();
      Toast localToast = Toast.makeText(localNameOwnerDogActivity, (CharSequence)localObject2, m);
      int j = 17;
      localToast.setGravity(j, m, m);
      localToast.show();
    }
    for (;;)
    {
      return;
      Object localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPrefsManager();
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getCurOwner();
      localObject2 = ((DWOwner)localObject2).getID();
      Object localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getCurDog();
      localObject3 = ((DWDog)localObject3).getID();
      ((PrefsManager)localObject1).saveOwnerAndDogIDs((Long)localObject2, (Long)localObject3);
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localObject1 = this$0;
      int k = -1;
      ((NameOwnerDogActivity)localObject1).setResult(k, localIntent);
      localObject1 = this$0;
      ((NameOwnerDogActivity)localObject1).finish();
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Creating New Owner and Dog...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.NameOwnerDogActivity.NewOwnerDogTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;

class StoreActivity$BuyItemTask
  extends AsyncTask<String, Void, String>
{
  ProgressDialog dialog;
  final StoreActivity this$0;
  
  private StoreActivity$BuyItemTask(StoreActivity paramStoreActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramStoreActivity);
    dialog = localProgressDialog;
  }
  
  StoreActivity$BuyItemTask(StoreActivity paramStoreActivity, BuyItemTask paramBuyItemTask)
  {
    this(paramStoreActivity);
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
    StoreActivity localStoreActivity = this$0;
    String str2 = "BUY_ITEM";
    boolean bool = ((ServerRequestsMgr)localObject).SendDWCommand(localStoreActivity, str2, str3, str3);
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
    ((StoreActivity)localObject).UpdateUI();
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "purchasing item...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreActivity.BuyItemTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
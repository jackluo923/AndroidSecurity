package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;

class FeedActivity$FeedWaterTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  String mMsg;
  final FeedActivity this$0;
  
  public FeedActivity$FeedWaterTask(FeedActivity paramFeedActivity, String paramString)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramFeedActivity);
    dialog = localProgressDialog;
    mMsg = paramString;
  }
  
  protected Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    String str = doInBackground(paramArrayOfObject);
    return str;
  }
  
  protected String doInBackground(String[] paramArrayOfString)
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getServerRequestsMgr();
    FeedActivity localFeedActivity = this$0;
    String str1 = "FEED_WATER";
    int i = 0;
    String str2 = paramArrayOfString[i];
    int j = 1;
    String str3 = paramArrayOfString[j];
    ((ServerRequestsMgr)localObject).SendDWCommand(localFeedActivity, str1, str2, str3);
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
    ProgressDialog localProgressDialog = dialog;
    boolean bool = localProgressDialog.isShowing();
    if (bool)
    {
      localObject = dialog;
      ((ProgressDialog)localObject).dismiss();
    }
    Object localObject = this$0;
    ((FeedActivity)localObject).UpdateUI();
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = mMsg;
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FeedActivity.FeedWaterTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
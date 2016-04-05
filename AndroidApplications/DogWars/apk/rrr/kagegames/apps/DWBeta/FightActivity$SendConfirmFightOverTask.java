package kagegames.apps.DWBeta;

import android.content.Intent;
import android.os.AsyncTask;

class FightActivity$SendConfirmFightOverTask
  extends AsyncTask<String, Void, String>
{
  final FightActivity this$0;
  
  private FightActivity$SendConfirmFightOverTask(FightActivity paramFightActivity) {}
  
  FightActivity$SendConfirmFightOverTask(FightActivity paramFightActivity, SendConfirmFightOverTask paramSendConfirmFightOverTask)
  {
    this(paramFightActivity);
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
    FightActivity localFightActivity = this$0;
    String str1 = "FIGHT_CONFIRM_OVER";
    ((ServerRequestsMgr)localObject).SendDWCommand(localFightActivity, str1, str2, str2);
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
    Object localObject = this$0;
    ((FightActivity)localObject).UpdateUI();
    localObject = this$0;
    localObject = mPollManager;
    ((PollManager)localObject).pause();
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    localObject = this$0;
    int i = -1;
    ((FightActivity)localObject).setResult(i, localIntent);
    localObject = this$0;
    ((FightActivity)localObject).finish();
  }
  
  protected void onPreExecute() {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightActivity.SendConfirmFightOverTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
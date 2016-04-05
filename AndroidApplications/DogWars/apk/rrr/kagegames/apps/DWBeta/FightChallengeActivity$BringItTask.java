package kagegames.apps.DWBeta;

import android.os.AsyncTask;

class FightChallengeActivity$BringItTask
  extends AsyncTask<String, Void, String>
{
  final FightChallengeActivity this$0;
  
  private FightChallengeActivity$BringItTask(FightChallengeActivity paramFightChallengeActivity) {}
  
  FightChallengeActivity$BringItTask(FightChallengeActivity paramFightChallengeActivity, BringItTask paramBringItTask)
  {
    this(paramFightChallengeActivity);
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
    FightChallengeActivity localFightChallengeActivity = this$0;
    String str1 = "CHALLENGE_RESPONSE";
    String str2 = "Y";
    String str3 = null;
    ((ServerRequestsMgr)localObject).SendDWCommand(localFightChallengeActivity, str1, str2, str3);
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
    FightChallengeActivity localFightChallengeActivity = this$0;
    localFightChallengeActivity.UpdateUI();
    localFightChallengeActivity = this$0;
    localFightChallengeActivity.finish();
  }
  
  protected void onPreExecute() {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightChallengeActivity.BringItTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
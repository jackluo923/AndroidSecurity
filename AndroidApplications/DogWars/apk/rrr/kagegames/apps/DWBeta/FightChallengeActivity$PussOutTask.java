package kagegames.apps.DWBeta;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.widget.Toast;

class FightChallengeActivity$PussOutTask
  extends AsyncTask<String, Void, String>
{
  final FightChallengeActivity this$0;
  
  private FightChallengeActivity$PussOutTask(FightChallengeActivity paramFightChallengeActivity) {}
  
  FightChallengeActivity$PussOutTask(FightChallengeActivity paramFightChallengeActivity, PussOutTask paramPussOutTask)
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
    String str2 = "N";
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
    int k = 0;
    FightChallengeActivity localFightChallengeActivity1 = this$0;
    localFightChallengeActivity1.UpdateUI();
    localFightChallengeActivity1 = this$0;
    String str = "Puss out too many times and you lose Cred on the street...";
    int j = 1;
    Toast localToast = Toast.makeText(localFightChallengeActivity1, str, j);
    int i = 17;
    localToast.setGravity(i, k, k);
    localToast.show();
    long l = 3000L;
    SystemClock.sleep(l);
    FightChallengeActivity localFightChallengeActivity2 = this$0;
    localFightChallengeActivity2.finish();
  }
  
  protected void onPreExecute() {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightChallengeActivity.PussOutTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
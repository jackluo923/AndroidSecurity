package kagegames.apps.DWBeta;

import android.os.AsyncTask;

class FightActivity$SendResponseTask
  extends AsyncTask<String, Void, String>
{
  final FightActivity this$0;
  
  private FightActivity$SendResponseTask(FightActivity paramFightActivity) {}
  
  FightActivity$SendResponseTask(FightActivity paramFightActivity, SendResponseTask paramSendResponseTask)
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
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getServerRequestsMgr();
    FightActivity localFightActivity = this$0;
    String str1 = "FIGHT_ATTACK";
    int i = 0;
    String str2 = paramArrayOfString[i];
    String str3 = null;
    ((ServerRequestsMgr)localObject).SendDWCommand(localFightActivity, str1, str2, str3);
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
    FightActivity localFightActivity = this$0;
    localFightActivity.UpdateUI();
  }
  
  protected void onPreExecute() {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightActivity.SendResponseTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
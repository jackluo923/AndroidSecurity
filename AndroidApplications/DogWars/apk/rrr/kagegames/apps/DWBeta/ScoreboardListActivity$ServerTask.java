package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.ListAdapter;
import java.util.List;

class ScoreboardListActivity$ServerTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final ScoreboardListActivity this$0;
  
  private ScoreboardListActivity$ServerTask(ScoreboardListActivity paramScoreboardListActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramScoreboardListActivity);
    dialog = localProgressDialog;
  }
  
  ScoreboardListActivity$ServerTask(ScoreboardListActivity paramScoreboardListActivity, ServerTask paramServerTask)
  {
    this(paramScoreboardListActivity);
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
    ScoreboardListActivity localScoreboardListActivity = this$0;
    String str2 = "GET_SCOREBOARD_DATA";
    boolean bool = ((ServerRequestsMgr)localObject).SendDWCommand(localScoreboardListActivity, str2, str3, str3);
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
      localObject1 = dialog;
      ((ProgressDialog)localObject1).dismiss();
    }
    Object localObject1 = this$0;
    Object localObject2 = new kagegames/apps/DWBeta/ScoreboardListActivity$MyClickableListAdapter;
    ScoreboardListActivity localScoreboardListActivity1 = this$0;
    ScoreboardListActivity localScoreboardListActivity2 = this$0;
    int i = 2130903064;
    Object localObject3 = this$0;
    localObject3 = ScoreboardListActivity.access$0((ScoreboardListActivity)localObject3);
    ((ScoreboardListActivity.MyClickableListAdapter)localObject2).<init>(localScoreboardListActivity1, localScoreboardListActivity2, i, (List)localObject3);
    mListAdapter = ((ScoreboardListActivity.MyClickableListAdapter)localObject2);
    localObject1 = this$0;
    localObject2 = this$0;
    localObject2 = mListAdapter;
    ((ScoreboardListActivity)localObject1).setListAdapter((ListAdapter)localObject2);
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Getting Latest High Scores...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ScoreboardListActivity.ServerTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
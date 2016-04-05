package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import java.util.List;

class ShoutboxActivity$LoadShoutboxTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final ShoutboxActivity this$0;
  
  private ShoutboxActivity$LoadShoutboxTask(ShoutboxActivity paramShoutboxActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramShoutboxActivity);
    dialog = localProgressDialog;
  }
  
  ShoutboxActivity$LoadShoutboxTask(ShoutboxActivity paramShoutboxActivity, LoadShoutboxTask paramLoadShoutboxTask)
  {
    this(paramShoutboxActivity);
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
    ShoutboxActivity localShoutboxActivity = this$0;
    String str2 = "GET_SHOUT_MAIN";
    boolean bool = ((ServerRequestsMgr)localObject).SendDWCommand(localShoutboxActivity, str2, str3, str3);
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
    int j = 0;
    ProgressDialog localProgressDialog = dialog;
    boolean bool1 = localProgressDialog.isShowing();
    if (bool1)
    {
      localObject1 = dialog;
      ((ProgressDialog)localObject1).dismiss();
    }
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    boolean bool2 = ((DWGameState)localObject1).WasSuccessful();
    Object localObject4;
    Object localObject2;
    if (!bool2)
    {
      ShoutboxActivity localShoutboxActivity1 = this$0;
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getDWGameState();
      localObject4 = ((DWGameState)localObject4).getErrorMessage();
      Toast localToast = Toast.makeText(localShoutboxActivity1, (CharSequence)localObject4, j);
      int i = 17;
      localToast.setGravity(i, j, j);
      localToast.show();
      Intent localIntent1 = new android/content/Intent;
      localIntent1.<init>();
      localObject2 = this$0;
      ((ShoutboxActivity)localObject2).setResult(j, localIntent1);
      localObject2 = this$0;
      ((ShoutboxActivity)localObject2).finish();
    }
    for (;;)
    {
      return;
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getCurFight();
      Intent localIntent2;
      if (localObject2 != null)
      {
        localIntent2 = new android/content/Intent;
        localIntent2.<init>();
        localObject2 = this$0;
        localObject2 = ((ShoutboxActivity)localObject2).getApplicationContext();
        localObject4 = "kagegames.apps.DWBeta.FightActivity";
        localIntent2.setClassName((Context)localObject2, (String)localObject4);
        localObject2 = this$0;
        ((ShoutboxActivity)localObject2).startActivity(localIntent2);
        localObject2 = this$0;
        ((ShoutboxActivity)localObject2).finish();
      }
      else
      {
        localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getDWGameState();
        boolean bool3 = ((DWGameState)localObject2).HasChallenger();
        Object localObject3;
        if (bool3)
        {
          localIntent2 = new android/content/Intent;
          localIntent2.<init>();
          localObject3 = this$0;
          localObject3 = ((ShoutboxActivity)localObject3).getApplicationContext();
          localObject4 = "kagegames.apps.DWBeta.FightChallengeActivity";
          localIntent2.setClassName((Context)localObject3, (String)localObject4);
          localObject3 = this$0;
          ((ShoutboxActivity)localObject3).startActivity(localIntent2);
          localObject3 = this$0;
          ((ShoutboxActivity)localObject3).finish();
        }
        else
        {
          localObject3 = this$0;
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getShoutboxList();
          ShoutboxActivity.access$0((ShoutboxActivity)localObject3, (List)localObject4);
          localObject3 = this$0;
          localObject4 = new kagegames/apps/DWBeta/ShoutboxActivity$MyClickableListAdapter;
          ShoutboxActivity localShoutboxActivity2 = this$0;
          ShoutboxActivity localShoutboxActivity3 = this$0;
          int k = 2130903065;
          Object localObject5 = this$0;
          localObject5 = ShoutboxActivity.access$1((ShoutboxActivity)localObject5);
          ((ShoutboxActivity.MyClickableListAdapter)localObject4).<init>(localShoutboxActivity2, localShoutboxActivity3, k, (List)localObject5);
          mListAdapter = ((ShoutboxActivity.MyClickableListAdapter)localObject4);
          localObject3 = this$0;
          localObject3 = mShoutboxList;
          localObject4 = this$0;
          localObject4 = mListAdapter;
          ((ListView)localObject3).setAdapter((ListAdapter)localObject4);
        }
      }
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Getting latest Shoutbox entries...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity.LoadShoutboxTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
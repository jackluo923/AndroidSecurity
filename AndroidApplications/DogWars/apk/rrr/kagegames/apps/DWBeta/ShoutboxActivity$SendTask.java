package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.text.Editable;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import java.util.List;

class ShoutboxActivity$SendTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final ShoutboxActivity this$0;
  
  private ShoutboxActivity$SendTask(ShoutboxActivity paramShoutboxActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramShoutboxActivity);
    dialog = localProgressDialog;
  }
  
  ShoutboxActivity$SendTask(ShoutboxActivity paramShoutboxActivity, SendTask paramSendTask)
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
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getServerRequestsMgr();
    ShoutboxActivity localShoutboxActivity = this$0;
    String str1 = "ADD_SHOUT_MAIN";
    Object localObject2 = this$0;
    localObject2 = edShout;
    localObject2 = ((EditText)localObject2).getText();
    localObject2 = ((Editable)localObject2).toString();
    String str2 = null;
    ((ServerRequestsMgr)localObject1).SendDWCommand(localShoutboxActivity, str1, (String)localObject2, str2);
    localObject1 = "";
    return (String)localObject1;
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
    Object localObject3;
    if (!bool2)
    {
      ShoutboxActivity localShoutboxActivity1 = this$0;
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getErrorMessage();
      Toast localToast = Toast.makeText(localShoutboxActivity1, (CharSequence)localObject3, j);
      int i = 17;
      localToast.setGravity(i, j, j);
      localToast.show();
    }
    for (;;)
    {
      return;
      Object localObject2 = this$0;
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getShoutboxList();
      ShoutboxActivity.access$0((ShoutboxActivity)localObject2, (List)localObject3);
      localObject2 = this$0;
      localObject3 = new kagegames/apps/DWBeta/ShoutboxActivity$MyClickableListAdapter;
      ShoutboxActivity localShoutboxActivity2 = this$0;
      ShoutboxActivity localShoutboxActivity3 = this$0;
      int k = 2130903065;
      Object localObject4 = this$0;
      localObject4 = ShoutboxActivity.access$1((ShoutboxActivity)localObject4);
      ((ShoutboxActivity.MyClickableListAdapter)localObject3).<init>(localShoutboxActivity2, localShoutboxActivity3, k, (List)localObject4);
      mListAdapter = ((ShoutboxActivity.MyClickableListAdapter)localObject3);
      localObject2 = this$0;
      localObject2 = mShoutboxList;
      localObject3 = this$0;
      localObject3 = mListAdapter;
      ((ListView)localObject2).setAdapter((ListAdapter)localObject3);
      localObject2 = this$0;
      localObject2 = edShout;
      localObject3 = "";
      ((EditText)localObject2).setText((CharSequence)localObject3);
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Sending Shout...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity.SendTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
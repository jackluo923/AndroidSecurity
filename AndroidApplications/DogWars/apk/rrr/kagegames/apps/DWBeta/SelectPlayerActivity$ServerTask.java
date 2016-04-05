package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.SpinnerAdapter;

class SelectPlayerActivity$ServerTask
  extends AsyncTask<String, Void, String>
{
  private String debugMsg;
  private final ProgressDialog dialog;
  final SelectPlayerActivity this$0;
  
  private SelectPlayerActivity$ServerTask(SelectPlayerActivity paramSelectPlayerActivity)
  {
    Object localObject = new android/app/ProgressDialog;
    ((ProgressDialog)localObject).<init>(paramSelectPlayerActivity);
    dialog = ((ProgressDialog)localObject);
    localObject = "";
    debugMsg = ((String)localObject);
  }
  
  SelectPlayerActivity$ServerTask(SelectPlayerActivity paramSelectPlayerActivity, ServerTask paramServerTask)
  {
    this(paramSelectPlayerActivity);
  }
  
  protected Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    String str = doInBackground(paramArrayOfObject);
    return str;
  }
  
  protected String doInBackground(String[] paramArrayOfString)
  {
    int i = 0;
    Object localObject = this$0;
    localObject = SelectPlayerActivity.access$1((SelectPlayerActivity)localObject);
    int j = 480;
    int k = 190;
    boolean bool = ((NewOwnerPetalAdapter)localObject).createReflectedImages(j, k);
    if (bool) {}
    for (String str = "";; str = "err") {
      return str;
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
    boolean bool1 = localProgressDialog.isShowing();
    if (bool1)
    {
      localObject1 = dialog;
      ((ProgressDialog)localObject1).dismiss();
    }
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    boolean bool2 = ((DWGameState)localObject1).WasSuccessful();
    Object localObject2;
    Object localObject3;
    if (!bool2)
    {
      localObject2 = debugMsg;
      localObject3 = new java/lang/StringBuilder;
      localObject2 = String.valueOf(localObject2);
      ((StringBuilder)localObject3).<init>((String)localObject2);
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getErrorMessage();
      localObject2 = ((StringBuilder)localObject3).append((String)localObject2);
      localObject2 = ((StringBuilder)localObject2).toString();
      debugMsg = ((String)localObject2);
    }
    for (;;)
    {
      return;
      localObject2 = this$0;
      localObject2 = SelectPlayerActivity.access$0((SelectPlayerActivity)localObject2);
      localObject3 = this$0;
      localObject3 = SelectPlayerActivity.access$1((SelectPlayerActivity)localObject3);
      ((CoverFlow)localObject2).setAdapter((SpinnerAdapter)localObject3);
      localObject2 = this$0;
      localObject2 = SelectPlayerActivity.access$0((SelectPlayerActivity)localObject2);
      int i = -10;
      ((CoverFlow)localObject2).setSpacing(i);
      localObject2 = this$0;
      localObject2 = SelectPlayerActivity.access$0((SelectPlayerActivity)localObject2);
      i = 200;
      ((CoverFlow)localObject2).setAnimationDuration(i);
      localObject2 = this$0;
      localObject2 = SelectPlayerActivity.access$0((SelectPlayerActivity)localObject2);
      i = 0;
      boolean bool3 = true;
      ((CoverFlow)localObject2).setSelection(i, bool3);
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Loading Available Players...(hold tight)";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectPlayerActivity.ServerTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.SpinnerAdapter;

class StoreActivity$LoadStoreTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final StoreActivity this$0;
  
  private StoreActivity$LoadStoreTask(StoreActivity paramStoreActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramStoreActivity);
    dialog = localProgressDialog;
  }
  
  StoreActivity$LoadStoreTask(StoreActivity paramStoreActivity, LoadStoreTask paramLoadStoreTask)
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
    Object localObject = this$0;
    StoreActivity.access$2((StoreActivity)localObject);
    localObject = "";
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
    boolean bool1 = localProgressDialog.isShowing();
    if (bool1)
    {
      localObject1 = dialog;
      ((ProgressDialog)localObject1).dismiss();
    }
    Object localObject1 = this$0;
    ((StoreActivity)localObject1).UpdateUI();
    localObject1 = this$0;
    localObject1 = StoreActivity.access$0((StoreActivity)localObject1);
    Object localObject2 = this$0;
    localObject2 = StoreActivity.access$1((StoreActivity)localObject2);
    ((CoverFlow)localObject1).setAdapter((SpinnerAdapter)localObject2);
    localObject1 = this$0;
    localObject1 = StoreActivity.access$0((StoreActivity)localObject1);
    int i = -15;
    ((CoverFlow)localObject1).setSpacing(i);
    localObject1 = this$0;
    localObject1 = StoreActivity.access$0((StoreActivity)localObject1);
    i = 200;
    ((CoverFlow)localObject1).setAnimationDuration(i);
    localObject1 = this$0;
    localObject1 = StoreActivity.access$0((StoreActivity)localObject1);
    i = 0;
    boolean bool2 = true;
    ((CoverFlow)localObject1).setSelection(i, bool2);
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Loading Store Items...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreActivity.LoadStoreTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
package kagegames.apps.DWBeta;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.SpinnerAdapter;

class SelectDogTypeActivity$ServerTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final SelectDogTypeActivity this$0;
  
  private SelectDogTypeActivity$ServerTask(SelectDogTypeActivity paramSelectDogTypeActivity)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    localProgressDialog.<init>(paramSelectDogTypeActivity);
    dialog = localProgressDialog;
  }
  
  SelectDogTypeActivity$ServerTask(SelectDogTypeActivity paramSelectDogTypeActivity, ServerTask paramServerTask)
  {
    this(paramSelectDogTypeActivity);
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
    localObject = SelectDogTypeActivity.access$1((SelectDogTypeActivity)localObject);
    int i = 480;
    int j = 190;
    boolean bool = ((NewDogPetalAdapter)localObject).createReflectedImages(i, j);
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
    int k = 0;
    ProgressDialog localProgressDialog1 = dialog;
    boolean bool = localProgressDialog1.isShowing();
    if (bool)
    {
      ProgressDialog localProgressDialog2 = dialog;
      localProgressDialog2.dismiss();
    }
    int i = paramString.length();
    Object localObject1;
    if (i > 0)
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localObject1 = this$0;
      ((SelectDogTypeActivity)localObject1).setResult(k, localIntent);
      localObject1 = this$0;
      ((SelectDogTypeActivity)localObject1).finish();
    }
    for (;;)
    {
      return;
      localObject1 = this$0;
      localObject1 = SelectDogTypeActivity.access$0((SelectDogTypeActivity)localObject1);
      Object localObject2 = this$0;
      localObject2 = SelectDogTypeActivity.access$1((SelectDogTypeActivity)localObject2);
      ((CoverFlow)localObject1).setAdapter((SpinnerAdapter)localObject2);
      localObject1 = this$0;
      localObject1 = SelectDogTypeActivity.access$0((SelectDogTypeActivity)localObject1);
      int j = -10;
      ((CoverFlow)localObject1).setSpacing(j);
      localObject1 = this$0;
      localObject1 = SelectDogTypeActivity.access$0((SelectDogTypeActivity)localObject1);
      j = 200;
      ((CoverFlow)localObject1).setAnimationDuration(j);
      localObject1 = this$0;
      localObject1 = SelectDogTypeActivity.access$0((SelectDogTypeActivity)localObject1);
      j = 1;
      ((CoverFlow)localObject1).setSelection(k, j);
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "Loading Available Dogs...(hold tight)";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectDogTypeActivity.ServerTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
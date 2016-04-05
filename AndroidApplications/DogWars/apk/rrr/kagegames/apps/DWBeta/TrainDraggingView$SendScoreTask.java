package kagegames.apps.DWBeta;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;

class TrainDraggingView$SendScoreTask
  extends AsyncTask<String, Void, String>
{
  private final ProgressDialog dialog;
  final TrainDraggingView this$0;
  
  private TrainDraggingView$SendScoreTask(TrainDraggingView paramTrainDraggingView)
  {
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    Activity localActivity = TrainDraggingView.access$0(paramTrainDraggingView);
    localProgressDialog.<init>(localActivity);
    dialog = localProgressDialog;
  }
  
  TrainDraggingView$SendScoreTask(TrainDraggingView paramTrainDraggingView, SendScoreTask paramSendScoreTask)
  {
    this(paramTrainDraggingView);
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
    Object localObject2 = this$0;
    localObject2 = TrainDraggingView.access$0((TrainDraggingView)localObject2);
    String str2 = "SCORE_TRAINING";
    String str3 = "DRAG";
    Object localObject3 = this$0;
    localObject3 = TrainDraggingView.access$1((TrainDraggingView)localObject3);
    boolean bool = ((ServerRequestsMgr)localObject1).SendDWCommand((Activity)localObject2, str2, str3, (String)localObject3);
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
    ProgressDialog localProgressDialog1 = dialog;
    boolean bool = localProgressDialog1.isShowing();
    if (bool)
    {
      ProgressDialog localProgressDialog2 = dialog;
      localProgressDialog2.dismiss();
    }
    int i = paramString.length();
    if (i > 0)
    {
      Object localObject1 = this$0;
      localObject1 = TrainDraggingView.access$0((TrainDraggingView)localObject1);
      Object localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getErrorMessage();
      int j = 0;
      Toast.makeText((Context)localObject1, (CharSequence)localObject2, j);
    }
  }
  
  protected void onPreExecute()
  {
    ProgressDialog localProgressDialog = dialog;
    String str = "sending your Time to server...";
    localProgressDialog.setMessage(str);
    localProgressDialog = dialog;
    localProgressDialog.show();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainDraggingView.SendScoreTask
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
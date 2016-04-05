package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

public class TrainRunning
  extends Activity
{
  private AmazedView mView;
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    requestWindowFeature(i);
    AmazedView localAmazedView = new kagegames/apps/DWBeta/AmazedView;
    Context localContext = getApplicationContext();
    localAmazedView.<init>(localContext, this);
    mView = localAmazedView;
    localAmazedView = mView;
    localAmazedView.setFocusable(i);
    localAmazedView = mView;
    setContentView(localAmazedView);
  }
  
  protected void onResume()
  {
    super.onResume();
    AmazedView localAmazedView = mView;
    localAmazedView.registerListener();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    AmazedView localAmazedView = mView;
    localAmazedView.unregisterListener();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainRunning
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
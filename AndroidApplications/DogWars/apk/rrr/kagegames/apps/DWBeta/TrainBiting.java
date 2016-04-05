package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

public class TrainBiting
  extends Activity
{
  private TrainBitingView mView;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 3;
    setVolumeControlStream(i);
    TrainBitingView localTrainBitingView = new kagegames/apps/DWBeta/TrainBitingView;
    Context localContext = getApplicationContext();
    localTrainBitingView.<init>(localContext, this);
    mView = localTrainBitingView;
    localTrainBitingView = mView;
    boolean bool = true;
    localTrainBitingView.setFocusable(bool);
    localTrainBitingView = mView;
    setContentView(localTrainBitingView);
  }
  
  protected void onResume()
  {
    super.onResume();
    TrainBitingView localTrainBitingView = mView;
    localTrainBitingView.registerListener();
  }
  
  protected void onStop()
  {
    TrainBitingView localTrainBitingView = mView;
    localTrainBitingView.unregisterListener();
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainBiting
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
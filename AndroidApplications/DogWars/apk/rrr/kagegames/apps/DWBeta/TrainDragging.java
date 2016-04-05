package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class TrainDragging
  extends Activity
{
  private GestureDetector gestureDetector;
  private TrainDraggingView mView;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 3;
    setVolumeControlStream(i);
    Object localObject1 = new kagegames/apps/DWBeta/TrainDraggingView;
    Context localContext = getApplicationContext();
    ((TrainDraggingView)localObject1).<init>(localContext, this);
    mView = ((TrainDraggingView)localObject1);
    localObject1 = mView;
    boolean bool = true;
    ((TrainDraggingView)localObject1).setFocusable(bool);
    localObject1 = mView;
    setContentView((View)localObject1);
    localObject1 = new android/view/GestureDetector;
    Object localObject2 = new kagegames/apps/DWBeta/TrainDragging$MyGestureListener;
    ((TrainDragging.MyGestureListener)localObject2).<init>(this);
    ((GestureDetector)localObject1).<init>((GestureDetector.OnGestureListener)localObject2);
    gestureDetector = ((GestureDetector)localObject1);
    localObject1 = gestureDetector;
    localObject2 = new kagegames/apps/DWBeta/TrainDragging$MyDoubleTapListener;
    TrainDragging.MyDoubleTapListener localMyDoubleTapListener = null;
    ((TrainDragging.MyDoubleTapListener)localObject2).<init>(this, localMyDoubleTapListener);
    ((GestureDetector)localObject1).setOnDoubleTapListener((GestureDetector.OnDoubleTapListener)localObject2);
  }
  
  protected void onResume()
  {
    super.onResume();
    TrainDraggingView localTrainDraggingView = mView;
    localTrainDraggingView.registerListener();
  }
  
  protected void onStop()
  {
    TrainDraggingView localTrainDraggingView = mView;
    localTrainDraggingView.unregisterListener();
    super.onStop();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    GestureDetector localGestureDetector = gestureDetector;
    boolean bool = localGestureDetector.onTouchEvent(paramMotionEvent);
    if (bool) {}
    for (bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainDragging
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
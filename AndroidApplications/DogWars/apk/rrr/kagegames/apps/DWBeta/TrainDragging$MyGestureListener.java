package kagegames.apps.DWBeta;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class TrainDragging$MyGestureListener
  extends GestureDetector.SimpleOnGestureListener
{
  final TrainDragging this$0;
  
  TrainDragging$MyGestureListener(TrainDragging paramTrainDragging) {}
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    Object localObject = this$0;
    localObject = TrainDragging.access$0((TrainDragging)localObject);
    boolean bool = ((TrainDraggingView)localObject).validateSwipe(paramMotionEvent1, paramMotionEvent2);
    localObject = this$0;
    localObject = TrainDragging.access$0((TrainDragging)localObject);
    ((TrainDraggingView)localObject).UpdateGameState(bool);
    return bool;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainDragging.MyGestureListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
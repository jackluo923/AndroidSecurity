package kagegames.apps.DWBeta;

import android.view.GestureDetector.OnDoubleTapListener;
import android.view.MotionEvent;

class TrainDragging$MyDoubleTapListener
  implements GestureDetector.OnDoubleTapListener
{
  final TrainDragging this$0;
  
  private TrainDragging$MyDoubleTapListener(TrainDragging paramTrainDragging) {}
  
  TrainDragging$MyDoubleTapListener(TrainDragging paramTrainDragging, MyDoubleTapListener paramMyDoubleTapListener)
  {
    this(paramTrainDragging);
  }
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    Object localObject = this$0;
    localObject = TrainDragging.access$0((TrainDragging)localObject);
    ((TrainDraggingView)localObject).OnDoubleTap();
    boolean bool = true;
    return bool;
  }
  
  public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    return bool;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainDragging.MyDoubleTapListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
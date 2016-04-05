package kagegames.apps.DWBeta;

import android.hardware.SensorListener;

class AmazedView$1
  implements SensorListener
{
  final AmazedView this$0;
  
  AmazedView$1(AmazedView paramAmazedView) {}
  
  public void onAccuracyChanged(int paramInt1, int paramInt2) {}
  
  public void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    AmazedView localAmazedView = this$0;
    int i = 0;
    float f1 = paramArrayOfFloat[i];
    AmazedView.access$0(localAmazedView, f1);
    localAmazedView = this$0;
    int j = 1;
    float f2 = paramArrayOfFloat[j];
    AmazedView.access$1(localAmazedView, f2);
    localAmazedView = this$0;
    int k = 2;
    float f3 = paramArrayOfFloat[k];
    AmazedView.access$2(localAmazedView, f3);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.AmazedView.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
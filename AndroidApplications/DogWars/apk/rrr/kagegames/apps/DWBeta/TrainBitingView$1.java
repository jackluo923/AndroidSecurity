package kagegames.apps.DWBeta;

import android.app.Activity;
import android.hardware.SensorListener;

class TrainBitingView$1
  implements SensorListener
{
  final TrainBitingView this$0;
  
  TrainBitingView$1(TrainBitingView paramTrainBitingView) {}
  
  public void onAccuracyChanged(int paramInt1, int paramInt2) {}
  
  public void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    float f25 = 30.0F;
    boolean bool7 = true;
    int i10 = 2;
    boolean bool6 = false;
    if (paramInt != i10) {}
    Object localObject18;
    Object localObject21;
    int k;
    do
    {
      for (;;)
      {
        return;
        TrainBitingView localTrainBitingView1 = this$0;
        int i = TrainBitingView.access$0(localTrainBitingView1);
        int i1;
        if (i != i10)
        {
          TrainBitingView localTrainBitingView2 = this$0;
          int j = TrainBitingView.access$0(localTrainBitingView2);
          i1 = 3;
          if (j != i1) {}
        }
        else
        {
          long l1 = System.currentTimeMillis();
          TrainBitingView localTrainBitingView3 = this$0;
          long l2 = TrainBitingView.access$1(localTrainBitingView3);
          TrainBitingView localTrainBitingView11 = this$0;
          long l3 = TrainBitingView.access$2(localTrainBitingView11);
          l2 += l3;
          boolean bool1 = l1 < l2;
          if (!bool1) {
            break;
          }
          localObject1 = this$0;
          i1 = 4;
          TrainBitingView.access$3((TrainBitingView)localObject1, i1);
          localObject1 = this$0;
          TrainBitingView.access$4((TrainBitingView)localObject1);
          localObject1 = this$0;
          ((TrainBitingView)localObject1).invalidate();
          localObject1 = DWApplication.getInstance();
          localObject1 = ((DWApplication)localObject1).getServerRequestsMgr();
          Object localObject6 = this$0;
          localObject6 = TrainBitingView.access$5((TrainBitingView)localObject6);
          localObject14 = "SCORE_TRAINING";
          localObject18 = "BITE";
          localObject21 = this$0;
          localObject21 = TrainBitingView.access$6((TrainBitingView)localObject21);
          localObject21 = ((Integer)localObject21).toString();
          ((ServerRequestsMgr)localObject1).SendDWCommand((Activity)localObject6, (String)localObject14, (String)localObject18, (String)localObject21);
        }
      }
      Object localObject1 = this$0;
      k = TrainBitingView.access$0((TrainBitingView)localObject1);
    } while (k != i10);
    Object localObject2 = this$0;
    localObject2 = TrainBitingView.access$7((TrainBitingView)localObject2);
    float f3 = paramArrayOfFloat[bool6];
    Object localObject14 = TrainBitingView.access$8();
    float f16 = localObject14[bool6];
    f3 -= f16;
    Float localFloat1 = Float.valueOf(f3);
    localObject2[bool6] = localFloat1;
    localObject2 = this$0;
    localObject2 = TrainBitingView.access$7((TrainBitingView)localObject2);
    float f4 = paramArrayOfFloat[bool7];
    float[] arrayOfFloat1 = TrainBitingView.access$8();
    float f17 = arrayOfFloat1[bool7];
    f4 -= f17;
    Float localFloat2 = Float.valueOf(f4);
    localObject2[bool7] = localFloat2;
    localObject2 = this$0;
    localObject2 = TrainBitingView.access$7((TrainBitingView)localObject2);
    float f5 = paramArrayOfFloat[i10];
    float[] arrayOfFloat2 = TrainBitingView.access$8();
    float f18 = arrayOfFloat2[i10];
    f5 -= f18;
    Object localObject7 = Float.valueOf(f5);
    localObject2[i10] = localObject7;
    localObject2 = this$0;
    localObject7 = this$0;
    localObject7 = TrainBitingView.access$7((TrainBitingView)localObject7);
    localObject7 = localObject7[bool6];
    float f6 = ((Float)localObject7).floatValue();
    f6 *= localObject21;
    int i2 = (int)f6;
    TrainBitingView.access$9((TrainBitingView)localObject2, i2);
    localObject2 = this$0;
    Object localObject8 = this$0;
    localObject8 = TrainBitingView.access$7((TrainBitingView)localObject8);
    localObject8 = localObject8[bool7];
    float f7 = ((Float)localObject8).floatValue();
    f7 = -f7;
    f7 *= localObject21;
    int i3 = (int)f7;
    TrainBitingView.access$10((TrainBitingView)localObject2, i3);
    localObject2 = this$0;
    boolean bool2 = TrainBitingView.access$11((TrainBitingView)localObject2);
    label570:
    Object localObject4;
    if (bool2)
    {
      Object localObject3 = this$0;
      ((TrainBitingView)localObject3).playSteadyGrowl();
      localObject3 = this$0;
      float f8 = 0.0F;
      Float localFloat3 = Float.valueOf(f8);
      TrainBitingView.access$12((TrainBitingView)localObject3, localFloat3);
      localObject3 = this$0;
      TrainBitingView.access$13((TrainBitingView)localObject3, bool6);
      localObject3 = this$0;
      localObject3 = TrainBitingView.access$16((TrainBitingView)localObject3);
      float f1 = ((Float)localObject3).floatValue();
      float f9 = 0.5F;
      boolean bool3 = f1 < f9;
      if (bool3)
      {
        TrainBitingView localTrainBitingView4 = this$0;
        int m = TrainBitingView.access$17(localTrainBitingView4);
        TrainBitingView localTrainBitingView7 = this$0;
        int i4 = TrainBitingView.access$18(localTrainBitingView7);
        m -= i4;
        m = Math.abs(m);
        i4 = TrainBitingView.access$19();
        if (m >= i4) {
          break label1557;
        }
        TrainBitingView localTrainBitingView5 = this$0;
        int n = TrainBitingView.access$20(localTrainBitingView5);
        TrainBitingView localTrainBitingView8 = this$0;
        int i5 = TrainBitingView.access$21(localTrainBitingView8);
        n -= i5;
        n = Math.abs(n);
        i5 = TrainBitingView.access$19();
        if (n >= i5) {
          break label1557;
        }
        localObject4 = this$0;
        TrainBitingView.access$22((TrainBitingView)localObject4, bool7);
      }
    }
    for (;;)
    {
      localObject4 = this$0;
      localObject4 = TrainBitingView.access$16((TrainBitingView)localObject4);
      float f2 = ((Float)localObject4).floatValue();
      float f10 = 2.0F;
      boolean bool4 = f2 < f10;
      if (bool4)
      {
        TrainBitingView localTrainBitingView6 = this$0;
        boolean bool5 = TrainBitingView.access$23(localTrainBitingView6);
        if (bool5)
        {
          localObject5 = this$0;
          TrainBitingView localTrainBitingView9 = this$0;
          int i6 = TrainBitingView.access$24(localTrainBitingView9);
          TrainBitingView.access$9((TrainBitingView)localObject5, i6);
          localObject5 = this$0;
          TrainBitingView localTrainBitingView10 = this$0;
          int i7 = TrainBitingView.access$25(localTrainBitingView10);
          TrainBitingView.access$10((TrainBitingView)localObject5, i7);
          localObject5 = this$0;
          Integer localInteger1 = TrainBitingView.access$6((TrainBitingView)localObject5);
          int i8 = localInteger1.intValue();
          i8 += 1;
          Integer localInteger2 = Integer.valueOf(i8);
          TrainBitingView.access$26((TrainBitingView)localObject5, localInteger2);
          localObject5 = this$0;
          ((TrainBitingView)localObject5).playLoudGrowl();
          localObject5 = DWApplication.getInstance();
          int i9 = 30;
          ((DWApplication)localObject5).Vibrate(i9);
          localObject5 = this$0;
          TrainBitingView.access$4((TrainBitingView)localObject5);
        }
      }
      Object localObject5 = this$0;
      ((TrainBitingView)localObject5).invalidate();
      break;
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$14((TrainBitingView)localObject5);
      Object localObject9 = this$0;
      localObject9 = TrainBitingView.access$7((TrainBitingView)localObject9);
      localObject9 = localObject9[bool6];
      float f11 = ((Float)localObject9).floatValue();
      Object localObject15 = this$0;
      localObject15 = TrainBitingView.access$15((TrainBitingView)localObject15);
      localObject15 = localObject15[bool6];
      float f19 = ((Float)localObject15).floatValue();
      f11 -= f19;
      Object localObject10 = Float.valueOf(f11);
      localObject5[bool6] = localObject10;
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$14((TrainBitingView)localObject5);
      localObject10 = this$0;
      localObject10 = TrainBitingView.access$7((TrainBitingView)localObject10);
      localObject10 = localObject10[bool7];
      float f12 = ((Float)localObject10).floatValue();
      Object localObject16 = this$0;
      localObject16 = TrainBitingView.access$15((TrainBitingView)localObject16);
      localObject16 = localObject16[bool7];
      float f20 = ((Float)localObject16).floatValue();
      f12 -= f20;
      Object localObject11 = Float.valueOf(f12);
      localObject5[bool7] = localObject11;
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$14((TrainBitingView)localObject5);
      localObject11 = this$0;
      localObject11 = TrainBitingView.access$7((TrainBitingView)localObject11);
      localObject11 = localObject11[i10];
      float f13 = ((Float)localObject11).floatValue();
      Object localObject17 = this$0;
      localObject17 = TrainBitingView.access$15((TrainBitingView)localObject17);
      localObject17 = localObject17[i10];
      float f21 = ((Float)localObject17).floatValue();
      f13 -= f21;
      Object localObject12 = Float.valueOf(f13);
      localObject5[i10] = localObject12;
      localObject5 = this$0;
      localObject12 = this$0;
      localObject12 = TrainBitingView.access$14((TrainBitingView)localObject12);
      localObject12 = localObject12[bool6];
      float f14 = ((Float)localObject12).floatValue();
      double d1 = f14;
      localObject18 = this$0;
      localObject18 = TrainBitingView.access$14((TrainBitingView)localObject18);
      localObject18 = localObject18[bool6];
      float f22 = ((Float)localObject18).floatValue();
      double d2 = f22;
      d1 *= d2;
      Object localObject19 = this$0;
      localObject19 = TrainBitingView.access$14((TrainBitingView)localObject19);
      localObject19 = localObject19[bool7];
      float f23 = ((Float)localObject19).floatValue();
      localObject21 = this$0;
      localObject21 = TrainBitingView.access$14((TrainBitingView)localObject21);
      localObject21 = localObject21[bool7];
      float f26 = ((Float)localObject21).floatValue();
      f23 *= f26;
      double d3 = f23;
      d1 += d3;
      Object localObject20 = this$0;
      localObject20 = TrainBitingView.access$14((TrainBitingView)localObject20);
      localObject20 = localObject20[i10];
      float f24 = ((Float)localObject20).floatValue();
      Object localObject22 = this$0;
      localObject22 = TrainBitingView.access$14((TrainBitingView)localObject22);
      localObject22 = localObject22[i10];
      float f27 = ((Float)localObject22).floatValue();
      f24 *= f27;
      double d4 = f24;
      d1 += d4;
      d1 = Math.sqrt(d1);
      float f15 = (float)d1;
      Object localObject13 = Float.valueOf(f15);
      TrainBitingView.access$12((TrainBitingView)localObject5, (Float)localObject13);
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$15((TrainBitingView)localObject5);
      localObject13 = this$0;
      localObject13 = TrainBitingView.access$7((TrainBitingView)localObject13);
      localObject13 = localObject13[bool6];
      localObject5[bool6] = localObject13;
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$15((TrainBitingView)localObject5);
      localObject13 = this$0;
      localObject13 = TrainBitingView.access$7((TrainBitingView)localObject13);
      localObject13 = localObject13[bool7];
      localObject5[bool7] = localObject13;
      localObject5 = this$0;
      localObject5 = TrainBitingView.access$15((TrainBitingView)localObject5);
      localObject13 = this$0;
      localObject13 = TrainBitingView.access$7((TrainBitingView)localObject13);
      localObject13 = localObject13[i10];
      localObject5[i10] = localObject13;
      break label570;
      label1557:
      localObject5 = this$0;
      TrainBitingView.access$22((TrainBitingView)localObject5, bool6);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainBitingView.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */
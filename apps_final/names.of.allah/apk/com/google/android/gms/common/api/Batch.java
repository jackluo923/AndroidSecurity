package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.List;

public final class Batch
  extends a.a<BatchResult>
{
  private int Dw;
  private boolean Dx;
  private boolean Dy;
  private final PendingResult<?>[] Dz;
  private final Object lq = new Object();
  
  private Batch(List<PendingResult<?>> paramList, Looper paramLooper)
  {
    super(new a.c(paramLooper));
    Dw = paramList.size();
    Dz = new PendingResult[Dw];
    int i = 0;
    while (i < paramList.size())
    {
      paramLooper = (PendingResult)paramList.get(i);
      Dz[i] = paramLooper;
      paramLooper.a(new Batch.1(this));
      i += 1;
    }
  }
  
  public final void cancel()
  {
    super.cancel();
    PendingResult[] arrayOfPendingResult = Dz;
    int j = arrayOfPendingResult.length;
    int i = 0;
    while (i < j)
    {
      arrayOfPendingResult[i].cancel();
      i += 1;
    }
  }
  
  public final BatchResult createFailedResult(Status paramStatus)
  {
    return new BatchResult(paramStatus, Dz);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
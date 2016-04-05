package com.google.android.gms.common.api;

import com.google.android.gms.internal.hn;
import java.util.concurrent.TimeUnit;

public final class BatchResult
  implements Result
{
  private final PendingResult<?>[] Dz;
  private final Status yw;
  
  BatchResult(Status paramStatus, PendingResult<?>[] paramArrayOfPendingResult)
  {
    yw = paramStatus;
    Dz = paramArrayOfPendingResult;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
  
  public final <R extends Result> R take(BatchResultToken<R> paramBatchResultToken)
  {
    if (mId < Dz.length) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "The result token does not belong to this batch");
      return Dz[mId].await(0L, TimeUnit.MILLISECONDS);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BatchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
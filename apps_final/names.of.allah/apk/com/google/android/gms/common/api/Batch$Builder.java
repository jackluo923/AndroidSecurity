package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

public final class Batch$Builder
{
  private List<PendingResult<?>> DB = new ArrayList();
  private Looper DC;
  
  public Batch$Builder(GoogleApiClient paramGoogleApiClient)
  {
    DC = paramGoogleApiClient.getLooper();
  }
  
  public final <R extends Result> BatchResultToken<R> add(PendingResult<R> paramPendingResult)
  {
    BatchResultToken localBatchResultToken = new BatchResultToken(DB.size());
    DB.add(paramPendingResult);
    return localBatchResultToken;
  }
  
  public final Batch build()
  {
    return new Batch(DB, DC, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.common.api;

class Batch$1
  implements PendingResult.a
{
  Batch$1(Batch paramBatch) {}
  
  public void n(Status paramStatus)
  {
    for (;;)
    {
      synchronized (Batch.a(DA))
      {
        if (DA.isCanceled()) {
          return;
        }
        if (paramStatus.isCanceled())
        {
          Batch.a(DA, true);
          Batch.b(DA);
          if (Batch.c(DA) == 0)
          {
            if (!Batch.d(DA)) {
              break;
            }
            Batch.e(DA);
          }
          return;
        }
      }
      if (!paramStatus.isSuccess()) {
        Batch.b(DA, true);
      }
    }
    if (Batch.f(DA)) {}
    for (paramStatus = new Status(13);; paramStatus = Status.Ek)
    {
      DA.b(new BatchResult(paramStatus, Batch.g(DA)));
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
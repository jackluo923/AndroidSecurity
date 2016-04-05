package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.plus.Moments.LoadMomentsResult;

final class e$b
  extends a
{
  private final a.d<Moments.LoadMomentsResult> abI;
  
  public e$b(a.d<Moments.LoadMomentsResult> paramd)
  {
    a.d locald;
    abI = locald;
  }
  
  public final void a(DataHolder paramDataHolder, String paramString1, String paramString2)
  {
    if (paramDataHolder.eP() != null) {}
    for (Object localObject = (PendingIntent)paramDataHolder.eP().getParcelable("pendingIntent");; localObject = null)
    {
      localObject = new Status(paramDataHolder.getStatusCode(), null, (PendingIntent)localObject);
      if ((!((Status)localObject).isSuccess()) && (paramDataHolder != null))
      {
        if (!paramDataHolder.isClosed()) {
          paramDataHolder.close();
        }
        paramDataHolder = null;
      }
      for (;;)
      {
        abJ.a(new e.c(abJ, abI, (Status)localObject, paramDataHolder, paramString1, paramString2));
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
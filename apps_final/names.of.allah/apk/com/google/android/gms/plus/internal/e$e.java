package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.plus.People.LoadPeopleResult;

final class e$e
  extends a
{
  private final a.d<People.LoadPeopleResult> abI;
  
  public e$e(a.d<People.LoadPeopleResult> paramd)
  {
    a.d locald;
    abI = locald;
  }
  
  public final void a(DataHolder paramDataHolder, String paramString)
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
        abJ.a(new e.f(abJ, abI, (Status)localObject, paramDataHolder, paramString));
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.e.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
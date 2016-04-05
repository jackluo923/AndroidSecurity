package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.wearable.DataApi.DataItemResult;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

class au$a
  extends a
{
  private final List<FutureTask<Boolean>> amh;
  private final a.d<DataApi.DataItemResult> yO;
  
  au$a(a.d<DataApi.DataItemResult> paramd, List<FutureTask<Boolean>> paramList)
  {
    yO = paramd;
    amh = paramList;
  }
  
  public void a(am paramam)
  {
    yO.a(new f.a(new Status(statusCode), alL));
    if (statusCode != 0)
    {
      paramam = amh.iterator();
      while (paramam.hasNext()) {
        ((FutureTask)paramam.next()).cancel(true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
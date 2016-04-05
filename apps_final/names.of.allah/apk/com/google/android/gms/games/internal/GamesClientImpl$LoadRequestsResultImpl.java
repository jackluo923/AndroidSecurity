package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.RequestType;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import java.util.Iterator;
import java.util.Set;

final class GamesClientImpl$LoadRequestsResultImpl
  implements Requests.LoadRequestsResult
{
  private final Bundle NZ;
  private final Status yw;
  
  GamesClientImpl$LoadRequestsResultImpl(Status paramStatus, Bundle paramBundle)
  {
    yw = paramStatus;
    NZ = paramBundle;
  }
  
  public final GameRequestBuffer getRequests(int paramInt)
  {
    String str = RequestType.cm(paramInt);
    if (!NZ.containsKey(str)) {
      return null;
    }
    return new GameRequestBuffer((DataHolder)NZ.get(str));
  }
  
  public final Status getStatus()
  {
    return yw;
  }
  
  public final void release()
  {
    Iterator localIterator = NZ.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = (DataHolder)NZ.getParcelable((String)localObject);
      if (localObject != null) {
        ((DataHolder)localObject).close();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadRequestsResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
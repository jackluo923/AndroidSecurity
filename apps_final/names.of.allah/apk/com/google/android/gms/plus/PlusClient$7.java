package com.google.android.gms.plus;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

class PlusClient$7
  implements a.d<Status>
{
  PlusClient$7(PlusClient paramPlusClient, PlusClient.OnAccessRevokedListener paramOnAccessRevokedListener) {}
  
  public void al(Status paramStatus)
  {
    abu.onAccessRevoked(paramStatus.getStatus().eM());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusClient.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
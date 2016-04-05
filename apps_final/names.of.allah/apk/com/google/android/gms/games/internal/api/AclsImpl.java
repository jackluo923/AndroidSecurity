package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.internal.game.Acls;
import com.google.android.gms.games.internal.game.Acls.LoadAclResult;

public final class AclsImpl
  implements Acls
{
  private static Acls.LoadAclResult x(Status paramStatus)
  {
    return new AclsImpl.1(paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.AclsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
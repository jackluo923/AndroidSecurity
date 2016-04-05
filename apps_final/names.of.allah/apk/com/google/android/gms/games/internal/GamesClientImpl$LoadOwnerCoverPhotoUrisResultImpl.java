package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult;

final class GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl
  implements Players.LoadOwnerCoverPhotoUrisResult
{
  private final Bundle HJ;
  private final Status yw;
  
  GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl(int paramInt, Bundle paramBundle)
  {
    yw = new Status(paramInt);
    HJ = paramBundle;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadOwnerCoverPhotoUrisResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
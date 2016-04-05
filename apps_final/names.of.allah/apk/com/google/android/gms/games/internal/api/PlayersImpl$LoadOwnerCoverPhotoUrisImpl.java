package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult;

abstract class PlayersImpl$LoadOwnerCoverPhotoUrisImpl
  extends Games.BaseGamesApiMethodImpl<Players.LoadOwnerCoverPhotoUrisResult>
{
  public Players.LoadOwnerCoverPhotoUrisResult O(Status paramStatus)
  {
    return new PlayersImpl.LoadOwnerCoverPhotoUrisImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl.LoadOwnerCoverPhotoUrisImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
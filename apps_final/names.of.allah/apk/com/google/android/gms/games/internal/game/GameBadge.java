package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public abstract interface GameBadge
  extends Parcelable, Freezable<GameBadge>
{
  public abstract String getDescription();
  
  public abstract Uri getIconImageUri();
  
  public abstract String getTitle();
  
  public abstract int getType();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameBadge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
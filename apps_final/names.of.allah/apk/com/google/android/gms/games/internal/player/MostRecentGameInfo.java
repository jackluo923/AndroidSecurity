package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public abstract interface MostRecentGameInfo
  extends Parcelable, Freezable<MostRecentGameInfo>
{
  public abstract String ik();
  
  public abstract String il();
  
  public abstract long im();
  
  public abstract Uri in();
  
  public abstract Uri io();
  
  public abstract Uri ip();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.player.MostRecentGameInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
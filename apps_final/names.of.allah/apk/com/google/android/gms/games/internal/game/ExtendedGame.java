package com.google.android.gms.games.internal.game;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import java.util.ArrayList;

public abstract interface ExtendedGame
  extends Parcelable, Freezable<ExtendedGame>
{
  public abstract Game getGame();
  
  public abstract ArrayList<GameBadge> hL();
  
  public abstract int hM();
  
  public abstract boolean hN();
  
  public abstract int hO();
  
  public abstract long hP();
  
  public abstract long hQ();
  
  public abstract String hR();
  
  public abstract long hS();
  
  public abstract String hT();
  
  public abstract SnapshotMetadata hU();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.ExtendedGame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
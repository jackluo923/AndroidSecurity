package com.google.android.gms.games.multiplayer.turnbased;

public abstract interface OnTurnBasedMatchUpdateReceivedListener
{
  public abstract void onTurnBasedMatchReceived(TurnBasedMatch paramTurnBasedMatch);
  
  public abstract void onTurnBasedMatchRemoved(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
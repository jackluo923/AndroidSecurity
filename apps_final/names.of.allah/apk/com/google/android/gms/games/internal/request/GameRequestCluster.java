package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;

public final class GameRequestCluster
  implements SafeParcelable, GameRequest
{
  public static final GameRequestClusterCreator CREATOR = new GameRequestClusterCreator();
  private final ArrayList<GameRequestEntity> Sj;
  private final int xJ;
  
  GameRequestCluster(int paramInt, ArrayList<GameRequestEntity> paramArrayList)
  {
    xJ = paramInt;
    Sj = paramArrayList;
    id();
  }
  
  private void id()
  {
    GameRequest localGameRequest1;
    int i;
    label41:
    GameRequest localGameRequest2;
    if (!Sj.isEmpty())
    {
      bool = true;
      gy.A(bool);
      localGameRequest1 = (GameRequest)Sj.get(0);
      int j = Sj.size();
      i = 1;
      if (i >= j) {
        return;
      }
      localGameRequest2 = (GameRequest)Sj.get(i);
      if (localGameRequest1.getType() != localGameRequest2.getType()) {
        break label117;
      }
    }
    label117:
    for (boolean bool = true;; bool = false)
    {
      gy.a(bool, "All the requests must be of the same type");
      gy.a(localGameRequest1.getSender().equals(localGameRequest2.getSender()), "All the requests must be from the same sender");
      i += 1;
      break label41;
      bool = false;
      break;
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GameRequestCluster)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (GameRequestCluster)paramObject;
    if (Sj.size() != Sj.size()) {
      return false;
    }
    int j = Sj.size();
    int i = 0;
    while (i < j)
    {
      if (!((GameRequest)Sj.get(i)).equals((GameRequest)Sj.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final GameRequest freeze()
  {
    return this;
  }
  
  public final long getCreationTimestamp()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final byte[] getData()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final long getExpirationTimestamp()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final Game getGame()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final int getRecipientStatus(String paramString)
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final String getRequestId()
  {
    return ((GameRequestEntity)Sj.get(0)).getRequestId();
  }
  
  public final Player getSender()
  {
    return ((GameRequestEntity)Sj.get(0)).getSender();
  }
  
  public final int getStatus()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final int getType()
  {
    return ((GameRequestEntity)Sj.get(0)).getType();
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(Sj.toArray());
  }
  
  public final ArrayList<GameRequest> ir()
  {
    return new ArrayList(Sj);
  }
  
  public final ArrayList<Player> is()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final boolean isConsumed(String paramString)
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    GameRequestClusterCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.request.GameRequestCluster
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
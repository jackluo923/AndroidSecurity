package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class GameRequestEntity
  implements SafeParcelable, GameRequest
{
  public static final GameRequestEntityCreator CREATOR = new GameRequestEntityCreator();
  private final int AQ;
  private final String Oy;
  private final GameEntity Rq;
  private final long SR;
  private final int SY;
  private final byte[] TC;
  private final PlayerEntity TX;
  private final ArrayList<PlayerEntity> TY;
  private final long TZ;
  private final Bundle Ua;
  private final int xJ;
  
  GameRequestEntity(int paramInt1, GameEntity paramGameEntity, PlayerEntity paramPlayerEntity, byte[] paramArrayOfByte, String paramString, ArrayList<PlayerEntity> paramArrayList, int paramInt2, long paramLong1, long paramLong2, Bundle paramBundle, int paramInt3)
  {
    xJ = paramInt1;
    Rq = paramGameEntity;
    TX = paramPlayerEntity;
    TC = paramArrayOfByte;
    Oy = paramString;
    TY = paramArrayList;
    AQ = paramInt2;
    SR = paramLong1;
    TZ = paramLong2;
    Ua = paramBundle;
    SY = paramInt3;
  }
  
  public GameRequestEntity(GameRequest paramGameRequest)
  {
    xJ = 2;
    Rq = new GameEntity(paramGameRequest.getGame());
    TX = new PlayerEntity(paramGameRequest.getSender());
    Oy = paramGameRequest.getRequestId();
    AQ = paramGameRequest.getType();
    SR = paramGameRequest.getCreationTimestamp();
    TZ = paramGameRequest.getExpirationTimestamp();
    SY = paramGameRequest.getStatus();
    Object localObject = paramGameRequest.getData();
    if (localObject == null) {
      TC = null;
    }
    for (;;)
    {
      localObject = paramGameRequest.getRecipients();
      int j = ((List)localObject).size();
      TY = new ArrayList(j);
      Ua = new Bundle();
      int i = 0;
      while (i < j)
      {
        Player localPlayer = (Player)((Player)((List)localObject).get(i)).freeze();
        String str = localPlayer.getPlayerId();
        TY.add((PlayerEntity)localPlayer);
        Ua.putInt(str, paramGameRequest.getRecipientStatus(str));
        i += 1;
      }
      TC = new byte[localObject.length];
      System.arraycopy(localObject, 0, TC, 0, localObject.length);
    }
  }
  
  static int a(GameRequest paramGameRequest)
  {
    return hl.hashCode(new Object[] { paramGameRequest.getGame(), paramGameRequest.getRecipients(), paramGameRequest.getRequestId(), paramGameRequest.getSender(), b(paramGameRequest), Integer.valueOf(paramGameRequest.getType()), Long.valueOf(paramGameRequest.getCreationTimestamp()), Long.valueOf(paramGameRequest.getExpirationTimestamp()) });
  }
  
  static boolean a(GameRequest paramGameRequest, Object paramObject)
  {
    if (!(paramObject instanceof GameRequest)) {}
    do
    {
      return false;
      if (paramGameRequest == paramObject) {
        return true;
      }
      paramObject = (GameRequest)paramObject;
    } while ((!hl.equal(((GameRequest)paramObject).getGame(), paramGameRequest.getGame())) || (!hl.equal(((GameRequest)paramObject).getRecipients(), paramGameRequest.getRecipients())) || (!hl.equal(((GameRequest)paramObject).getRequestId(), paramGameRequest.getRequestId())) || (!hl.equal(((GameRequest)paramObject).getSender(), paramGameRequest.getSender())) || (!Arrays.equals(b((GameRequest)paramObject), b(paramGameRequest))) || (!hl.equal(Integer.valueOf(((GameRequest)paramObject).getType()), Integer.valueOf(paramGameRequest.getType()))) || (!hl.equal(Long.valueOf(((GameRequest)paramObject).getCreationTimestamp()), Long.valueOf(paramGameRequest.getCreationTimestamp()))) || (!hl.equal(Long.valueOf(((GameRequest)paramObject).getExpirationTimestamp()), Long.valueOf(paramGameRequest.getExpirationTimestamp()))));
    return true;
  }
  
  private static int[] b(GameRequest paramGameRequest)
  {
    List localList = paramGameRequest.getRecipients();
    int j = localList.size();
    int[] arrayOfInt = new int[j];
    int i = 0;
    while (i < j)
    {
      arrayOfInt[i] = paramGameRequest.getRecipientStatus(((Player)localList.get(i)).getPlayerId());
      i += 1;
    }
    return arrayOfInt;
  }
  
  static String c(GameRequest paramGameRequest)
  {
    return hl.e(paramGameRequest).a("Game", paramGameRequest.getGame()).a("Sender", paramGameRequest.getSender()).a("Recipients", paramGameRequest.getRecipients()).a("Data", paramGameRequest.getData()).a("RequestId", paramGameRequest.getRequestId()).a("Type", Integer.valueOf(paramGameRequest.getType())).a("CreationTimestamp", Long.valueOf(paramGameRequest.getCreationTimestamp())).a("ExpirationTimestamp", Long.valueOf(paramGameRequest.getExpirationTimestamp())).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final GameRequest freeze()
  {
    return this;
  }
  
  public final long getCreationTimestamp()
  {
    return SR;
  }
  
  public final byte[] getData()
  {
    return TC;
  }
  
  public final long getExpirationTimestamp()
  {
    return TZ;
  }
  
  public final Game getGame()
  {
    return Rq;
  }
  
  public final int getRecipientStatus(String paramString)
  {
    return Ua.getInt(paramString, 0);
  }
  
  public final List<Player> getRecipients()
  {
    return new ArrayList(TY);
  }
  
  public final String getRequestId()
  {
    return Oy;
  }
  
  public final Player getSender()
  {
    return TX;
  }
  
  public final int getStatus()
  {
    return SY;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final Bundle iG()
  {
    return Ua;
  }
  
  public final boolean isConsumed(String paramString)
  {
    return getRecipientStatus(paramString) == 1;
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return c(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    GameRequestEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.request.GameRequestEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
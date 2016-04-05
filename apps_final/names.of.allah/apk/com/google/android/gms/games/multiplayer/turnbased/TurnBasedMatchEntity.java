package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;
import java.util.ArrayList;

public final class TurnBasedMatchEntity
  implements SafeParcelable, TurnBasedMatch
{
  public static final TurnBasedMatchEntityCreator CREATOR = new TurnBasedMatchEntityCreator();
  private final String Mm;
  private final String Of;
  private final GameEntity Rq;
  private final long SR;
  private final ArrayList<ParticipantEntity> SU;
  private final int SV;
  private final int TA;
  private final int TB;
  private final byte[] TC;
  private final String TD;
  private final byte[] TE;
  private final int TF;
  private final int TG;
  private final boolean TH;
  private final String TI;
  private final Bundle Tl;
  private final String Tp;
  private final String Tx;
  private final long Ty;
  private final String Tz;
  private final int xJ;
  
  TurnBasedMatchEntity(int paramInt1, GameEntity paramGameEntity, String paramString1, String paramString2, long paramLong1, String paramString3, long paramLong2, String paramString4, int paramInt2, int paramInt3, int paramInt4, byte[] paramArrayOfByte1, ArrayList<ParticipantEntity> paramArrayList, String paramString5, byte[] paramArrayOfByte2, int paramInt5, Bundle paramBundle, int paramInt6, boolean paramBoolean, String paramString6, String paramString7)
  {
    xJ = paramInt1;
    Rq = paramGameEntity;
    Of = paramString1;
    Tp = paramString2;
    SR = paramLong1;
    Tx = paramString3;
    Ty = paramLong2;
    Tz = paramString4;
    TA = paramInt2;
    TG = paramInt6;
    SV = paramInt3;
    TB = paramInt4;
    TC = paramArrayOfByte1;
    SU = paramArrayList;
    TD = paramString5;
    TE = paramArrayOfByte2;
    TF = paramInt5;
    Tl = paramBundle;
    TH = paramBoolean;
    Mm = paramString6;
    TI = paramString7;
  }
  
  public TurnBasedMatchEntity(TurnBasedMatch paramTurnBasedMatch)
  {
    xJ = 2;
    Rq = new GameEntity(paramTurnBasedMatch.getGame());
    Of = paramTurnBasedMatch.getMatchId();
    Tp = paramTurnBasedMatch.getCreatorId();
    SR = paramTurnBasedMatch.getCreationTimestamp();
    Tx = paramTurnBasedMatch.getLastUpdaterId();
    Ty = paramTurnBasedMatch.getLastUpdatedTimestamp();
    Tz = paramTurnBasedMatch.getPendingParticipantId();
    TA = paramTurnBasedMatch.getStatus();
    TG = paramTurnBasedMatch.getTurnStatus();
    SV = paramTurnBasedMatch.getVariant();
    TB = paramTurnBasedMatch.getVersion();
    TD = paramTurnBasedMatch.getRematchId();
    TF = paramTurnBasedMatch.getMatchNumber();
    Tl = paramTurnBasedMatch.getAutoMatchCriteria();
    TH = paramTurnBasedMatch.isLocallyModified();
    Mm = paramTurnBasedMatch.getDescription();
    TI = paramTurnBasedMatch.getDescriptionParticipantId();
    byte[] arrayOfByte = paramTurnBasedMatch.getData();
    if (arrayOfByte == null)
    {
      TC = null;
      arrayOfByte = paramTurnBasedMatch.getPreviousMatchData();
      if (arrayOfByte != null) {
        break label309;
      }
      TE = null;
    }
    for (;;)
    {
      paramTurnBasedMatch = paramTurnBasedMatch.getParticipants();
      int j = paramTurnBasedMatch.size();
      SU = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        SU.add((ParticipantEntity)((Participant)paramTurnBasedMatch.get(i)).freeze());
        i += 1;
      }
      TC = new byte[arrayOfByte.length];
      System.arraycopy(arrayOfByte, 0, TC, 0, arrayOfByte.length);
      break;
      label309:
      TE = new byte[arrayOfByte.length];
      System.arraycopy(arrayOfByte, 0, TE, 0, arrayOfByte.length);
    }
  }
  
  static int a(TurnBasedMatch paramTurnBasedMatch)
  {
    return hl.hashCode(new Object[] { paramTurnBasedMatch.getGame(), paramTurnBasedMatch.getMatchId(), paramTurnBasedMatch.getCreatorId(), Long.valueOf(paramTurnBasedMatch.getCreationTimestamp()), paramTurnBasedMatch.getLastUpdaterId(), Long.valueOf(paramTurnBasedMatch.getLastUpdatedTimestamp()), paramTurnBasedMatch.getPendingParticipantId(), Integer.valueOf(paramTurnBasedMatch.getStatus()), Integer.valueOf(paramTurnBasedMatch.getTurnStatus()), paramTurnBasedMatch.getDescription(), Integer.valueOf(paramTurnBasedMatch.getVariant()), Integer.valueOf(paramTurnBasedMatch.getVersion()), paramTurnBasedMatch.getParticipants(), paramTurnBasedMatch.getRematchId(), Integer.valueOf(paramTurnBasedMatch.getMatchNumber()), paramTurnBasedMatch.getAutoMatchCriteria(), Integer.valueOf(paramTurnBasedMatch.getAvailableAutoMatchSlots()), Boolean.valueOf(paramTurnBasedMatch.isLocallyModified()) });
  }
  
  static int a(TurnBasedMatch paramTurnBasedMatch, String paramString)
  {
    ArrayList localArrayList = paramTurnBasedMatch.getParticipants();
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)localArrayList.get(i);
      if (localParticipant.getParticipantId().equals(paramString)) {
        return localParticipant.getStatus();
      }
      i += 1;
    }
    throw new IllegalStateException("Participant " + paramString + " is not in match " + paramTurnBasedMatch.getMatchId());
  }
  
  static boolean a(TurnBasedMatch paramTurnBasedMatch, Object paramObject)
  {
    if (!(paramObject instanceof TurnBasedMatch)) {}
    do
    {
      return false;
      if (paramTurnBasedMatch == paramObject) {
        return true;
      }
      paramObject = (TurnBasedMatch)paramObject;
    } while ((!hl.equal(((TurnBasedMatch)paramObject).getGame(), paramTurnBasedMatch.getGame())) || (!hl.equal(((TurnBasedMatch)paramObject).getMatchId(), paramTurnBasedMatch.getMatchId())) || (!hl.equal(((TurnBasedMatch)paramObject).getCreatorId(), paramTurnBasedMatch.getCreatorId())) || (!hl.equal(Long.valueOf(((TurnBasedMatch)paramObject).getCreationTimestamp()), Long.valueOf(paramTurnBasedMatch.getCreationTimestamp()))) || (!hl.equal(((TurnBasedMatch)paramObject).getLastUpdaterId(), paramTurnBasedMatch.getLastUpdaterId())) || (!hl.equal(Long.valueOf(((TurnBasedMatch)paramObject).getLastUpdatedTimestamp()), Long.valueOf(paramTurnBasedMatch.getLastUpdatedTimestamp()))) || (!hl.equal(((TurnBasedMatch)paramObject).getPendingParticipantId(), paramTurnBasedMatch.getPendingParticipantId())) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getStatus()), Integer.valueOf(paramTurnBasedMatch.getStatus()))) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getTurnStatus()), Integer.valueOf(paramTurnBasedMatch.getTurnStatus()))) || (!hl.equal(((TurnBasedMatch)paramObject).getDescription(), paramTurnBasedMatch.getDescription())) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getVariant()), Integer.valueOf(paramTurnBasedMatch.getVariant()))) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getVersion()), Integer.valueOf(paramTurnBasedMatch.getVersion()))) || (!hl.equal(((TurnBasedMatch)paramObject).getParticipants(), paramTurnBasedMatch.getParticipants())) || (!hl.equal(((TurnBasedMatch)paramObject).getRematchId(), paramTurnBasedMatch.getRematchId())) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getMatchNumber()), Integer.valueOf(paramTurnBasedMatch.getMatchNumber()))) || (!hl.equal(((TurnBasedMatch)paramObject).getAutoMatchCriteria(), paramTurnBasedMatch.getAutoMatchCriteria())) || (!hl.equal(Integer.valueOf(((TurnBasedMatch)paramObject).getAvailableAutoMatchSlots()), Integer.valueOf(paramTurnBasedMatch.getAvailableAutoMatchSlots()))) || (!hl.equal(Boolean.valueOf(((TurnBasedMatch)paramObject).isLocallyModified()), Boolean.valueOf(paramTurnBasedMatch.isLocallyModified()))));
    return true;
  }
  
  static String b(TurnBasedMatch paramTurnBasedMatch)
  {
    return hl.e(paramTurnBasedMatch).a("Game", paramTurnBasedMatch.getGame()).a("MatchId", paramTurnBasedMatch.getMatchId()).a("CreatorId", paramTurnBasedMatch.getCreatorId()).a("CreationTimestamp", Long.valueOf(paramTurnBasedMatch.getCreationTimestamp())).a("LastUpdaterId", paramTurnBasedMatch.getLastUpdaterId()).a("LastUpdatedTimestamp", Long.valueOf(paramTurnBasedMatch.getLastUpdatedTimestamp())).a("PendingParticipantId", paramTurnBasedMatch.getPendingParticipantId()).a("MatchStatus", Integer.valueOf(paramTurnBasedMatch.getStatus())).a("TurnStatus", Integer.valueOf(paramTurnBasedMatch.getTurnStatus())).a("Description", paramTurnBasedMatch.getDescription()).a("Variant", Integer.valueOf(paramTurnBasedMatch.getVariant())).a("Data", paramTurnBasedMatch.getData()).a("Version", Integer.valueOf(paramTurnBasedMatch.getVersion())).a("Participants", paramTurnBasedMatch.getParticipants()).a("RematchId", paramTurnBasedMatch.getRematchId()).a("PreviousData", paramTurnBasedMatch.getPreviousMatchData()).a("MatchNumber", Integer.valueOf(paramTurnBasedMatch.getMatchNumber())).a("AutoMatchCriteria", paramTurnBasedMatch.getAutoMatchCriteria()).a("AvailableAutoMatchSlots", Integer.valueOf(paramTurnBasedMatch.getAvailableAutoMatchSlots())).a("LocallyModified", Boolean.valueOf(paramTurnBasedMatch.isLocallyModified())).a("DescriptionParticipantId", paramTurnBasedMatch.getDescriptionParticipantId()).toString();
  }
  
  static String b(TurnBasedMatch paramTurnBasedMatch, String paramString)
  {
    paramTurnBasedMatch = paramTurnBasedMatch.getParticipants();
    int j = paramTurnBasedMatch.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)paramTurnBasedMatch.get(i);
      Player localPlayer = localParticipant.getPlayer();
      if ((localPlayer != null) && (localPlayer.getPlayerId().equals(paramString))) {
        return localParticipant.getParticipantId();
      }
      i += 1;
    }
    return null;
  }
  
  static Participant c(TurnBasedMatch paramTurnBasedMatch, String paramString)
  {
    ArrayList localArrayList = paramTurnBasedMatch.getParticipants();
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)localArrayList.get(i);
      if (localParticipant.getParticipantId().equals(paramString)) {
        return localParticipant;
      }
      i += 1;
    }
    throw new IllegalStateException("Participant " + paramString + " is not in match " + paramTurnBasedMatch.getMatchId());
  }
  
  static ArrayList<String> c(TurnBasedMatch paramTurnBasedMatch)
  {
    paramTurnBasedMatch = paramTurnBasedMatch.getParticipants();
    int j = paramTurnBasedMatch.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((Participant)paramTurnBasedMatch.get(i)).getParticipantId());
      i += 1;
    }
    return localArrayList;
  }
  
  public final boolean canRematch()
  {
    return (TA == 2) && (TD == null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final TurnBasedMatch freeze()
  {
    return this;
  }
  
  public final Bundle getAutoMatchCriteria()
  {
    return Tl;
  }
  
  public final int getAvailableAutoMatchSlots()
  {
    if (Tl == null) {
      return 0;
    }
    return Tl.getInt("max_automatch_players");
  }
  
  public final long getCreationTimestamp()
  {
    return SR;
  }
  
  public final String getCreatorId()
  {
    return Tp;
  }
  
  public final byte[] getData()
  {
    return TC;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final Participant getDescriptionParticipant()
  {
    return getParticipant(getDescriptionParticipantId());
  }
  
  public final String getDescriptionParticipantId()
  {
    return TI;
  }
  
  public final Game getGame()
  {
    return Rq;
  }
  
  public final long getLastUpdatedTimestamp()
  {
    return Ty;
  }
  
  public final String getLastUpdaterId()
  {
    return Tx;
  }
  
  public final String getMatchId()
  {
    return Of;
  }
  
  public final int getMatchNumber()
  {
    return TF;
  }
  
  public final Participant getParticipant(String paramString)
  {
    return c(this, paramString);
  }
  
  public final String getParticipantId(String paramString)
  {
    return b(this, paramString);
  }
  
  public final ArrayList<String> getParticipantIds()
  {
    return c(this);
  }
  
  public final int getParticipantStatus(String paramString)
  {
    return a(this, paramString);
  }
  
  public final ArrayList<Participant> getParticipants()
  {
    return new ArrayList(SU);
  }
  
  public final String getPendingParticipantId()
  {
    return Tz;
  }
  
  public final byte[] getPreviousMatchData()
  {
    return TE;
  }
  
  public final String getRematchId()
  {
    return TD;
  }
  
  public final int getStatus()
  {
    return TA;
  }
  
  public final int getTurnStatus()
  {
    return TG;
  }
  
  public final int getVariant()
  {
    return SV;
  }
  
  public final int getVersion()
  {
    return TB;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final boolean isLocallyModified()
  {
    return TH;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    TurnBasedMatchEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;

public final class GameEntity
  extends GamesDowngradeableSafeParcel
  implements Game
{
  public static final Parcelable.Creator<GameEntity> CREATOR = new GameEntity.GameEntityCreatorCompat();
  private final String Lk;
  private final String MA;
  private final String MB;
  private final boolean MC;
  private final boolean MD;
  private final boolean ME;
  private final String Mk;
  private final String Ml;
  private final String Mm;
  private final String Mn;
  private final Uri Mo;
  private final Uri Mp;
  private final Uri Mq;
  private final boolean Mr;
  private final boolean Ms;
  private final String Mt;
  private final int Mu;
  private final int Mv;
  private final int Mw;
  private final boolean Mx;
  private final boolean My;
  private final String Mz;
  private final int xJ;
  private final String zM;
  
  GameEntity(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Uri paramUri1, Uri paramUri2, Uri paramUri3, boolean paramBoolean1, boolean paramBoolean2, String paramString7, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean3, boolean paramBoolean4, String paramString8, String paramString9, String paramString10, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7)
  {
    xJ = paramInt1;
    zM = paramString1;
    Lk = paramString2;
    Mk = paramString3;
    Ml = paramString4;
    Mm = paramString5;
    Mn = paramString6;
    Mo = paramUri1;
    Mz = paramString8;
    Mp = paramUri2;
    MA = paramString9;
    Mq = paramUri3;
    MB = paramString10;
    Mr = paramBoolean1;
    Ms = paramBoolean2;
    Mt = paramString7;
    Mu = paramInt2;
    Mv = paramInt3;
    Mw = paramInt4;
    Mx = paramBoolean3;
    My = paramBoolean4;
    MC = paramBoolean5;
    MD = paramBoolean6;
    ME = paramBoolean7;
  }
  
  public GameEntity(Game paramGame)
  {
    xJ = 4;
    zM = paramGame.getApplicationId();
    Mk = paramGame.getPrimaryCategory();
    Ml = paramGame.getSecondaryCategory();
    Mm = paramGame.getDescription();
    Mn = paramGame.getDeveloperName();
    Lk = paramGame.getDisplayName();
    Mo = paramGame.getIconImageUri();
    Mz = paramGame.getIconImageUrl();
    Mp = paramGame.getHiResImageUri();
    MA = paramGame.getHiResImageUrl();
    Mq = paramGame.getFeaturedImageUri();
    MB = paramGame.getFeaturedImageUrl();
    Mr = paramGame.gH();
    Ms = paramGame.gJ();
    Mt = paramGame.gK();
    Mu = paramGame.gL();
    Mv = paramGame.getAchievementTotalCount();
    Mw = paramGame.getLeaderboardCount();
    Mx = paramGame.isRealTimeMultiplayerEnabled();
    My = paramGame.isTurnBasedMultiplayerEnabled();
    MC = paramGame.isMuted();
    MD = paramGame.gI();
    ME = paramGame.areSnapshotsEnabled();
  }
  
  static int a(Game paramGame)
  {
    return hl.hashCode(new Object[] { paramGame.getApplicationId(), paramGame.getDisplayName(), paramGame.getPrimaryCategory(), paramGame.getSecondaryCategory(), paramGame.getDescription(), paramGame.getDeveloperName(), paramGame.getIconImageUri(), paramGame.getHiResImageUri(), paramGame.getFeaturedImageUri(), Boolean.valueOf(paramGame.gH()), Boolean.valueOf(paramGame.gJ()), paramGame.gK(), Integer.valueOf(paramGame.gL()), Integer.valueOf(paramGame.getAchievementTotalCount()), Integer.valueOf(paramGame.getLeaderboardCount()), Boolean.valueOf(paramGame.isRealTimeMultiplayerEnabled()), Boolean.valueOf(paramGame.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(paramGame.isMuted()), Boolean.valueOf(paramGame.gI()), Boolean.valueOf(paramGame.areSnapshotsEnabled()) });
  }
  
  static boolean a(Game paramGame, Object paramObject)
  {
    if (!(paramObject instanceof Game)) {}
    for (;;)
    {
      return false;
      if (paramGame == paramObject) {
        return true;
      }
      paramObject = (Game)paramObject;
      if ((hl.equal(((Game)paramObject).getApplicationId(), paramGame.getApplicationId())) && (hl.equal(((Game)paramObject).getDisplayName(), paramGame.getDisplayName())) && (hl.equal(((Game)paramObject).getPrimaryCategory(), paramGame.getPrimaryCategory())) && (hl.equal(((Game)paramObject).getSecondaryCategory(), paramGame.getSecondaryCategory())) && (hl.equal(((Game)paramObject).getDescription(), paramGame.getDescription())) && (hl.equal(((Game)paramObject).getDeveloperName(), paramGame.getDeveloperName())) && (hl.equal(((Game)paramObject).getIconImageUri(), paramGame.getIconImageUri())) && (hl.equal(((Game)paramObject).getHiResImageUri(), paramGame.getHiResImageUri())) && (hl.equal(((Game)paramObject).getFeaturedImageUri(), paramGame.getFeaturedImageUri())) && (hl.equal(Boolean.valueOf(((Game)paramObject).gH()), Boolean.valueOf(paramGame.gH()))) && (hl.equal(Boolean.valueOf(((Game)paramObject).gJ()), Boolean.valueOf(paramGame.gJ()))) && (hl.equal(((Game)paramObject).gK(), paramGame.gK())) && (hl.equal(Integer.valueOf(((Game)paramObject).gL()), Integer.valueOf(paramGame.gL()))) && (hl.equal(Integer.valueOf(((Game)paramObject).getAchievementTotalCount()), Integer.valueOf(paramGame.getAchievementTotalCount()))) && (hl.equal(Integer.valueOf(((Game)paramObject).getLeaderboardCount()), Integer.valueOf(paramGame.getLeaderboardCount()))) && (hl.equal(Boolean.valueOf(((Game)paramObject).isRealTimeMultiplayerEnabled()), Boolean.valueOf(paramGame.isRealTimeMultiplayerEnabled()))))
      {
        boolean bool2 = ((Game)paramObject).isTurnBasedMultiplayerEnabled();
        if ((paramGame.isTurnBasedMultiplayerEnabled()) && (hl.equal(Boolean.valueOf(((Game)paramObject).isMuted()), Boolean.valueOf(paramGame.isMuted()))) && (hl.equal(Boolean.valueOf(((Game)paramObject).gI()), Boolean.valueOf(paramGame.gI())))) {}
        for (boolean bool1 = true; (hl.equal(Boolean.valueOf(bool2), Boolean.valueOf(bool1))) && (hl.equal(Boolean.valueOf(((Game)paramObject).areSnapshotsEnabled()), Boolean.valueOf(paramGame.areSnapshotsEnabled()))); bool1 = false) {
          return true;
        }
      }
    }
  }
  
  static String b(Game paramGame)
  {
    return hl.e(paramGame).a("ApplicationId", paramGame.getApplicationId()).a("DisplayName", paramGame.getDisplayName()).a("PrimaryCategory", paramGame.getPrimaryCategory()).a("SecondaryCategory", paramGame.getSecondaryCategory()).a("Description", paramGame.getDescription()).a("DeveloperName", paramGame.getDeveloperName()).a("IconImageUri", paramGame.getIconImageUri()).a("IconImageUrl", paramGame.getIconImageUrl()).a("HiResImageUri", paramGame.getHiResImageUri()).a("HiResImageUrl", paramGame.getHiResImageUrl()).a("FeaturedImageUri", paramGame.getFeaturedImageUri()).a("FeaturedImageUrl", paramGame.getFeaturedImageUrl()).a("PlayEnabledGame", Boolean.valueOf(paramGame.gH())).a("InstanceInstalled", Boolean.valueOf(paramGame.gJ())).a("InstancePackageName", paramGame.gK()).a("AchievementTotalCount", Integer.valueOf(paramGame.getAchievementTotalCount())).a("LeaderboardCount", Integer.valueOf(paramGame.getLeaderboardCount())).a("RealTimeMultiplayerEnabled", Boolean.valueOf(paramGame.isRealTimeMultiplayerEnabled())).a("TurnBasedMultiplayerEnabled", Boolean.valueOf(paramGame.isTurnBasedMultiplayerEnabled())).a("AreSnapshotsEnabled", Boolean.valueOf(paramGame.areSnapshotsEnabled())).toString();
  }
  
  public final boolean areSnapshotsEnabled()
  {
    return ME;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Game freeze()
  {
    return this;
  }
  
  public final boolean gH()
  {
    return Mr;
  }
  
  public final boolean gI()
  {
    return MD;
  }
  
  public final boolean gJ()
  {
    return Ms;
  }
  
  public final String gK()
  {
    return Mt;
  }
  
  public final int gL()
  {
    return Mu;
  }
  
  public final int getAchievementTotalCount()
  {
    return Mv;
  }
  
  public final String getApplicationId()
  {
    return zM;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final String getDeveloperName()
  {
    return Mn;
  }
  
  public final void getDeveloperName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mn, paramCharArrayBuffer);
  }
  
  public final String getDisplayName()
  {
    return Lk;
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Lk, paramCharArrayBuffer);
  }
  
  public final Uri getFeaturedImageUri()
  {
    return Mq;
  }
  
  public final String getFeaturedImageUrl()
  {
    return MB;
  }
  
  public final Uri getHiResImageUri()
  {
    return Mp;
  }
  
  public final String getHiResImageUrl()
  {
    return MA;
  }
  
  public final Uri getIconImageUri()
  {
    return Mo;
  }
  
  public final String getIconImageUrl()
  {
    return Mz;
  }
  
  public final int getLeaderboardCount()
  {
    return Mw;
  }
  
  public final String getPrimaryCategory()
  {
    return Mk;
  }
  
  public final String getSecondaryCategory()
  {
    return Ml;
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
  
  public final boolean isMuted()
  {
    return MC;
  }
  
  public final boolean isRealTimeMultiplayerEnabled()
  {
    return Mx;
  }
  
  public final boolean isTurnBasedMultiplayerEnabled()
  {
    return My;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    Object localObject2 = null;
    if (!fm())
    {
      GameEntityCreator.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeString(zM);
    paramParcel.writeString(Lk);
    paramParcel.writeString(Mk);
    paramParcel.writeString(Ml);
    paramParcel.writeString(Mm);
    paramParcel.writeString(Mn);
    Object localObject1;
    if (Mo == null)
    {
      localObject1 = null;
      paramParcel.writeString((String)localObject1);
      if (Mp != null) {
        break label184;
      }
      localObject1 = null;
      label91:
      paramParcel.writeString((String)localObject1);
      if (Mq != null) {
        break label195;
      }
      localObject1 = localObject2;
      label106:
      paramParcel.writeString((String)localObject1);
      if (!Mr) {
        break label206;
      }
      paramInt = 1;
      label120:
      paramParcel.writeInt(paramInt);
      if (!Ms) {
        break label211;
      }
    }
    label184:
    label195:
    label206:
    label211:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(Mt);
      paramParcel.writeInt(Mu);
      paramParcel.writeInt(Mv);
      paramParcel.writeInt(Mw);
      return;
      localObject1 = Mo.toString();
      break;
      localObject1 = Mp.toString();
      break label91;
      localObject1 = Mq.toString();
      break label106;
      paramInt = 0;
      break label120;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GameEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
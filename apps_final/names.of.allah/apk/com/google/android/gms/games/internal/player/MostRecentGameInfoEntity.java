package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class MostRecentGameInfoEntity
  implements SafeParcelable, MostRecentGameInfo
{
  public static final MostRecentGameInfoEntityCreator CREATOR = new MostRecentGameInfoEntityCreator();
  private final String RF;
  private final String RG;
  private final long RH;
  private final Uri RI;
  private final Uri RJ;
  private final Uri RK;
  private final int xJ;
  
  MostRecentGameInfoEntity(int paramInt, String paramString1, String paramString2, long paramLong, Uri paramUri1, Uri paramUri2, Uri paramUri3)
  {
    xJ = paramInt;
    RF = paramString1;
    RG = paramString2;
    RH = paramLong;
    RI = paramUri1;
    RJ = paramUri2;
    RK = paramUri3;
  }
  
  public MostRecentGameInfoEntity(MostRecentGameInfo paramMostRecentGameInfo)
  {
    xJ = 2;
    RF = paramMostRecentGameInfo.ik();
    RG = paramMostRecentGameInfo.il();
    RH = paramMostRecentGameInfo.im();
    RI = paramMostRecentGameInfo.in();
    RJ = paramMostRecentGameInfo.io();
    RK = paramMostRecentGameInfo.ip();
  }
  
  static int a(MostRecentGameInfo paramMostRecentGameInfo)
  {
    return hl.hashCode(new Object[] { paramMostRecentGameInfo.ik(), paramMostRecentGameInfo.il(), Long.valueOf(paramMostRecentGameInfo.im()), paramMostRecentGameInfo.in(), paramMostRecentGameInfo.io(), paramMostRecentGameInfo.ip() });
  }
  
  static boolean a(MostRecentGameInfo paramMostRecentGameInfo, Object paramObject)
  {
    if (!(paramObject instanceof MostRecentGameInfo)) {}
    do
    {
      return false;
      if (paramMostRecentGameInfo == paramObject) {
        return true;
      }
      paramObject = (MostRecentGameInfo)paramObject;
    } while ((!hl.equal(((MostRecentGameInfo)paramObject).ik(), paramMostRecentGameInfo.ik())) || (!hl.equal(((MostRecentGameInfo)paramObject).il(), paramMostRecentGameInfo.il())) || (!hl.equal(Long.valueOf(((MostRecentGameInfo)paramObject).im()), Long.valueOf(paramMostRecentGameInfo.im()))) || (!hl.equal(((MostRecentGameInfo)paramObject).in(), paramMostRecentGameInfo.in())) || (!hl.equal(((MostRecentGameInfo)paramObject).io(), paramMostRecentGameInfo.io())) || (!hl.equal(((MostRecentGameInfo)paramObject).ip(), paramMostRecentGameInfo.ip())));
    return true;
  }
  
  static String b(MostRecentGameInfo paramMostRecentGameInfo)
  {
    return hl.e(paramMostRecentGameInfo).a("GameId", paramMostRecentGameInfo.ik()).a("GameName", paramMostRecentGameInfo.il()).a("ActivityTimestampMillis", Long.valueOf(paramMostRecentGameInfo.im())).a("GameIconUri", paramMostRecentGameInfo.in()).a("GameHiResUri", paramMostRecentGameInfo.io()).a("GameFeaturedUri", paramMostRecentGameInfo.ip()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final String ik()
  {
    return RF;
  }
  
  public final String il()
  {
    return RG;
  }
  
  public final long im()
  {
    return RH;
  }
  
  public final Uri in()
  {
    return RI;
  }
  
  public final Uri io()
  {
    return RJ;
  }
  
  public final Uri ip()
  {
    return RK;
  }
  
  public final MostRecentGameInfo iq()
  {
    return this;
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    MostRecentGameInfoEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.player.MostRecentGameInfoEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
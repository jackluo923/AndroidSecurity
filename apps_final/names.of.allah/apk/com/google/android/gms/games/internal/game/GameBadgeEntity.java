package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class GameBadgeEntity
  extends GamesDowngradeableSafeParcel
  implements GameBadge
{
  public static final GameBadgeEntityCreator CREATOR = new GameBadgeEntity.GameBadgeEntityCreatorCompat();
  private int AQ;
  private String HV;
  private String Mm;
  private Uri Mo;
  private final int xJ;
  
  GameBadgeEntity(int paramInt1, int paramInt2, String paramString1, String paramString2, Uri paramUri)
  {
    xJ = paramInt1;
    AQ = paramInt2;
    HV = paramString1;
    Mm = paramString2;
    Mo = paramUri;
  }
  
  public GameBadgeEntity(GameBadge paramGameBadge)
  {
    xJ = 1;
    AQ = paramGameBadge.getType();
    HV = paramGameBadge.getTitle();
    Mm = paramGameBadge.getDescription();
    Mo = paramGameBadge.getIconImageUri();
  }
  
  static int a(GameBadge paramGameBadge)
  {
    return hl.hashCode(new Object[] { Integer.valueOf(paramGameBadge.getType()), paramGameBadge.getTitle(), paramGameBadge.getDescription(), paramGameBadge.getIconImageUri() });
  }
  
  static boolean a(GameBadge paramGameBadge, Object paramObject)
  {
    if (!(paramObject instanceof GameBadge)) {}
    do
    {
      return false;
      if (paramGameBadge == paramObject) {
        return true;
      }
      paramObject = (GameBadge)paramObject;
    } while ((!hl.equal(Integer.valueOf(((GameBadge)paramObject).getType()), paramGameBadge.getTitle())) || (!hl.equal(((GameBadge)paramObject).getDescription(), paramGameBadge.getIconImageUri())));
    return true;
  }
  
  static String b(GameBadge paramGameBadge)
  {
    return hl.e(paramGameBadge).a("Type", Integer.valueOf(paramGameBadge.getType())).a("Title", paramGameBadge.getTitle()).a("Description", paramGameBadge.getDescription()).a("IconImageUri", paramGameBadge.getIconImageUri()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final Uri getIconImageUri()
  {
    return Mo;
  }
  
  public final String getTitle()
  {
    return HV;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final GameBadge hX()
  {
    return this;
  }
  
  public final int hashCode()
  {
    return a(this);
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
    if (!fm())
    {
      GameBadgeEntityCreator.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeInt(AQ);
    paramParcel.writeString(HV);
    paramParcel.writeString(Mm);
    if (Mo == null) {}
    for (String str = null;; str = Mo.toString())
    {
      paramParcel.writeString(str);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameBadgeEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
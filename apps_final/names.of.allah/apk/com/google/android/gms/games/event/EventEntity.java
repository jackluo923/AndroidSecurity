package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;

public final class EventEntity
  implements SafeParcelable, Event
{
  public static final EventEntityCreator CREATOR = new EventEntityCreator();
  private final String Mm;
  private final Uri Mo;
  private final String Mz;
  private final String Nf;
  private final PlayerEntity Ng;
  private final long Nh;
  private final String Ni;
  private final boolean Nj;
  private final String mName;
  private final int xJ;
  
  EventEntity(int paramInt, String paramString1, String paramString2, String paramString3, Uri paramUri, String paramString4, Player paramPlayer, long paramLong, String paramString5, boolean paramBoolean)
  {
    xJ = paramInt;
    Nf = paramString1;
    mName = paramString2;
    Mm = paramString3;
    Mo = paramUri;
    Mz = paramString4;
    Ng = new PlayerEntity(paramPlayer);
    Nh = paramLong;
    Ni = paramString5;
    Nj = paramBoolean;
  }
  
  public EventEntity(Event paramEvent)
  {
    xJ = 1;
    Nf = paramEvent.getEventId();
    mName = paramEvent.getName();
    Mm = paramEvent.getDescription();
    Mo = paramEvent.getIconImageUri();
    Mz = paramEvent.getIconImageUrl();
    Ng = ((PlayerEntity)paramEvent.getPlayer().freeze());
    Nh = paramEvent.getValue();
    Ni = paramEvent.getFormattedValue();
    Nj = paramEvent.isVisible();
  }
  
  static int a(Event paramEvent)
  {
    return hl.hashCode(new Object[] { paramEvent.getEventId(), paramEvent.getName(), paramEvent.getDescription(), paramEvent.getIconImageUri(), paramEvent.getIconImageUrl(), paramEvent.getPlayer(), Long.valueOf(paramEvent.getValue()), paramEvent.getFormattedValue(), Boolean.valueOf(paramEvent.isVisible()) });
  }
  
  static boolean a(Event paramEvent, Object paramObject)
  {
    if (!(paramObject instanceof Event)) {}
    do
    {
      return false;
      if (paramEvent == paramObject) {
        return true;
      }
      paramObject = (Event)paramObject;
    } while ((!hl.equal(((Event)paramObject).getEventId(), paramEvent.getEventId())) || (!hl.equal(((Event)paramObject).getName(), paramEvent.getName())) || (!hl.equal(((Event)paramObject).getDescription(), paramEvent.getDescription())) || (!hl.equal(((Event)paramObject).getIconImageUri(), paramEvent.getIconImageUri())) || (!hl.equal(((Event)paramObject).getIconImageUrl(), paramEvent.getIconImageUrl())) || (!hl.equal(((Event)paramObject).getPlayer(), paramEvent.getPlayer())) || (!hl.equal(Long.valueOf(((Event)paramObject).getValue()), Long.valueOf(paramEvent.getValue()))) || (!hl.equal(((Event)paramObject).getFormattedValue(), paramEvent.getFormattedValue())) || (!hl.equal(Boolean.valueOf(((Event)paramObject).isVisible()), Boolean.valueOf(paramEvent.isVisible()))));
    return true;
  }
  
  static String b(Event paramEvent)
  {
    return hl.e(paramEvent).a("Id", paramEvent.getEventId()).a("Name", paramEvent.getName()).a("Description", paramEvent.getDescription()).a("IconImageUri", paramEvent.getIconImageUri()).a("IconImageUrl", paramEvent.getIconImageUrl()).a("Player", paramEvent.getPlayer()).a("Value", Long.valueOf(paramEvent.getValue())).a("FormattedValue", paramEvent.getFormattedValue()).a("isVisible", Boolean.valueOf(paramEvent.isVisible())).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Event freeze()
  {
    return this;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final String getEventId()
  {
    return Nf;
  }
  
  public final String getFormattedValue()
  {
    return Ni;
  }
  
  public final void getFormattedValue(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Ni, paramCharArrayBuffer);
  }
  
  public final Uri getIconImageUri()
  {
    return Mo;
  }
  
  public final String getIconImageUrl()
  {
    return Mz;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final void getName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(mName, paramCharArrayBuffer);
  }
  
  public final Player getPlayer()
  {
    return Ng;
  }
  
  public final long getValue()
  {
    return Nh;
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
  
  public final boolean isVisible()
  {
    return Nj;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    EventEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.event.EventEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
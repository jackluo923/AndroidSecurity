package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class GameNotificationRef
  extends d
  implements GameNotification
{
  GameNotificationRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final long getId()
  {
    return getLong("_id");
  }
  
  public final String getText()
  {
    return getString("text");
  }
  
  public final String getTitle()
  {
    return getString("title");
  }
  
  public final int getType()
  {
    return getInteger("type");
  }
  
  public final String jdMethod_if()
  {
    return getString("notification_id");
  }
  
  public final String ig()
  {
    return getString("ticker");
  }
  
  public final String ih()
  {
    return getString("coalesced_text");
  }
  
  public final boolean ii()
  {
    return getInteger("acknowledged") > 0;
  }
  
  public final boolean ij()
  {
    return getInteger("alert_level") == 0;
  }
  
  public final String toString()
  {
    return hl.e(this).a("Id", Long.valueOf(getId())).a("NotificationId", jdMethod_if()).a("Type", Integer.valueOf(getType())).a("Title", getTitle()).a("Ticker", ig()).a("Text", getText()).a("CoalescedText", ih()).a("isAcknowledged", Boolean.valueOf(ii())).a("isSilent", Boolean.valueOf(ij())).toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.notification.GameNotificationRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
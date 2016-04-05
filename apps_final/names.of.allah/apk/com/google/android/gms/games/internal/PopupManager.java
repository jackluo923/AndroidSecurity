package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.internal.iq;

public class PopupManager
{
  protected GamesClientImpl OV;
  protected PopupManager.PopupLocationInfo OW;
  
  private PopupManager(GamesClientImpl paramGamesClientImpl, int paramInt)
  {
    OV = paramGamesClientImpl;
    cl(paramInt);
  }
  
  public static PopupManager a(GamesClientImpl paramGamesClientImpl, int paramInt)
  {
    if (iq.fY()) {
      return new PopupManager.PopupManagerHCMR1(paramGamesClientImpl, paramInt);
    }
    return new PopupManager(paramGamesClientImpl, paramInt);
  }
  
  protected void cl(int paramInt)
  {
    OW = new PopupManager.PopupLocationInfo(paramInt, new Binder(), null);
  }
  
  public void g(View paramView) {}
  
  public void hG()
  {
    OV.a(OW.OX, OW.hJ());
  }
  
  public Bundle hH()
  {
    return OW.hJ();
  }
  
  public IBinder hI()
  {
    return OW.OX;
  }
  
  public void setGravity(int paramInt)
  {
    OW.gravity = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.PopupManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
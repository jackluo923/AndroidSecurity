package com.google.android.gms.internal;

import android.content.Context;
import java.util.HashSet;

final class v$c
{
  public final v.a kK;
  public final String kL;
  public final Context kM;
  public final l kN;
  public final ew kO;
  public aq kP;
  public en kQ;
  public am kR;
  public eg kS;
  public eh kT;
  public at kU;
  public dh kV;
  public dd kW;
  public da kX;
  public el kY = null;
  public boolean kZ = false;
  private HashSet<eh> la = null;
  
  public v$c(Context paramContext, am paramam, String paramString, ew paramew)
  {
    if (md) {
      kK = null;
    }
    for (;;)
    {
      kR = paramam;
      kL = paramString;
      kM = paramContext;
      kO = paramew;
      kN = new l(new v.b(this));
      return;
      kK = new v.a(paramContext);
      kK.setMinimumWidth(widthPixels);
      kK.setMinimumHeight(heightPixels);
      kK.setVisibility(4);
    }
  }
  
  public final void a(HashSet<eh> paramHashSet)
  {
    la = paramHashSet;
  }
  
  public final HashSet<eh> al()
  {
    return la;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
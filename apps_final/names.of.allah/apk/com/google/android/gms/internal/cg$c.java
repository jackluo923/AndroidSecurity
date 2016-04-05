package com.google.android.gms.internal;

import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;

final class cg$c
{
  public final int index;
  public final ViewGroup.LayoutParams or;
  public final ViewGroup os;
  
  public cg$c(ey paramey)
  {
    or = paramey.getLayoutParams();
    ViewParent localViewParent = paramey.getParent();
    if ((localViewParent instanceof ViewGroup))
    {
      os = ((ViewGroup)localViewParent);
      index = os.indexOfChild(paramey);
      os.removeView(paramey);
      paramey.q(true);
      return;
    }
    throw new cg.a("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
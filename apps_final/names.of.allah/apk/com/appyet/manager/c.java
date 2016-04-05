package com.appyet.manager;

import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;

final class c
  extends AdListener
{
  c(b paramb, ViewGroup paramViewGroup) {}
  
  public final void onAdLoaded()
  {
    a.setVisibility(0);
    super.onAdLoaded();
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
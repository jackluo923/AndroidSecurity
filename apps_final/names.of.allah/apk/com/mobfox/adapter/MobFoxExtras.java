package com.mobfox.adapter;

import com.google.ads.mediation.j;

public final class MobFoxExtras
  implements j
{
  private boolean animation = false;
  private boolean location = false;
  
  public final boolean getAnimation()
  {
    return animation;
  }
  
  public final boolean getLocation()
  {
    return location;
  }
  
  public final void setAnimation(boolean paramBoolean)
  {
    animation = paramBoolean;
  }
  
  public final void setLocation(boolean paramBoolean)
  {
    location = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.mobfox.adapter.MobFoxExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
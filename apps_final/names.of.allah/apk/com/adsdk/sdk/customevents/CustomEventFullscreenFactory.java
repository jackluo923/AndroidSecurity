package com.adsdk.sdk.customevents;

import java.lang.reflect.Constructor;

public class CustomEventFullscreenFactory
{
  private static CustomEventFullscreenFactory instance = new CustomEventFullscreenFactory();
  
  public static CustomEventFullscreen create(String paramString)
  {
    return instance.internalCreate(paramString);
  }
  
  protected CustomEventFullscreen internalCreate(String paramString)
  {
    paramString = Class.forName("com.adsdk.sdk.customevents." + paramString + "Fullscreen").asSubclass(CustomEventFullscreen.class).getDeclaredConstructor(null);
    paramString.setAccessible(true);
    return (CustomEventFullscreen)paramString.newInstance(new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventFullscreenFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
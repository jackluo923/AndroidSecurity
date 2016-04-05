package com.adsdk.sdk.customevents;

import java.lang.reflect.Constructor;

public class CustomEventBannerFactory
{
  private static CustomEventBannerFactory instance = new CustomEventBannerFactory();
  
  public static CustomEventBanner create(String paramString)
  {
    return instance.internalCreate(paramString);
  }
  
  protected CustomEventBanner internalCreate(String paramString)
  {
    paramString = Class.forName("com.adsdk.sdk.customevents." + paramString + "Banner").asSubclass(CustomEventBanner.class).getDeclaredConstructor(null);
    paramString.setAccessible(true);
    return (CustomEventBanner)paramString.newInstance(new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventBannerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
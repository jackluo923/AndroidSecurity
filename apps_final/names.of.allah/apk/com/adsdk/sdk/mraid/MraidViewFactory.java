package com.adsdk.sdk.mraid;

import android.content.Context;

public class MraidViewFactory
{
  protected static MraidViewFactory instance = new MraidViewFactory();
  
  public static MraidView create(Context paramContext)
  {
    return instance.internalCreate(paramContext);
  }
  
  public static MraidView create(Context paramContext, MraidView.ExpansionStyle paramExpansionStyle, MraidView.NativeCloseButtonStyle paramNativeCloseButtonStyle, MraidView.PlacementType paramPlacementType)
  {
    return instance.internalCreate(paramContext, paramExpansionStyle, paramNativeCloseButtonStyle, paramPlacementType);
  }
  
  @Deprecated
  public static void setInstance(MraidViewFactory paramMraidViewFactory)
  {
    instance = paramMraidViewFactory;
  }
  
  protected MraidView internalCreate(Context paramContext)
  {
    return new MraidView(paramContext);
  }
  
  protected MraidView internalCreate(Context paramContext, MraidView.ExpansionStyle paramExpansionStyle, MraidView.NativeCloseButtonStyle paramNativeCloseButtonStyle, MraidView.PlacementType paramPlacementType)
  {
    return new MraidView(paramContext, paramExpansionStyle, paramNativeCloseButtonStyle, paramPlacementType);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidViewFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
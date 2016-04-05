package com.adsdk.sdk.mraid;

import java.util.Map;

abstract class MraidCommand
{
  protected static final String URI_KEY = "uri";
  protected Map<String, String> mParams;
  protected MraidView mView;
  
  MraidCommand(Map<String, String> paramMap, MraidView paramMraidView)
  {
    mParams = paramMap;
    mView = paramMraidView;
  }
  
  abstract void execute();
  
  protected boolean getBooleanFromParamsForKey(String paramString)
  {
    return "true".equals(mParams.get(paramString));
  }
  
  protected float getFloatFromParamsForKey(String paramString)
  {
    if ((String)mParams.get(paramString) == null) {
      return 0.0F;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString) {}
    return 0.0F;
  }
  
  protected int getIntFromParamsForKey(String paramString)
  {
    paramString = (String)mParams.get(paramString);
    if (paramString == null) {
      return -1;
    }
    try
    {
      int i = Integer.parseInt(paramString, 10);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  protected String getStringFromParamsForKey(String paramString)
  {
    return (String)mParams.get(paramString);
  }
  
  protected boolean isCommandDependentOnUserClick(MraidView.PlacementType paramPlacementType)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
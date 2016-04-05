package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandExpand
  extends MraidCommand
{
  MraidCommandExpand(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    int j = getIntFromParamsForKey("w");
    int k = getIntFromParamsForKey("h");
    String str = getStringFromParamsForKey("url");
    boolean bool1 = getBooleanFromParamsForKey("shouldUseCustomClose");
    boolean bool2 = getBooleanFromParamsForKey("lockOrientation");
    int i = j;
    if (j <= 0) {
      i = mView.getDisplayController().mScreenWidth;
    }
    j = k;
    if (k <= 0) {
      j = mView.getDisplayController().mScreenHeight;
    }
    mView.getDisplayController().expand(str, i, j, bool1, bool2);
  }
  
  protected boolean isCommandDependentOnUserClick(MraidView.PlacementType paramPlacementType)
  {
    switch (paramPlacementType)
    {
    default: 
      return super.isCommandDependentOnUserClick(paramPlacementType);
    case INLINE: 
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandExpand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
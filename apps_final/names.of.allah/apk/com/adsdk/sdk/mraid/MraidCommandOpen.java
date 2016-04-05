package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandOpen
  extends MraidCommand
{
  MraidCommandOpen(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    String str = getStringFromParamsForKey("url");
    if (str == null)
    {
      mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.OPEN, "Url can not be null.");
      return;
    }
    mView.getBrowserController().open(str);
  }
  
  protected boolean isCommandDependentOnUserClick(MraidView.PlacementType paramPlacementType)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandOpen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
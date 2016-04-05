package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandPlayVideo
  extends MraidCommand
{
  public MraidCommandPlayVideo(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    String str = getStringFromParamsForKey("uri");
    if ((str != null) && (!str.equals("")))
    {
      mView.getDisplayController().showVideo(str);
      return;
    }
    mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.PLAY_VIDEO, "Video can't be played with null or empty URL");
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
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandPlayVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
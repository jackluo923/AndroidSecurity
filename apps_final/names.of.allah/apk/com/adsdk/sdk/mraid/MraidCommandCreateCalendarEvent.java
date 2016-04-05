package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandCreateCalendarEvent
  extends MraidCommand
{
  MraidCommandCreateCalendarEvent(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().createCalendarEvent(mParams);
  }
  
  protected boolean isCommandDependentOnUserClick(MraidView.PlacementType paramPlacementType)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandCreateCalendarEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
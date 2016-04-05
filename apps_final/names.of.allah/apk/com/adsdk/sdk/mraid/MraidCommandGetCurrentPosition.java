package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandGetCurrentPosition
  extends MraidCommand
{
  MraidCommandGetCurrentPosition(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().getCurrentPosition();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandGetCurrentPosition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
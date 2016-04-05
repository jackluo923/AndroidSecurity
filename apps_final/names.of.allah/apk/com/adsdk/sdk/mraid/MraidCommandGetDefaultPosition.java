package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandGetDefaultPosition
  extends MraidCommand
{
  MraidCommandGetDefaultPosition(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().getDefaultPosition();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandGetDefaultPosition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
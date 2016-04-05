package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandGetScreenSize
  extends MraidCommand
{
  MraidCommandGetScreenSize(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().getScreenSize();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandGetScreenSize
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
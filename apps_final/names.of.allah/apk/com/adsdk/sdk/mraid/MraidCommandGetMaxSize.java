package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandGetMaxSize
  extends MraidCommand
{
  MraidCommandGetMaxSize(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().getMaxSize();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandGetMaxSize
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
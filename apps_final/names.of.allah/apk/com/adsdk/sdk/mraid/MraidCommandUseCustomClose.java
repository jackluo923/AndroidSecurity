package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandUseCustomClose
  extends MraidCommand
{
  MraidCommandUseCustomClose(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    boolean bool = getBooleanFromParamsForKey("shouldUseCustomClose");
    mView.getDisplayController().useCustomClose(bool);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandUseCustomClose
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
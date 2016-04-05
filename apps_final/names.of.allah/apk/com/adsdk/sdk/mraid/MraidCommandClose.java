package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandClose
  extends MraidCommand
{
  MraidCommandClose(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.getDisplayController().close();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandClose
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandResize
  extends MraidCommand
{
  MraidCommandResize(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.RESIZE, "Unsupported action resize.");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandResize
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
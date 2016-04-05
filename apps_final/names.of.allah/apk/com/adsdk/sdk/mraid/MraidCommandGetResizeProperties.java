package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandGetResizeProperties
  extends MraidCommand
{
  MraidCommandGetResizeProperties(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_RESIZE_PROPERTIES, "Unsupported action getResizeProperties.");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandGetResizeProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
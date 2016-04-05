package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandSetResizeProperties
  extends MraidCommand
{
  MraidCommandSetResizeProperties(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.SET_RESIZE_PROPERTIES, "Unsupported action setResizeProperties.");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandSetResizeProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
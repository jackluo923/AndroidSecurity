package com.adsdk.sdk.mraid;

import java.util.Map;

class MraidCommandFactory
{
  protected static MraidCommandFactory instance = new MraidCommandFactory();
  
  public static MraidCommand create(String paramString, Map<String, String> paramMap, MraidView paramMraidView)
  {
    return instance.internalCreate(paramString, paramMap, paramMraidView);
  }
  
  @Deprecated
  public static void setInstance(MraidCommandFactory paramMraidCommandFactory)
  {
    instance = paramMraidCommandFactory;
  }
  
  protected MraidCommand internalCreate(String paramString, Map<String, String> paramMap, MraidView paramMraidView)
  {
    paramString = MraidCommandFactory.MraidJavascriptCommand.access$2(paramString);
    switch (paramString)
    {
    case USECUSTOMCLOSE: 
    default: 
      return null;
    case CLOSE: 
      return new MraidCommandClose(paramMap, paramMraidView);
    case CREATE_CALENDAR_EVENT: 
      return new MraidCommandExpand(paramMap, paramMraidView);
    case EXPAND: 
      return new MraidCommandUseCustomClose(paramMap, paramMraidView);
    case GET_CURRENT_POSITION: 
      return new MraidCommandOpen(paramMap, paramMraidView);
    case GET_DEFAULT_POSITION: 
      return new MraidCommandResize(paramMap, paramMraidView);
    case GET_MAX_SIZE: 
      return new MraidCommandGetResizeProperties(paramMap, paramMraidView);
    case GET_RESIZE_PROPERTIES: 
      return new MraidCommandSetResizeProperties(paramMap, paramMraidView);
    case GET_SCREEN_SIZE: 
      return new MraidCommandPlayVideo(paramMap, paramMraidView);
    case OPEN: 
      return new MraidCommandStorePicture(paramMap, paramMraidView);
    case PLAY_VIDEO: 
      return new MraidCommandGetCurrentPosition(paramMap, paramMraidView);
    case RESIZE: 
      return new MraidCommandGetDefaultPosition(paramMap, paramMraidView);
    case SET_RESIZE_PROPERTIES: 
      return new MraidCommandGetMaxSize(paramMap, paramMraidView);
    case STORE_PICTURE: 
      return new MraidCommandGetScreenSize(paramMap, paramMraidView);
    }
    return new MraidCommandCreateCalendarEvent(paramMap, paramMraidView);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
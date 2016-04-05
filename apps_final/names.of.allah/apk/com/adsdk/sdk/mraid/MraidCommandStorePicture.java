package com.adsdk.sdk.mraid;

import android.util.Log;
import java.util.Map;

class MraidCommandStorePicture
  extends MraidCommand
{
  public static final String MIME_TYPE_HEADER = "Content-Type";
  
  public MraidCommandStorePicture(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }
  
  void execute()
  {
    String str = getStringFromParamsForKey("uri");
    if ((str != null) && (!str.equals("")))
    {
      mView.getDisplayController().showUserDownloadImageAlert(str);
      return;
    }
    mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.STORE_PICTURE, "Image can't be stored with null or empty URL");
    Log.d("MoPub", "Invalid URI for Mraid Store Picture.");
  }
  
  protected boolean isCommandDependentOnUserClick(MraidView.PlacementType paramPlacementType)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidCommandStorePicture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
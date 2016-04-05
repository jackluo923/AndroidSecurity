package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.FakeR;
import com.google.zxing.client.result.GeoParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class GeoResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public GeoResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    buttons = new int[] { fakeR.getId("string", "button_show_map"), fakeR.getId("string", "button_get_directions") };
  }
  
  public int getButtonCount()
  {
    return buttons.length;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_geo");
  }
  
  public void handleButtonPress(int paramInt)
  {
    GeoParsedResult localGeoParsedResult = (GeoParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openMap(localGeoParsedResult.getGeoURI());
      return;
    }
    getDirections(localGeoParsedResult.getLatitude(), localGeoParsedResult.getLongitude());
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.GeoResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
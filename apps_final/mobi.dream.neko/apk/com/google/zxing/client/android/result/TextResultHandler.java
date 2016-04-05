package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;

public final class TextResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public TextResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
    buttons = new int[] { fakeR.getId("string", "button_web_search"), fakeR.getId("string", "button_share_by_email"), fakeR.getId("string", "button_share_by_sms"), fakeR.getId("string", "button_custom_product_search") };
  }
  
  public int getButtonCount()
  {
    if (hasCustomProductSearch()) {
      return buttons.length;
    }
    return buttons.length - 1;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_text");
  }
  
  public void handleButtonPress(int paramInt)
  {
    String str = getResult().getDisplayResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      webSearch(str);
      return;
    case 1: 
      shareByEmail(str);
      return;
    case 2: 
      shareBySMS(str);
      return;
    }
    openURL(fillInCustomSearchURL(str));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.TextResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
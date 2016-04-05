package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.LocaleManager;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.URIParsedResult;
import java.util.Locale;

public final class URIResultHandler
  extends ResultHandler
{
  private static final String[] SECURE_PROTOCOLS = { "otpauth:" };
  private static int[] buttons;
  
  public URIResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    buttons = new int[] { fakeR.getId("string", "button_open_browser"), fakeR.getId("string", "button_share_by_email"), fakeR.getId("string", "button_share_by_sms"), fakeR.getId("string", "button_search_book_contents") };
  }
  
  public boolean areContentsSecure()
  {
    String str = ((URIParsedResult)getResult()).getURI().toLowerCase(Locale.ENGLISH);
    String[] arrayOfString = SECURE_PROTOCOLS;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (str.startsWith(arrayOfString[i])) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public int getButtonCount()
  {
    if (LocaleManager.isBookSearchUrl(((URIParsedResult)getResult()).getURI())) {
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
    return fakeR.getId("string", "result_uri");
  }
  
  public void handleButtonPress(int paramInt)
  {
    String str = ((URIParsedResult)getResult()).getURI();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openURL(str);
      return;
    case 1: 
      shareByEmail(str);
      return;
    case 2: 
      shareBySMS(str);
      return;
    }
    searchBookContents(str);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.URIResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
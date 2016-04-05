package com.google.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import com.google.zxing.FakeR;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.TelParsedResult;

public final class TelResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public TelResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    buttons = new int[] { fakeR.getId("string", "button_dial"), fakeR.getId("string", "button_add_contact") };
  }
  
  public int getButtonCount()
  {
    return buttons.length;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public CharSequence getDisplayContents()
  {
    return PhoneNumberUtils.formatNumber(getResult().getDisplayResult().replace("\r", ""));
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_tel");
  }
  
  public void handleButtonPress(int paramInt)
  {
    TelParsedResult localTelParsedResult = (TelParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      dialPhoneFromUri(localTelParsedResult.getTelURI());
      getActivity().finish();
      return;
    }
    addPhoneOnlyContact(new String[] { localTelParsedResult.getNumber() }, null);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.TelResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
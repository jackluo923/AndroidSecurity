package com.google.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import com.google.zxing.FakeR;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.SMSParsedResult;

public final class SMSResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public SMSResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    buttons = new int[] { fakeR.getId("string", "button_sms"), fakeR.getId("string", "button_mms") };
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
    SMSParsedResult localSMSParsedResult = (SMSParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(50);
    String[] arrayOfString1 = localSMSParsedResult.getNumbers();
    String[] arrayOfString2 = new String[arrayOfString1.length];
    int i = 0;
    while (i < arrayOfString1.length)
    {
      arrayOfString2[i] = PhoneNumberUtils.formatNumber(arrayOfString1[i]);
      i += 1;
    }
    ParsedResult.maybeAppend(arrayOfString2, localStringBuilder);
    ParsedResult.maybeAppend(localSMSParsedResult.getSubject(), localStringBuilder);
    ParsedResult.maybeAppend(localSMSParsedResult.getBody(), localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_sms");
  }
  
  public void handleButtonPress(int paramInt)
  {
    SMSParsedResult localSMSParsedResult = (SMSParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      sendSMS(localSMSParsedResult.getNumbers()[0], localSMSParsedResult.getBody());
      return;
    }
    sendMMS(localSMSParsedResult.getNumbers()[0], localSMSParsedResult.getSubject(), localSMSParsedResult.getBody());
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.SMSResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
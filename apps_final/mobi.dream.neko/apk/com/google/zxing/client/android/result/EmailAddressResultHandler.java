package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.FakeR;
import com.google.zxing.client.result.EmailAddressParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class EmailAddressResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public EmailAddressResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    buttons = new int[] { fakeR.getId("string", "button_email"), fakeR.getId("string", "button_add_contact") };
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
    return fakeR.getId("string", "result_email_address");
  }
  
  public void handleButtonPress(int paramInt)
  {
    EmailAddressParsedResult localEmailAddressParsedResult = (EmailAddressParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      sendEmailFromUri(localEmailAddressParsedResult.getMailtoURI(), localEmailAddressParsedResult.getEmailAddress(), localEmailAddressParsedResult.getSubject(), localEmailAddressParsedResult.getBody());
      return;
    }
    addEmailOnlyContact(new String[] { localEmailAddressParsedResult.getEmailAddress() }, null);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.EmailAddressResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
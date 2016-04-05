package com.google.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import com.google.zxing.FakeR;
import com.google.zxing.client.result.AddressBookParsedResult;
import com.google.zxing.client.result.ParsedResult;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class AddressBookResultHandler
  extends ResultHandler
{
  private static int[] BUTTON_TEXTS;
  private static final DateFormat[] DATE_FORMATS = { new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH), new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH) };
  private int buttonCount;
  private final boolean[] fields;
  
  static
  {
    DateFormat[] arrayOfDateFormat = DATE_FORMATS;
    int j = arrayOfDateFormat.length;
    int i = 0;
    while (i < j)
    {
      arrayOfDateFormat[i].setLenient(false);
      i += 1;
    }
  }
  
  public AddressBookResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    BUTTON_TEXTS = new int[] { fakeR.getId("string", "button_add_contact"), fakeR.getId("string", "button_show_map"), fakeR.getId("string", "button_dial"), fakeR.getId("string", "button_email") };
    paramActivity = (AddressBookParsedResult)paramParsedResult;
    paramParsedResult = paramActivity.getAddresses();
    int j;
    int k;
    if ((paramParsedResult != null) && (paramParsedResult.length > 0) && (paramParsedResult[0].length() > 0))
    {
      j = 1;
      paramParsedResult = paramActivity.getPhoneNumbers();
      if ((paramParsedResult == null) || (paramParsedResult.length <= 0)) {
        break label211;
      }
      k = 1;
      label112:
      paramActivity = paramActivity.getEmails();
      if ((paramActivity == null) || (paramActivity.length <= 0)) {
        break label217;
      }
    }
    label211:
    label217:
    for (int m = 1;; m = 0)
    {
      fields = new boolean[4];
      fields[0] = true;
      fields[1] = j;
      fields[2] = k;
      fields[3] = m;
      buttonCount = 0;
      int i = 0;
      while (i < 4)
      {
        if (fields[i] != 0) {
          buttonCount += 1;
        }
        i += 1;
      }
      j = 0;
      break;
      k = 0;
      break label112;
    }
  }
  
  private int mapIndexToAction(int paramInt)
  {
    if (paramInt < buttonCount)
    {
      int j = -1;
      int i = 0;
      while (i < 4)
      {
        int k = j;
        if (fields[i] != 0) {
          k = j + 1;
        }
        if (k == paramInt) {
          return i;
        }
        i += 1;
        j = k;
      }
    }
    return -1;
  }
  
  private static Date parseDate(String paramString)
  {
    DateFormat[] arrayOfDateFormat = DATE_FORMATS;
    int j = arrayOfDateFormat.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfDateFormat[i];
      try
      {
        localObject = ((DateFormat)localObject).parse(paramString);
        return (Date)localObject;
      }
      catch (ParseException localParseException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  public int getButtonCount()
  {
    return buttonCount;
  }
  
  public int getButtonText(int paramInt)
  {
    return BUTTON_TEXTS[mapIndexToAction(paramInt)];
  }
  
  public CharSequence getDisplayContents()
  {
    Object localObject1 = (AddressBookParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(100);
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getNames(), localStringBuilder);
    int j = localStringBuilder.length();
    Object localObject2 = ((AddressBookParsedResult)localObject1).getPronunciation();
    if ((localObject2 != null) && (((String)localObject2).length() > 0))
    {
      localStringBuilder.append("\n(");
      localStringBuilder.append((String)localObject2);
      localStringBuilder.append(')');
    }
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getTitle(), localStringBuilder);
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getOrg(), localStringBuilder);
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getAddresses(), localStringBuilder);
    localObject2 = ((AddressBookParsedResult)localObject1).getPhoneNumbers();
    if (localObject2 != null)
    {
      int k = localObject2.length;
      int i = 0;
      while (i < k)
      {
        ParsedResult.maybeAppend(PhoneNumberUtils.formatNumber(localObject2[i]), localStringBuilder);
        i += 1;
      }
    }
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getEmails(), localStringBuilder);
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getURL(), localStringBuilder);
    localObject2 = ((AddressBookParsedResult)localObject1).getBirthday();
    if ((localObject2 != null) && (((String)localObject2).length() > 0))
    {
      localObject2 = parseDate((String)localObject2);
      if (localObject2 != null) {
        ParsedResult.maybeAppend(DateFormat.getDateInstance(2).format(Long.valueOf(((Date)localObject2).getTime())), localStringBuilder);
      }
    }
    ParsedResult.maybeAppend(((AddressBookParsedResult)localObject1).getNote(), localStringBuilder);
    if (j > 0)
    {
      localObject1 = new SpannableString(localStringBuilder.toString());
      ((Spannable)localObject1).setSpan(new StyleSpan(1), 0, j, 0);
      return (CharSequence)localObject1;
    }
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_address_book");
  }
  
  public void handleButtonPress(int paramInt)
  {
    AddressBookParsedResult localAddressBookParsedResult = (AddressBookParsedResult)getResult();
    Object localObject1 = localAddressBookParsedResult.getAddresses();
    if ((localObject1 == null) || (localObject1.length < 1))
    {
      localObject1 = null;
      label27:
      localObject2 = localAddressBookParsedResult.getAddressTypes();
      if ((localObject2 != null) && (localObject2.length >= 1)) {
        break label88;
      }
    }
    label88:
    for (Object localObject2 = null;; localObject2 = localObject2[0]) {
      switch (mapIndexToAction(paramInt))
      {
      default: 
        return;
        localObject1 = localObject1[0];
        break label27;
      }
    }
    addContact(localAddressBookParsedResult.getNames(), localAddressBookParsedResult.getPronunciation(), localAddressBookParsedResult.getPhoneNumbers(), localAddressBookParsedResult.getPhoneTypes(), localAddressBookParsedResult.getEmails(), localAddressBookParsedResult.getEmailTypes(), localAddressBookParsedResult.getNote(), localAddressBookParsedResult.getInstantMessenger(), (String)localObject1, (String)localObject2, localAddressBookParsedResult.getOrg(), localAddressBookParsedResult.getTitle(), localAddressBookParsedResult.getURL(), localAddressBookParsedResult.getBirthday());
    return;
    localObject2 = localAddressBookParsedResult.getNames();
    if (localObject2 != null) {}
    for (localObject2 = localObject2[0];; localObject2 = null)
    {
      searchMap((String)localObject1, (CharSequence)localObject2);
      return;
    }
    dialPhone(localAddressBookParsedResult.getPhoneNumbers()[0]);
    return;
    sendEmail(localAddressBookParsedResult.getEmails()[0], null, null);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.AddressBookResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.zxing.client.result;

public final class AddressBookParsedResult
  extends ParsedResult
{
  private final String[] addressTypes;
  private final String[] addresses;
  private final String birthday;
  private final String[] emailTypes;
  private final String[] emails;
  private final String instantMessenger;
  private final String[] names;
  private final String note;
  private final String org;
  private final String[] phoneNumbers;
  private final String[] phoneTypes;
  private final String pronunciation;
  private final String title;
  private final String url;
  
  public AddressBookParsedResult(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String paramString2, String paramString3, String[] paramArrayOfString6, String[] paramArrayOfString7, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    super(ParsedResultType.ADDRESSBOOK);
    names = paramArrayOfString1;
    pronunciation = paramString1;
    phoneNumbers = paramArrayOfString2;
    phoneTypes = paramArrayOfString3;
    emails = paramArrayOfString4;
    emailTypes = paramArrayOfString5;
    instantMessenger = paramString2;
    note = paramString3;
    addresses = paramArrayOfString6;
    addressTypes = paramArrayOfString7;
    org = paramString4;
    birthday = paramString5;
    title = paramString6;
    url = paramString7;
  }
  
  public String[] getAddressTypes()
  {
    return addressTypes;
  }
  
  public String[] getAddresses()
  {
    return addresses;
  }
  
  public String getBirthday()
  {
    return birthday;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(names, localStringBuilder);
    maybeAppend(pronunciation, localStringBuilder);
    maybeAppend(title, localStringBuilder);
    maybeAppend(org, localStringBuilder);
    maybeAppend(addresses, localStringBuilder);
    maybeAppend(phoneNumbers, localStringBuilder);
    maybeAppend(emails, localStringBuilder);
    maybeAppend(instantMessenger, localStringBuilder);
    maybeAppend(url, localStringBuilder);
    maybeAppend(birthday, localStringBuilder);
    maybeAppend(note, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String[] getEmailTypes()
  {
    return emailTypes;
  }
  
  public String[] getEmails()
  {
    return emails;
  }
  
  public String getInstantMessenger()
  {
    return instantMessenger;
  }
  
  public String[] getNames()
  {
    return names;
  }
  
  public String getNote()
  {
    return note;
  }
  
  public String getOrg()
  {
    return org;
  }
  
  public String[] getPhoneNumbers()
  {
    return phoneNumbers;
  }
  
  public String[] getPhoneTypes()
  {
    return phoneTypes;
  }
  
  public String getPronunciation()
  {
    return pronunciation;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getURL()
  {
    return url;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.AddressBookParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.zxing.client.result;

public final class EmailAddressParsedResult
  extends ParsedResult
{
  private final String body;
  private final String emailAddress;
  private final String mailtoURI;
  private final String subject;
  
  EmailAddressParsedResult(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(ParsedResultType.EMAIL_ADDRESS);
    emailAddress = paramString1;
    subject = paramString2;
    body = paramString3;
    mailtoURI = paramString4;
  }
  
  public String getBody()
  {
    return body;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    maybeAppend(emailAddress, localStringBuilder);
    maybeAppend(subject, localStringBuilder);
    maybeAppend(body, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String getEmailAddress()
  {
    return emailAddress;
  }
  
  public String getMailtoURI()
  {
    return mailtoURI;
  }
  
  public String getSubject()
  {
    return subject;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.EmailAddressParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
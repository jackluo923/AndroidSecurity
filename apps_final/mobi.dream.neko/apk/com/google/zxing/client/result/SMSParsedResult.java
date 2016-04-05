package com.google.zxing.client.result;

public final class SMSParsedResult
  extends ParsedResult
{
  private final String body;
  private final String[] numbers;
  private final String subject;
  private final String[] vias;
  
  public SMSParsedResult(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(ParsedResultType.SMS);
    numbers = new String[] { paramString1 };
    vias = new String[] { paramString2 };
    subject = paramString3;
    body = paramString4;
  }
  
  public SMSParsedResult(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2)
  {
    super(ParsedResultType.SMS);
    numbers = paramArrayOfString1;
    vias = paramArrayOfString2;
    subject = paramString1;
    body = paramString2;
  }
  
  public String getBody()
  {
    return body;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(numbers, localStringBuilder);
    maybeAppend(subject, localStringBuilder);
    maybeAppend(body, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String[] getNumbers()
  {
    return numbers;
  }
  
  public String getSMSURI()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sms:");
    int j = 1;
    int i = 0;
    if (i < numbers.length)
    {
      if (j != 0) {
        j = 0;
      }
      for (;;)
      {
        localStringBuilder.append(numbers[i]);
        if ((vias != null) && (vias[i] != null))
        {
          localStringBuilder.append(";via=");
          localStringBuilder.append(vias[i]);
        }
        i += 1;
        break;
        localStringBuilder.append(',');
      }
    }
    if (body != null)
    {
      i = 1;
      if (subject == null) {
        break label190;
      }
    }
    label190:
    for (j = 1;; j = 0)
    {
      if ((i != 0) || (j != 0))
      {
        localStringBuilder.append('?');
        if (i != 0)
        {
          localStringBuilder.append("body=");
          localStringBuilder.append(body);
        }
        if (j != 0)
        {
          if (i != 0) {
            localStringBuilder.append('&');
          }
          localStringBuilder.append("subject=");
          localStringBuilder.append(subject);
        }
      }
      return localStringBuilder.toString();
      i = 0;
      break;
    }
  }
  
  public String getSubject()
  {
    return subject;
  }
  
  public String[] getVias()
  {
    return vias;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.SMSParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
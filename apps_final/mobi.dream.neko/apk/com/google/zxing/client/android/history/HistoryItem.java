package com.google.zxing.client.android.history;

import com.google.zxing.Result;

public final class HistoryItem
{
  private final String details;
  private final String display;
  private final Result result;
  
  HistoryItem(Result paramResult, String paramString1, String paramString2)
  {
    result = paramResult;
    display = paramString1;
    details = paramString2;
  }
  
  public String getDisplayAndDetails()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((display == null) || (display.length() == 0)) {
      localStringBuilder.append(result.getText());
    }
    for (;;)
    {
      if ((details != null) && (details.length() > 0)) {
        localStringBuilder.append(" : ").append(details);
      }
      return localStringBuilder.toString();
      localStringBuilder.append(display);
    }
  }
  
  public Result getResult()
  {
    return result;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.history.HistoryItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
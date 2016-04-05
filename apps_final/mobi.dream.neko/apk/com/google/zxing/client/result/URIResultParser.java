package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIResultParser
  extends ResultParser
{
  private static final String ALPHANUM_PART = "[a-zA-Z0-9\\-]";
  private static final Pattern URL_WITHOUT_PROTOCOL_PATTERN = Pattern.compile("([a-zA-Z0-9\\-]+\\.)+[a-zA-Z0-9\\-]{2,}(:\\d{1,5})?(/|\\?|$)");
  private static final Pattern URL_WITH_PROTOCOL_PATTERN = Pattern.compile("[a-zA-Z0-9]{2,}:");
  
  static boolean isBasicallyValidURI(CharSequence paramCharSequence)
  {
    Matcher localMatcher = URL_WITH_PROTOCOL_PATTERN.matcher(paramCharSequence);
    if ((localMatcher.find()) && (localMatcher.start() == 0)) {}
    do
    {
      return true;
      paramCharSequence = URL_WITHOUT_PROTOCOL_PATTERN.matcher(paramCharSequence);
    } while ((paramCharSequence.find()) && (paramCharSequence.start() == 0));
    return false;
  }
  
  public URIParsedResult parse(Result paramResult)
  {
    paramResult = getMassagedText(paramResult);
    if ((paramResult.startsWith("URL:")) || (paramResult.startsWith("URI:"))) {
      return new URIParsedResult(paramResult.substring(4).trim(), null);
    }
    paramResult = paramResult.trim();
    if (isBasicallyValidURI(paramResult)) {
      return new URIParsedResult(paramResult, null);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.URIResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
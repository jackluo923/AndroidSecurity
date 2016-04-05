package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class BookmarkDoCoMoResultParser
  extends AbstractDoCoMoResultParser
{
  public URIParsedResult parse(Result paramResult)
  {
    Object localObject = paramResult.getText();
    if (!((String)localObject).startsWith("MEBKM:")) {}
    do
    {
      do
      {
        return null;
        paramResult = matchSingleDoCoMoPrefixedField("TITLE:", (String)localObject, true);
        localObject = matchDoCoMoPrefixedField("URL:", (String)localObject, true);
      } while (localObject == null);
      localObject = localObject[0];
    } while (!URIResultParser.isBasicallyValidURI((CharSequence)localObject));
    return new URIParsedResult((String)localObject, paramResult);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.BookmarkDoCoMoResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
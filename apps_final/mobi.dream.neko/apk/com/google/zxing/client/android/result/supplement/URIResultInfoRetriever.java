package com.google.zxing.client.android.result.supplement;

import android.content.Context;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.HttpHelper;
import com.google.zxing.client.android.history.HistoryManager;
import com.google.zxing.client.result.URIParsedResult;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

final class URIResultInfoRetriever
  extends SupplementalInfoRetriever
{
  private static final int MAX_REDIRECTS = 5;
  private final String redirectString;
  private final URIParsedResult result;
  
  URIResultInfoRetriever(TextView paramTextView, URIParsedResult paramURIParsedResult, HistoryManager paramHistoryManager, Context paramContext)
  {
    super(paramTextView, paramHistoryManager);
    redirectString = paramContext.getString(FakeR.getId(paramContext, "string", "msg_redirect"));
    result = paramURIParsedResult;
  }
  
  void retrieveSupplementalInfo()
    throws IOException
  {
    try
    {
      Object localObject = new URI(result.getURI());
      URI localURI = HttpHelper.unredirect((URI)localObject);
      int i = 0;
      while ((i < 5) && (!((URI)localObject).equals(localURI)))
      {
        localObject = result.getDisplayResult();
        String str1 = redirectString + " : " + localURI;
        String str2 = localURI.toString();
        append((String)localObject, null, new String[] { str1 }, str2);
        localObject = localURI;
        localURI = HttpHelper.unredirect(localURI);
        i += 1;
      }
      return;
    }
    catch (URISyntaxException localURISyntaxException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.supplement.URIResultInfoRetriever
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
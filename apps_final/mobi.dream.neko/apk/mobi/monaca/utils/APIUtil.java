package mobi.monaca.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;

public class APIUtil
{
  public static String getQuery(List<NameValuePair> paramList)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    paramList = paramList.iterator();
    if (paramList.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getValue(), "UTF-8"));
        break;
        localStringBuilder.append("&");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.APIUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */